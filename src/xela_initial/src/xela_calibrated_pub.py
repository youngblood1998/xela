#!/usr/bin/python
# -*- coding: utf-8 -*-
# @Time    : 2020/7/10 上午11:27
# @Author  : Ericwang
# @Email   : eericwang@163.com
# @File    : xela_calibrated_pub.py
# @Software: PyCharm
import rospy
import std_msgs
from xela_initial.msg import xela_msg

#数据形式[0,...,15,sum]
def zero_callback(data):
    global initial_data
    initial_data = list(data.array.data)

def callback(data):
    global initial_data
    full_data = list(data.array.data)
    full_data_calibrated = [full_data[i]-initial_data[i] for i in range(96)]
    full_data_calibrated_1 = full_data_calibrated[:48]
    full_data_calibrated_2 = full_data_calibrated[48:]
    pub_all_msg_1 = xela_msg()
    pub_x_msg_1 = xela_msg()
    pub_y_msg_1 = xela_msg()
    pub_z_msg_1 = xela_msg()
    pub_z_msg_1_force = xela_msg()
    pub_all_msg_1.array.data = full_data_calibrated_1
    pub_x_msg_1.array.data = [full_data_calibrated_1[i] for i in range(0,48,3)]
    pub_y_msg_1.array.data = [full_data_calibrated_1[i] for i in range(1,48,3)]
    pub_z_msg_1.array.data = [full_data_calibrated_1[i] for i in range(2,48,3)]
    pub_z_msg_1_force.array.data = [0.000677*pub_z_msg_1.array.data[i] for i in range(16)]
    # sum
    pub_x_msg_1.array.data.append(sum(pub_x_msg_1.array.data))
    pub_y_msg_1.array.data.append(sum(pub_y_msg_1.array.data))
    pub_z_msg_1.array.data.append(sum(pub_z_msg_1.array.data))

    pub_all_msg_2 = xela_msg()
    pub_x_msg_2 = xela_msg()
    pub_y_msg_2 = xela_msg()
    pub_z_msg_2 = xela_msg()
    pub_z_msg_2_force = xela_msg()

    pub_all_msg_2.array.data = full_data_calibrated_2
    pub_x_msg_2.array.data = [full_data_calibrated_2[i] for i in range(0,48,3)]
    pub_y_msg_2.array.data = [full_data_calibrated_2[i] for i in range(1,48,3)]
    pub_z_msg_2.array.data = [full_data_calibrated_2[i] for i in range(2,48,3)]
   #sum
    pub_x_msg_2.array.data.append(sum(pub_x_msg_2.array.data))
    pub_y_msg_2.array.data.append(sum(pub_y_msg_2.array.data))
    pub_z_msg_2.array.data.append(sum(pub_z_msg_2.array.data))
    pub_z_msg_2_force.array.data = [0.0007088*pub_z_msg_2.array.data[i] for i in range(16)]


    print('1:',sum(pub_z_msg_1_force.array.data),'2:',sum(pub_z_msg_2_force.array.data))
    # print(sum(pub_z_msg_2_force.array.data))
    h = std_msgs.msg.Header()
    h.stamp = rospy.Time.now()
    pub_all_msg_1.header = h
    pub_x_msg_1.header = h
    pub_y_msg_1.header = h
    pub_z_msg_1.header = h
    pub_all_msg_2.header = h
    pub_x_msg_2.header = h
    pub_y_msg_2.header = h
    pub_z_msg_2.header = h
    #publish
    pub_all_data_1.publish(pub_all_msg_1)
    pub_x_data_1.publish(pub_x_msg_1)
    pub_y_data_1.publish(pub_y_msg_1)
    pub_z_data_1.publish(pub_z_msg_1)
    pub_z_data_1_force.publish(pub_z_msg_1_force)

    pub_all_data_2.publish(pub_all_msg_2)
    pub_x_data_2.publish(pub_x_msg_2)
    pub_y_data_2.publish(pub_y_msg_2)
    pub_z_data_2.publish(pub_z_msg_2)
    pub_z_data_2_force.publish(pub_z_msg_2_force)





if __name__ =='__main__':
    rospy.init_node('xela_calibrated',anonymous=True)

    pub_all_data_1 = rospy.Publisher('xela/1_all_data_calibrated', xela_msg, queue_size=1000)
    pub_x_data_1 = rospy.Publisher('xela/1_x_data_calibrated', xela_msg, queue_size=1000)
    pub_y_data_1 = rospy.Publisher('xela/1_y_data_calibrated', xela_msg, queue_size=1000)
    pub_z_data_1 = rospy.Publisher('xela/1_z_data_calibrated', xela_msg, queue_size=1000)
    pub_z_data_1_force = rospy.Publisher('xela/1_z_data_calibrated_force', xela_msg, queue_size=1000)

    pub_all_data_2 = rospy.Publisher('xela/2_all_data_calibrated', xela_msg, queue_size=1000)
    pub_x_data_2 = rospy.Publisher('xela/2_x_data_calibrated', xela_msg, queue_size=1000)
    pub_y_data_2 = rospy.Publisher('xela/2_y_data_calibrated', xela_msg, queue_size=1000)
    pub_z_data_2 = rospy.Publisher('xela/2_z_data_calibrated', xela_msg, queue_size=1000)
    pub_z_data_2_force = rospy.Publisher('xela/2_z_data_calibrated_force', xela_msg, queue_size=1000)

    initial_data = list(rospy.wait_for_message('/xela/1and2_all_data_raw', xela_msg).array.data)
    rospy.Subscriber('/xela/1and2_all_data_raw', xela_msg, callback)
    rospy.Subscriber('/xela/1and2_all_zero', xela_msg, zero_callback)
    while not rospy.is_shutdown():
        rospy.spin()

