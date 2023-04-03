#!/usr/bin/env python
# -*- coding: utf-8 -*-
import numpy as np
from copy import deepcopy
import rospy
import message_filters
from scipy.stats import ttest_rel

from my_xela_initial.msg import xela_msg
from trans_func import num_to_real_width

FORCE_THRESH = 0.2  # 力阈值N
GRASP_NUM_STEP = 5  # 夹爪每次闭合时增加的输入值
MAX_STEPS = 20  # 闭合的最大次数
LINE_NUM = 4    # 每行的触点数
BUFFER = 5  # 连续的触觉序列数
P_THRESH = 0.05     # t检验的阈值
DELTA_THRESH = 0.15     # 前后力差值的阈值
DELTA_PERCENT_THRESH = 0.3  # 前后力差值百分比的阈值
SLIP_STEP = 3   # 滑移时夹爪增加的输入值

class PoseAdjust:
    def __init__(self):
        # 左右传感器数据
        self.z_data_left = []
        self.z_data_right = []
        # 用于滑移检测的数据序列(4*4*2)
        self.xela_sequence_pre = [[] for _ in range(2*LINE_NUM**2)]
        self.xela_sequence_next = []
        self.count = 0
        # 订阅者
        self.z_1_sub = message_filters.Subscriber("xela/1_z_data_calibrated", xela_msg, queue_size=1, buff_size=52428800)
        self.z_2_sub = message_filters.Subscriber("xela/2_z_data_calibrated", xela_msg, queue_size=1, buff_size=52428800)
        sync = message_filters.ApproximateTimeSynchronizer([self.z_1_sub, self.z_2_sub], 1, 0.4, allow_headerless=True)
        sync.registerCallback(self.data_callback)
        # 夹爪闭合
        self.control_callback()

    # 滑移检测函数
    def slip_detect(self):
        if len(self.xela_sequence_next) != 0:
            pmin_value = 1
            # 对32个触点进行t检验保存最小的相关值
            for i in range(2*LINE_NUM**2):
                ttest, pval = ttest_rel(self.xela_sequence_pre[i], self.xela_sequence_next[i])
                delta = sum(self.xela_sequence_pre) - sum(self.xela_sequence_next)
                delta_percent = delta / (sum(self.xela_sequence_next)+0.00005)
                if abs(delta) > DELTA_THRESH and abs(delta_percent) > DELTA_PERCENT_THRESH and pval < pmin_value:
                    pmin_value = pval
            # 与阈值对比确定是否存在滑移
            if pmin_value < P_THRESH:
                return True
            else:
                return False

    # 保存传感器数据
    def data_callback(self, z_data_1, z_data_2):
        self.z_data_left = z_data_1.array.data
        self.z_data_right = z_data_2.array.data
        # 只有在抓取成功之后才进行滑移检测
        if int(rospy.get_param("/grasp_step")) != 3:
            return
        # 保存每5帧的传感器数据进行t检验
        if self.count < BUFFER:
            for i in range(LINE_NUM**2):
                self.xela_sequence_pre[i].append(self.z_data_left[i])
                self.xela_sequence_pre[i+LINE_NUM**2].append(self.z_data_right[i])
            self.count += 1
        else:
            # 进行t检验检测是否滑移
            if self.slip_detect():
                cur_grasp_num = int(rospy.get_param("/robotiq_command"))
                rospy.set_param("/robotiq_command", str(cur_grasp_num + SLIP_STEP))
            self.xela_sequence_next = deepcopy(self.xela_sequence_pre)
            self.xela_sequence_pre = [[] for _ in range(2*LINE_NUM**2)]
            # for i in range(LINE_NUM**2):
            #     self.xela_sequence_pre[i].append(self.z_data_left[i])
            #     self.xela_sequence_pre[i+LINE_NUM**2].append(self.z_data_right[i])
            # self.count = 1
            self.count = 0

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
            while ((sum(self.z_data_left)<FORCE_THRESH and sum(self.z_data_right)<FORCE_THRESH)) and i < MAX_STEPS:
                i += 1
                rospy.set_param("/robotiq_command",str(init_grasp_num + i*GRASP_NUM_STEP))
                rospy.sleep(0.5)
            # 如果闭合到一定程度还没有传感器数值，则停止
            if i >= MAX_STEPS:
                rospy.set_param("/grasp_step", 4)
                rospy.set_param("/robotiq_command",str(init_grasp_num))
            else:
                rospy.set_param("/grasp_step", 3)
                rospy.sleep(0.2)


if __name__ == '__main__':
    rospy.init_node("pose_adjust")
    rospy.loginfo("位姿调整启动")
    PoseAdjust()
