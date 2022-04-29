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
from xela_initial.msg import xela_msg
loop = asyncio.get_event_loop()
sio = socketio.AsyncClient()
num = 12

@sio.event
async def connect():
    print('Connection established')

@sio.event
async def sensor_data(data):
    data_list = data[u"data"].split(',')
    data_map_int = list(map(lambda x:int(x,16),data_list))
    pub_all_msg = xela_msg()
    pub_x_msg = xela_msg()
    pub_y_msg = xela_msg()
    pub_z_msg = xela_msg()
    h = std_msgs.msg.Header()
    h.stamp = rospy.Time.now()
    # pub_all_msg =std_msgs.msg.Float64MultiArray(data = data_map_int)
    # pub_x_msg = std_msgs.msg.Float64MultiArray(data=[data_map_int[i] for i in range(0,48,3)])
    # pub_y_msg = std_msgs.msg.Float64MultiArray(data=[data_map_int[i] for i in range(1,48,3)])
    # pub_z_msg = std_msgs.msg.Float64MultiArray(data=[data_map_int[i] for i in range(2,48,3)])
    a = [data_map_int[i] for i in range(0,48,3)]
    b = [data_map_int[i] for i in range(1,48,3)]
    c = [data_map_int[i] for i in range(2,48,3)]
    pub_x_msg.array.data = [sum(a)]
    pub_y_msg.array.data = [sum(b)]
    pub_z_msg.array.data = [sum(c)]
    pub_all_msg.array.data = [sum(a),sum(b),sum(c)]

    # pub_x_msg.array.data = [a[num]]
    # pub_y_msg.array.data = [b[num]]
    # pub_z_msg.array.data = [c[num]]
    # pub_all_msg.array.data = [a[num],b[num],c[num]]
    print(pub_all_msg.array.data)
    pub_all_msg.header = h
    pub_x_msg.header = h
    pub_y_msg.header = h
    pub_z_msg.header = h
    pub_all_data.publish(pub_all_msg)
    pub_x_data.publish(pub_x_msg)
    pub_y_data.publish(pub_y_msg)
    pub_z_data.publish(pub_z_msg)


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


rospy.init_node('xela_publisher_calibrate', anonymous=True)
pub_all_data = rospy.Publisher('xela/1_all_data_raw', xela_msg, queue_size=1000)
pub_x_data = rospy.Publisher('xela/1_x_data_raw', xela_msg, queue_size=1000)
pub_y_data = rospy.Publisher('xela/1_y_data_raw', xela_msg, queue_size=1000)
pub_z_data = rospy.Publisher('xela/1_z_data_raw', xela_msg, queue_size=1000)
loop.run_until_complete(start_server())
