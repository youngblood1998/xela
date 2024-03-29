#!/usr/bin/env python
# -*- coding: utf-8 -*-
import numpy as np
import rospy
import message_filters
from my_xela_initial.msg import xela_msg
from pose_adjust.msg import AdjustParams

from trans_func import num_to_real_width

FORCE_THRESH = 0.2  # 力阈值N
GRASP_NUM_STEP = 5  # 夹爪每次闭合时增加的输入值
MAX_STEPS = 20  # 闭合的最大次数
INTERVAL = 5    # 传感器触点间的距离mm
LINE_NUM = 4    # 每行的触点数
CENT_X = float(LINE_NUM-1)*INTERVAL/2   # 假定的x轴中心点
CENT_Y = float(LINE_NUM)*INTERVAL/2     # 假定的y轴中心点
# SENSOR_GRID_X = [i%LINE_NUM*INTERVAL-CENT_X for i in range(16)]    # 每个触点的坐标x
# SENSOR_GRID_Y = [i//LINE_NUM*INTERVAL-CENT_Y for i in range(16)]    # 每个触点的坐标y
SENSOR_GRID_Y = [(LINE_NUM-1-i%LINE_NUM)*INTERVAL-CENT_Y for i in range(16)]    # 每个触点的坐标y
SENSOR_GRID_X = [i//LINE_NUM*INTERVAL-CENT_X for i in range(16)]    # 每个触点的坐标x
SAFE_DISTANCE = float(INTERVAL)/2

class PoseAdjust:
    def __init__(self):
        # 左右传感器数据
        self.z_data_left = []
        self.z_data_right = []
        # 发布者
        self.adjust_pub = rospy.Publisher("real_adjust/adjust_params", AdjustParams, queue_size=1)
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
            if not rospy.has_param("/grasp_step") or int(rospy.get_param("/grasp_step")) != 2:
                rospy.sleep(0.5)
                continue
            print("位姿调整检测开始")
            # 记录初始的夹爪输入数值
            init_grasp_num = int(rospy.get_param("/robotiq_command"))
            print(init_grasp_num)
            i = 0
            while ((sum(self.z_data_left)<FORCE_THRESH or sum(self.z_data_right)<FORCE_THRESH)) and i <= MAX_STEPS:
                i += 1
                rospy.set_param("/robotiq_command",str(init_grasp_num + i*GRASP_NUM_STEP))
                rospy.sleep(0.5)
            # 如果闭合到一定程度还没有传感器数值，则停止
            if i > MAX_STEPS:
                rospy.set_param("/grasp_step", 6)
            else:
                # 计算抓取接触点
                cent_x_left = sum(np.multiply(self.z_data_left, SENSOR_GRID_X))/sum(self.z_data_left)
                cent_y_left = sum(np.multiply(self.z_data_left, SENSOR_GRID_Y))/sum(self.z_data_left)
                cent_x_right = -sum(np.multiply(self.z_data_right, SENSOR_GRID_X))/sum(self.z_data_right)
                cent_y_right = sum(np.multiply(self.z_data_right, SENSOR_GRID_Y))/sum(self.z_data_right)
                # 计算是否在安全位置以内
                if abs(cent_x_left)<SAFE_DISTANCE and abs(cent_x_right)<SAFE_DISTANCE:
                    move_x_left, move_x_right = 0, 0
                else:
                    move_x_left, move_x_right = cent_x_left, cent_x_right
                if abs(cent_y_left)<SAFE_DISTANCE and abs(cent_y_right)<SAFE_DISTANCE:
                    move_y_left, move_y_right = 0, 0
                else:
                    move_y_left, move_y_right = cent_y_left, cent_y_right
                # 计算夹爪的实际运动
                # 都在安全区域内则直接进入阶段5
                if sum([move_x_left, move_x_right, move_y_left, move_y_right]) == 0:
                    rospy.set_param("/grasp_step", 5)
                else:
                    # 计算调整的信息
                    real_gripper_move_y = (move_x_left + move_x_right)/2
                    real_gripper_rotate_z = np.arctan(float(move_x_left - move_x_right)/num_to_real_width(init_grasp_num + i*GRASP_NUM_STEP))
                    real_gripper_move_z = (move_y_left + move_y_right)/2
                    real_gripper_rotate_y = np.arctan(float(move_y_right - move_y_left)/num_to_real_width(init_grasp_num + i*GRASP_NUM_STEP))
                    print(real_gripper_move_y, real_gripper_rotate_z, real_gripper_move_z, real_gripper_rotate_y)
                    # 发布调整信息的话题
                    rospy.set_param("/robotiq_command",str(init_grasp_num))
                    print(init_grasp_num)
                    rospy.sleep(2)
                    adjust_params = AdjustParams()
                    adjust_params.y = real_gripper_move_y
                    adjust_params.z = real_gripper_move_z
                    adjust_params.y_rotate_angle = real_gripper_rotate_y
                    adjust_params.z_rotate_angle = real_gripper_rotate_z
                    self.adjust_pub.publish(adjust_params)
                    # 等待机器人做调整运动
                    rospy.set_param("/grasp_step", 3)
                    while int(rospy.get_param("/grasp_step")) != 4:
                        rospy.sleep(0.5)
                    # 夹爪闭合到一定力
                    i = 0
                    while ((sum(self.z_data_left)<FORCE_THRESH or sum(self.z_data_right)<FORCE_THRESH)) and i <= MAX_STEPS:
                        i += 1
                        rospy.set_param("/robotiq_command",str(init_grasp_num + i*GRASP_NUM_STEP))
                        rospy.sleep(0.5)
                    # 如果闭合到一定程度还没有传感器数值，则停止
                    if i > MAX_STEPS:
                        rospy.set_param("/grasp_step", 6)
                    else:
                        rospy.set_param("/grasp_step", 5)


if __name__ == '__main__':
    rospy.init_node("pose_adjust")
    rospy.loginfo("位姿调整启动")
    PoseAdjust()
