#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2020/7/9 下午4:09
# @Author  : Ericwang
# @Email   : eericwang@163.com
# @File    : xela_intial_pub.py
# @Software: PyCharm

import rospy
import std_msgs
import time
import message_filters
from xela_initial.msg import xela_msg
import time


# start_time = 0
# end_time = 0
# count = 0
# import matplotlib.animation as animation
#   100hz传感器信息
# sensor1_data = []
# sensor2_data = []
# sensor1_2_data = []
# def sensor1_callback(data):
#     global sensor1_data
#     sensor1_data = list(data.data)
# def sensor2_callback(data):
#     global sensor1_data
#     global sensor2_data
#     global sensor1_2_data
#     sensor2_data = list(data.data)
#     sensor1_2_data = sensor1_data.extend(sensor2_data)
#     pub_msg = std_msgs.msg.Float64MultiArray(data=sensor1_2_data)
#     # print(len(sensor1_data))
#     pub_1_2.publish(pub_msg)


def callback(xela_1_data,xela_2_data):
    # global start_time
    # global end_time
    # global count
    # count+=1
    # if start_time ==0:
    #     start_time = time.time()

    xela_1= list(xela_1_data.array.data)
    xela_2 = list(xela_2_data.array.data)
    xela_1.extend(xela_2)
    # print(xela_1)
    pub_all_msg = xela_msg()
    pub_all_msg.array.data = xela_1
    h = std_msgs.msg.Header()
    h.stamp = rospy.Time.now()
    pub_all_msg.header = h
    pub_1_2.publish(pub_all_msg)
    # end_time = time.time()
    # if end_time-start_time<1:
    #     print(count)
    # print(pub_all_msg)


# def takktile_callback(data):
# 	print(data.pressure,time.time())

# def listener():
# 	global pub
# 	global takktile_buffer_final
# 	print(takktile_buffer_final)
if __name__ == '__main__':
    rospy.init_node('listener', anonymous=True)
    pub_1_2 = rospy.Publisher('/xela/1and2_all_data_raw', xela_msg, queue_size=10000)
    # rospy.Subscriber('xela/1_all_data_raw', std_msgs.msg.Float64MultiArray, sensor1_callback)
    # rospy.Subscriber('xela/2_all_data_raw', std_msgs.msg.Float64MultiArray, sensor2_callback)
    xela_1 =message_filters.Subscriber('/xela/1_all_data_raw', xela_msg)
    xela_2 =message_filters.Subscriber('/xela/2_all_data_raw', xela_msg)
    ts = message_filters.ApproximateTimeSynchronizer([xela_1,xela_2],100, 0.1)
    ts.registerCallback(callback)
    while not rospy.is_shutdown():
        rospy.spin()
