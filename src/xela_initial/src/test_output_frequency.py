#!/usr/bin/python
# -*- coding: utf-8 -*-
# @Time    : 2020/7/9 下午9:29
# @Author  : Ericwang
# @Email   : eericwang@163.com
# @File    : test_output_frequency.py
# @Software: PyCharm

import asyncio
import socketio
import time
loop = asyncio.get_event_loop()
sio = socketio.AsyncClient()
counter = 0
@sio.event
async def connect():
    print('Connection established')

@sio.event
async def sensor_data(data):
    global counter
    counter+=1
    if counter==1:
        print(time.time())
    # print(data[u'data'])
    if counter==100:
        print(time.time())

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

loop.run_until_complete(start_server())
