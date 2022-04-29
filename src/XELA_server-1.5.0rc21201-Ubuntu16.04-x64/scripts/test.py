#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @Time    : 2020/7/9 下午5:58
# @Author  : Ericwang
# @Email   : eericwang@163.com
# @File    : test_output_frequency.py
# @Software: PyCharm
import asyncio
import socketio
import time
loop = asyncio.get_event_loop()
sio = socketio.AsyncClient()

@sio.event
async def connect():
    print('Connection established')
print(1)

@sio.event
async def sensor_data(data):
    #sensor number
    sensor = data[u"sensor"]
    print('sensor number:',sensor,'current time:',time.time())
    data_list = data[u"data"].split(',')
    data_map_int = list(map(lambda x:int(x,16),data_list))
    print(data_map_int)
    # print('Next')

@sio.event
async def disconnect():
    print('Disconnected from server')

async def start_server():
    ncd = True
    while ncd:
        try:
            await sio.connect('http://localhost:5000', namespaces=["/sensor1","/sensor2"])
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
