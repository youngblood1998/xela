#!/usr/bin/python
# -*- coding: utf-8 -*-
# @Time    : 2020/7/10 下午12:08
# @Author  : Ericwang
# @Email   : eericwang@163.com
# @File    : xela_zero_pub.py
# @Software: PyCharm
import rospy
import std_msgs
from xela_initial.msg import xela_msg


rospy.init_node('listener', anonymous=True)
pub_zero = rospy.Publisher('/xela/1and2_all_zero', xela_msg, queue_size=1000)
zero_data = list(rospy.wait_for_message('/xela/1and2_all_data_raw', xela_msg).array.data)
pub_msg= xela_msg()
pub_msg.array.data = zero_data
for i in range(20):
    pub_zero.publish(pub_msg)
