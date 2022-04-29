#!/usr/bin/env python2
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
import math
from xela_initial.msg import xela_msg
import time
import cmath
initial_all=[]
zero_or_not = 1
def zero_callback(data):
    global zero_or_not
    zero_or_not = data.data

def Euler_Formula(x,y):
    e = x*cmath.exp(1j*y)
    return e


def cal_angle(x,y):
    ang = math.atan(y / (x + 0.00001))
    if x >0:
        ang = ang
    elif x<0 and y>=0:
        ang = ang + math.pi
    elif x<0 and y<0:
        ang =ang -math.pi
    elif x==0 and y>0:
        ang = math.pi/2
    elif x==0 and y<0:
        ang = -math.pi/2
    elif x== 0 and y == 0:
        ang = 0
    return ang




def callback(xela_1_data,xela_2_data):
    # global start_time
    # global end_time
    # global count
    # count+=1
    # if start_time ==0:
    #     start_time = time.time()
    global zero_or_not
    global initial_all
    xela_1= list(xela_1_data.array.data)
    xela_2 = list(xela_2_data.array.data)
    xela_1.extend(xela_2)
    if zero_or_not==1:
        if initial_all == []:
            for i in range(len(xela_1)):
                initial_all.append(xela_1[i])
            for i in range(len(initial_all)):
                xela_1[i] = xela_1[i] - initial_all[i]
        else:
            for i in range(len(initial_all)):
                initial_all[i] = xela_1[i]
            for i in range(len(initial_all)):
                xela_1[i] = xela_1[i] - initial_all[i]
            zero_or_not = 0
            print('change')
            print(xela_1)
    else:
        for i in range(len(initial_all)):
            xela_1[i] = xela_1[i] - initial_all[i]
        print(initial_all)

    # print(xela_1)
    pub_1_2_z_msg = xela_msg()
    pub_1_2_z_all_msg = xela_msg()

    pub_all_sum_msg = xela_msg()
    pub_x_msg = xela_msg()
    pub_y_msg = xela_msg()
    pub_z_msg = xela_msg()
    pub_xy_msg = xela_msg()
    pub_xyz_msg = xela_msg()
    pub_theta_msg = xela_msg()
    pub_xy_theta_msg = xela_msg()
    pub_xyz_theta_msg = xela_msg()
    pub_xy_z_theta_msg = xela_msg()

    # pub_xy_multi_theta_msg = xela_msg()

    h = std_msgs.msg.Header()
    h.stamp = rospy.Time.now()
    pub_1_2_z_msg.header = h
    pub_1_2_z_all_msg.header = h

    pub_all_sum_msg.header = h
    pub_x_msg.header = h
    pub_y_msg.header = h
    pub_z_msg.header = h
    pub_xy_msg.header = h
    pub_xyz_msg.header = h
    pub_theta_msg.header = h
    pub_xy_theta_msg.header = h
    pub_xyz_theta_msg.header = h
    pub_xy_z_theta_msg.header = h

    # pub_xy_multi_theta_msg.header = h

    pub_x_msg.array.data = [xela_1[i] for i in range(0,96,3)]
    pub_y_msg.array.data = [xela_1[i] for i in range(1,96,3)]
    pub_z_msg.array.data = [xela_1[i] for i in range(2,96,3)]
    pub_1_2_z_msg.array.data = [sum(pub_z_msg.array.data[:16]),sum(pub_z_msg.array.data[16:])]
    pub_1_2_z_all_msg.array.data = pub_z_msg.array.data

    pub_all_sum_msg.array.data = [sum(pub_x_msg.array.data), sum(pub_y_msg.array.data),sum(pub_z_msg.array.data)]
    pub_xy_msg.array.data = [math.sqrt(pub_x_msg.array.data[i]**2+pub_y_msg.array.data[i]**2) for i in range(32)]
    pub_xyz_msg.array.data = [math.sqrt(pub_x_msg.array.data[i]**2+pub_y_msg.array.data[i]**2+pub_z_msg.array.data[i]**2) for i in range(32)]

    multi_func = lambda x, y: x*cmath.exp(1j*y*math.pi/180)

    theta_data = []
    for i in range(32):
        if pub_xy_msg.array.data[i]>=0.05:
            # theta_data.append(math.atan(pub_x_msg.array.data[i] / (pub_y_msg.array.data[i] + 0.00001)) * 180 / math.pi)
            theta_data.append(cal_angle(pub_x_msg.array.data[i],pub_y_msg.array.data[i]) * 180 / math.pi)

        else:
            theta_data.append(0)
    pub_theta_msg.array.data = theta_data
    multi_result = list(map(multi_func,pub_xy_msg.array.data,theta_data))
    # pub_xy_multi_theta_msg.array.data = multi_result
    pub_xy_theta_msg.array.data = pub_xy_msg.array.data+theta_data
    pub_xyz_theta_msg.array.data = pub_xyz_msg.array.data+theta_data
    pub_xy_z_theta_msg.array.data = pub_xy_msg.array.data+pub_z_msg.array.data+theta_data

    pub_1_2_z.publish(pub_1_2_z_msg)
    pub_all_sum_data.publish(pub_all_sum_msg)

    pub_theta_data.publish(pub_theta_msg)
    pub_xy_theta_data.publish(pub_xy_theta_msg)
    pub_xyz_theta_data.publish(pub_xyz_theta_msg)
    pub_xy_z_theta_data.publish(pub_xy_z_theta_msg)
    pub_1_2_all_z.publish(pub_1_2_z_all_msg)
    # pub_xy_theta_sum_data.publish(pub_xy_theta_sum_msg)
    # pub_xy_multi_theta_data.publish(pub_xy_multi_theta_msg)

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
    pub_all_sum_data = rospy.Publisher('xela/1and2_sum_data_calibrated_aligned', xela_msg, queue_size=1000)
    pub_1_2_z = rospy.Publisher('xela/1and2_z_data_calibrated_aligned', xela_msg, queue_size=1000)
    pub_1_2_all_z = rospy.Publisher('xela/1and2_z_all_data_calibrated_aligned', xela_msg, queue_size=1000)
    pub_theta_data = rospy.Publisher('xela/1and2_theta_data_calibrated_aligned', xela_msg, queue_size=1000)
    pub_xy_theta_data = rospy.Publisher('xela/1and2_xy_theta_data_calibrated_aligned', xela_msg, queue_size=1000)
    pub_xyz_theta_data = rospy.Publisher('xela/1and2_xyz_theta_data_calibrated_aligned', xela_msg, queue_size=1000)
    pub_xy_z_theta_data = rospy.Publisher('xela/1and2_xy_z_theta_data_calibrated_aligned', xela_msg, queue_size=1000)

    # pub_xy_multi_theta_data = rospy.Publisher('xela/1and2_xy_multi_theta_data_calibrated_aligned', xela_msg, queue_size=1000)
    rospy.Subscriber('/xela_zero_pub', std_msgs.msg.Int32, zero_callback, queue_size=1)
    # rospy.Subscriber('xela/1_all_data_raw', std_msgs.msg.Float64MultiArray, sensor1_callback)
    # rospy.Subscriber('xela/2_all_data_raw', std_msgs.msg.Float64MultiArray, sensor2_callback)
    xela_1 =message_filters.Subscriber('/xela/1_all_data_calibrated', xela_msg)
    xela_2 =message_filters.Subscriber('/xela/2_all_data_calibrated', xela_msg)
    ts = message_filters.ApproximateTimeSynchronizer([xela_1,xela_2],100, 0.1)
    ts.registerCallback(callback)
    while not rospy.is_shutdown():
        rospy.spin()
