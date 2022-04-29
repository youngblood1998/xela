#!/usr/bin/python3
# -*- coding: utf-8 -*-
# @Time    : 2020/7/9 上午11:05
# @Author  : Ericwang
# @Email   : eericwang@163.com
# @File    : xela_pub_1.py
# @Software: PyCharm

import asyncio
import socketio
import rospy
import std_msgs
import math
from xela_initial.msg import xela_msg
loop = asyncio.get_event_loop()
sio = socketio.AsyncClient()
initial_all = []
@sio.event
async def connect():
    print('Connection established')

@sio.event
async def sensor_data(data):
    global initial_all
    data_list = data[u"data"].split(',')
    data_map_int = list(map(lambda x:int(x,16),data_list))
    pub_all_msg = xela_msg()
    pub_x_msg = xela_msg()
    pub_y_msg = xela_msg()
    pub_z_msg = xela_msg()
    pub_xy_msg = xela_msg()
    pub_xyz_msg = xela_msg()
    pub_theta_msg = xela_msg()
    pub_xy_theta_msg = xela_msg()
    pub_all_sum_msg = xela_msg()
    h = std_msgs.msg.Header()
    h.stamp = rospy.Time.now()
    # pub_all_msg =std_msgs.msg.Float64MultiArray(data = data_map_int)
    # pub_x_msg = std_msgs.msg.Float64MultiArray(data=[data_map_int[i] for i in range(0,48,3)])
    # pub_y_msg = std_msgs.msg.Float64MultiArray(data=[data_map_int[i] for i in range(1,48,3)])
    # pub_z_msg = std_msgs.msg.Float64MultiArray(data=[data_map_int[i] for i in range(2,48,3)])

# initial the sensor
    if initial_all==[]:
        for i in range(len(data_map_int)):
            initial_all.append(data_map_int[i])
    else:
        for i in range(len(data_map_int)):
            data_map_int[i] = data_map_int[i] - initial_all[i]

# 0.000*** is the calibrated coefficient
    for i in range(0,48,3):
        data_map_int[i] = data_map_int[i]*0.0004424
    for i in range(1,48,3):
        data_map_int[i] = data_map_int[i]*0.0004319
    for i in range(2,48,3):
        data_map_int[i] = data_map_int[i]*0.0004268
    pub_all_msg.array.data = data_map_int
    pub_x_msg.array.data = [data_map_int[i] for i in range(0,48,3)]
    pub_y_msg.array.data = [data_map_int[i] for i in range(1,48,3)]
    pub_z_msg.array.data = [data_map_int[i] for i in range(2,48,3)]
    pub_all_sum_msg.array.data = [sum(pub_x_msg.array.data), sum(pub_y_msg.array.data),sum(pub_z_msg.array.data)]
    pub_xy_msg.array.data = [math.sqrt(pub_x_msg.array.data[i]**2+pub_y_msg.array.data[i]**2) for i in range(16)]
    pub_xyz_msg.array.data = [math.sqrt(pub_x_msg.array.data[i]**2+pub_y_msg.array.data[i]**2+pub_z_msg.array.data[i]**2) for i in range(16)]

    theta_data = []
    for i in range(32):
        if pub_xy_msg.array.data[i]>=0.01:
            theta_data.append(math.atan(pub_x_msg.array.data[i] / (pub_y_msg.array.data[i] + 0.00001)) * 180 / math.pi)
            # theta_data.append(math.atan(pub_x_msg.array.data[i] / (pub_y_msg.array.data[i] + 0.00001)))
        else:
            theta_data.append(0)
    pub_theta_msg.array.data = theta_data
    pub_xy_theta_msg.array.data = pub_xy_msg.array.data+theta_data
    pub_all_msg.header = h
    pub_x_msg.header = h
    pub_y_msg.header = h
    pub_z_msg.header = h
    pub_xy_msg.header = h
    pub_xyz_msg.header = h
    pub_theta_msg.header = h
    pub_xy_theta_msg.header = h
    pub_all_sum_msg.header = h

    pub_all_data.publish(pub_all_msg)
    pub_all_sum_data.publish(pub_all_sum_msg)
    pub_x_data.publish(pub_x_msg)
    pub_y_data.publish(pub_y_msg)
    pub_z_data.publish(pub_z_msg)
    pub_xy_data.publish(pub_xy_msg)
    pub_xyz_data.publish(pub_xyz_msg)
    pub_theta_data.publish(pub_theta_msg)
    pub_xy_theta_data.publish(pub_xy_theta_msg)

@sio.event
async def disconnect():
    print('Disconnected from server')

async def start_server():
    ncd = True
    while ncd:
        try:
            await sio.connect('http://localhost:5000', namespaces=["/sensor1"])
        except socketio.exceptions.ConnectionError:
            pass
        else:
            ncd = False
            break
    try:
        await sio.wait()
    except KeyboardInterrupt:
        exit()


rospy.init_node('xela_publisher_1', anonymous=True)
pub_all_data = rospy.Publisher('xela/1_all_data_calibrated', xela_msg, queue_size=1000)
pub_x_data = rospy.Publisher('xela/1_x_data_calibrated', xela_msg, queue_size=1000)
pub_y_data = rospy.Publisher('xela/1_y_data_calibrated', xela_msg, queue_size=1000)
pub_z_data = rospy.Publisher('xela/1_z_data_calibrated', xela_msg, queue_size=1000)

pub_all_sum_data = rospy.Publisher('xela/1_sum_data_calibrated_aligned', xela_msg, queue_size=1000)
pub_xy_data = rospy.Publisher('xela/1_xy_data_calibrated_aligned', xela_msg, queue_size=1000)
pub_xyz_data = rospy.Publisher('xela/1_xyz_data_calibrated_aligned', xela_msg, queue_size=1000)
pub_theta_data = rospy.Publisher('xela/1_theta_data_calibrated_aligned', xela_msg, queue_size=1000)
pub_xy_theta_data = rospy.Publisher('xela/1_xy_theta_data_calibrated_aligned', xela_msg, queue_size=1000)

loop.run_until_complete(start_server())
