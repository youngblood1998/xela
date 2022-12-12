#!/usr/bin/env python
# -*- coding: utf-8 -*-
INTERVAL = 5    # 传感器触点间的距离mm
LINE_NUM = 4    # 每行的触点数
CENT_X = float(LINE_NUM-1)*INTERVAL/2   # 假定的x轴中心点
CENT_Y = float(LINE_NUM)*INTERVAL/2     # 假定的y轴中心点
# SENSOR_GRID_X = [i%LINE_NUM*INTERVAL-CENT_X for i in range(16)]    # 每个触点的坐标x
# SENSOR_GRID_Y = [i//LINE_NUM*INTERVAL-CENT_Y for i in range(16)]    # 每个触点的坐标y
SENSOR_GRID_Y = [(LINE_NUM-1-i%LINE_NUM)*INTERVAL-CENT_Y for i in range(16)]    # 每个触点的坐标y
SENSOR_GRID_X = [i//LINE_NUM*INTERVAL-CENT_X for i in range(16)]    # 每个触点的坐标x

print(SENSOR_GRID_X)
print(SENSOR_GRID_Y)