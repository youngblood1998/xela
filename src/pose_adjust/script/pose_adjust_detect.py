#!/usr/bin/env python
# -*- coding: utf-8 -*-
import numpy as np
import rospy
import message_filters
from my_xela_initial.msg import xela_msg

FORCE_THRESH = 0.5  # 力阈值
GRASP_NUM_STEP = 5  # 夹爪每次闭合时增加的输入值
MAX_STEPS = 10  # 闭合的最大次数
INTERVAL = 5    # 传感器触点间的距离
LINE_NUM = 4    # 每行的触点数
CENT_X = float(LINE_NUM-1)*INTERVAL/2   # 假定的x轴中心点
CENT_Y = float(LINE_NUM)*INTERVAL/2     # 假定的y轴中心点
SENSOR_GRID_X = [i%LINE_NUM*INTERVAL-CENT_X for i in range(16)]    # 每个触点的坐标x
SENSOR_GRID_Y = [i//LINE_NUM*INTERVAL-CENT_Y for i in range(16)]    # 每个触点的坐标y

class PoseAdjust:
    def __init__(self):
        # 左右传感器数据
        self.z_data_left = []
        self.z_data_right = []
        # 订阅者
        self.z_1_sub = message_filters.Subscriber("xela/1_z_data_calibrated", xela_msg, queue_size=1, buff_size=52428800)
        self.z_2_sub = message_filters.Subscriber("xela/2_z_data_calibrated", xela_msg, queue_size=1, buff_size=52428800)
        sync = message_filters.ApproximateTimeSynchronizer([self.z_1_sub, self.z_2_sub], 1, 0.4, allow_headerless=True)
        sync.registerCallback(self.data_callback)
        # 姿态调整检测
        self.control_callback()

    # 保存传感器数据
    def data_callback(self, z_data_1, z_data_2):
        self.z_data_left = z_data_1.array.data
        self.z_data_right = z_data_2.array.data
    
    def control_callback(self):
        while not rospy.is_shutdown():
            # 等待机器人到达位置并预闭合
            if not rospy.has_param("/grasp_step") and int(rospy.get_param("/grasp_step"))!=2:
                rospy.sleep(0.5)
                continue
            print("位姿调整检测开始")
            # 记录初始的夹爪输入数值
            init_grasp_num = int(rospy.get_param("/robotiq_command"))
            i = 0
            while (sum(self.z_data_left)<FORCE_THRESH or sum(self.z_data_right)<FORCE_THRESH) or i <= 10:
                rospy.set_param("/robotiq_command",str(init_grasp_num + i*GRASP_NUM_STEP))
            # 如果闭合到一定程度还没有传感器数值，则停止
            if i > 10:
                rospy.set_param("/grasp_step", 5)
            else:
                # 计算抓取接触点
                cent_x_left = sum(np.multiply(self.z_data_left, SENSOR_GRID_X))/sum(self.z_data_left)
                cent_y_left = sum(np.multiply(self.z_data_left, SENSOR_GRID_Y))/sum(self.z_data_left)
                cent_x_right = -sum(np.multiply(self.z_data_right, SENSOR_GRID_X))/sum(self.z_data_right)
                cent_y_right = sum(np.multiply(self.z_data_right, SENSOR_GRID_Y))/sum(self.z_data_right)


if __name__ == '__main__':
    rospy.init_node("pose_adjust")
    rospy.loginfo("位姿调整启动")
    PoseAdjust()