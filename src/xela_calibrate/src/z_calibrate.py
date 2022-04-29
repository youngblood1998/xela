#!/usr/bin/python
# -*- coding: utf-8 -*-
# @Time    : 2020/7/21 上午11:09
# @Author  : Ericwang
# @Email   : eericwang@163.com
# @File    : z_calibrate.py
# @Software: PyCharm

import rospy
import std_msgs
from xela_initial.msg import xela_msg

xela_1_z_sum ='/home/wang/xela/src/xela_calibrate/data/1_data/sum_data_test'
xela_1_z_all ='/home/wang/xela/src/xela_calibrate/data/1_data/all_data_test'


xela_2_z_sum ='/home/wang/xela/src/xela_calibrate/data/2_data/sum_data'
xela_2_z_all ='/home/wang/xela/src/xela_calibrate/data/2_data/all_data'


def sum_save(filename, data,signal):
    file = open(filename, 'a')
    file.write(str(data))
    file.write(' ')
    file.write(str(signal))
    file.write('\n')
    file.close()

def text_save(filename, data):  #filename为写入CSV文件的路径，data为要写入数据列表.
    file = open(filename, 'a')
    data = list(data)
    for i in range(len(data)):
        s = str(data[i]).replace('[','').replace(']','')#去除[],这两行按数据不同，可以选择
        s = s+' '   #去除单引号，逗号，每行末尾追加换行符
        file.write(s)
    file.write('\n')
    file.close()


def listener2():
    global counter
    counter+=1
    print(counter)

    # raw_input('按Enter初始化传感器值')
    # ini=list(rospy.wait_for_message('xela/2_z_data_calibrated', xela_msg).array.data)
    # raw_input('按Enter确认已加载10g')
    # loaded=list(rospy.wait_for_message('xela/2_z_data_calibrated', xela_msg).array.data)
    # loaded_10 = [loaded[i]-ini[i] for i in range(len(loaded))]
    # loaded_10_sum = sum(loaded_10)
    # loaded_10.append(10)
    # print(loaded_10_sum,'all_data=',loaded_10)
    # sum_save(xela_2_z_sum,loaded_10_sum, 10)
    # text_save(xela_2_z_all,loaded_10)

    # raw_input('按Enter初始化传感器值')
    # ini = list(rospy.wait_for_message('xela/2_z_data_calibrated', xela_msg).array.data)
    # raw_input('按Enter确认已加载20g')
    # loaded = list(rospy.wait_for_message('xela/2_z_data_calibrated', xela_msg).array.data)
    # loaded_20 = [loaded[i] - ini[i] for i in range(len(loaded))]
    # loaded_20_sum = sum(loaded_20)
    # loaded_20.append(20)
    # print(loaded_20_sum, 'all_data=', loaded_20)
    # sum_save(xela_2_z_sum,loaded_20_sum,20)
    # text_save(xela_2_z_all,loaded_20)
    #
    # raw_input('按Enter初始化传感器值')
    # ini = list(rospy.wait_for_message('xela/2_z_data_calibrated', xela_msg).array.data)
    # raw_input('按Enter确认已加载50g')
    # loaded = list(rospy.wait_for_message('xela/2_z_data_calibrated', xela_msg).array.data)
    # loaded_50 = [loaded[i] - ini[i] for i in range(len(loaded))]
    # loaded_50_sum = sum(loaded_50)
    # loaded_50.append(50)
    # print(loaded_50_sum, 'all_data=', loaded_50)
    # sum_save(xela_2_z_sum,loaded_50_sum,50)
    # text_save(xela_2_z_all,loaded_50)
    #
    # raw_input('按Enter初始化传感器值')
    # ini = list(rospy.wait_for_message('xela/2_z_data_calibrated', xela_msg).array.data)
    # raw_input('按Enter确认已加载100g')
    # loaded = list(rospy.wait_for_message('xela/2_z_data_calibrated', xela_msg).array.data)
    # loaded_100 = [loaded[i] - ini[i] for i in range(len(loaded))]
    # loaded_100_sum = sum(loaded_100)
    # loaded_100.append(100)
    # print(loaded_100_sum, 'all_data=', loaded_100)
    # sum_save(xela_2_z_sum,loaded_100_sum,100)
    # text_save(xela_2_z_all,loaded_100)
    #
    # raw_input('按Enter初始化传感器值')
    # ini = list(rospy.wait_for_message('xela/2_z_data_calibrated', xela_msg).array.data)
    # raw_input('按Enter确认已加载200g')
    # loaded = list(rospy.wait_for_message('xela/2_z_data_calibrated', xela_msg).array.data)
    # loaded_200 = [loaded[i] - ini[i] for i in range(len(loaded))]
    # loaded_200_sum = sum(loaded_200)
    # loaded_200.append(200)
    # print(loaded_200_sum, 'all_data=', loaded_200)
    # sum_save(xela_2_z_sum,loaded_200_sum,200)
    # text_save(xela_2_z_all,loaded_200)
    #
    #
    raw_input('按Enter初始化传感器值')
    ini = list(rospy.wait_for_message('xela/2_z_data_calibrated', xela_msg).array.data)
    raw_input('按Enter确认已加载300g')
    loaded = list(rospy.wait_for_message('xela/2_z_data_calibrated', xela_msg).array.data)
    loaded_300 = [loaded[i] - ini[i] for i in range(len(loaded))]
    loaded_300_sum = sum(loaded_300)
    loaded_300.append(300)
    print(loaded_300_sum, 'all_data=', loaded_300)
    sum_save(xela_2_z_sum,loaded_300_sum,300)
    text_save(xela_2_z_all,loaded_300)

def listener1():
    global counter
    counter+=1
    print(counter)

    # raw_input('按Enter初始化传感器值')
    # ini=list(rospy.wait_for_message('xela/1_z_data_calibrated', xela_msg).array.data)
    # raw_input('按Enter确认已加载10g')
    # loaded=list(rospy.wait_for_message('xela/1_z_data_calibrated', xela_msg).array.data)
    # loaded_10 = [loaded[i]-ini[i] for i in range(len(loaded))]
    # loaded_10_sum = sum(loaded_10)
    # loaded_10.append(10)
    # print(loaded_10_sum,'all_data=',loaded_10)
    # sum_save(xela_1_z_sum,loaded_10_sum, 10)
    # text_save(xela_1_z_all,loaded_10)

    # raw_input('按Enter初始化传感器值')
    # ini = list(rospy.wait_for_message('xela/1_z_data_calibrated', xela_msg).array.data)
    # raw_input('按Enter确认已加载20g')
    # loaded = list(rospy.wait_for_message('xela/1_z_data_calibrated', xela_msg).array.data)
    # loaded_20 = [loaded[i] - ini[i] for i in range(len(loaded))]
    # loaded_20_sum = sum(loaded_20)
    # loaded_20.append(20)
    # print(loaded_20_sum, 'all_data=', loaded_20)
    # sum_save(xela_1_z_sum,loaded_20_sum,20)
    # text_save(xela_1_z_all,loaded_20)

    # raw_input('按Enter初始化传感器值')
    # ini = list(rospy.wait_for_message('xela/1_z_data_calibrated', xela_msg).array.data)
    # raw_input('按Enter确认已加载50g')
    # loaded = list(rospy.wait_for_message('xela/1_z_data_calibrated', xela_msg).array.data)
    # loaded_50 = [loaded[i] - ini[i] for i in range(len(loaded))]
    # loaded_50_sum = sum(loaded_50)
    # loaded_50.append(50)
    # print(loaded_50_sum, 'all_data=', loaded_50)
    # sum_save(xela_1_z_sum,loaded_50_sum,50)
    # text_save(xela_1_z_all,loaded_50)

    # raw_input('按Enter初始化传感器值')
    # ini = list(rospy.wait_for_message('xela/1_z_data_calibrated', xela_msg).array.data)
    # raw_input('按Enter确认已加载100g')
    # loaded = list(rospy.wait_for_message('xela/1_z_data_calibrated', xela_msg).array.data)
    # loaded_100 = [loaded[i] - ini[i] for i in range(len(loaded))]
    # loaded_100_sum = sum(loaded_100)
    # loaded_100.append(100)
    # print(loaded_100_sum, 'all_data=', loaded_100)
    # sum_save(xela_1_z_sum,loaded_100_sum,100)
    # text_save(xela_1_z_all,loaded_100)
    #
    # raw_input('按Enter初始化传感器值')
    # ini = list(rospy.wait_for_message('xela/1_z_data_calibrated', xela_msg).array.data)
    # raw_input('按Enter确认已加载200g')
    # loaded = list(rospy.wait_for_message('xela/1_z_data_calibrated', xela_msg).array.data)
    # loaded_200 = [loaded[i] - ini[i] for i in range(len(loaded))]
    # loaded_200_sum = sum(loaded_200)
    # loaded_200.append(200)
    # print(loaded_200_sum, 'all_data=', loaded_200)
    # sum_save(xela_1_z_sum,loaded_200_sum,200)
    # text_save(xela_1_z_all,loaded_200)


    raw_input('按Enter初始化传感器值')
    ini = list(rospy.wait_for_message('xela/1_z_data_calibrated', xela_msg).array.data)
    raw_input('按Enter确认已加载300g')
    loaded = list(rospy.wait_for_message('xela/1_z_data_calibrated', xela_msg).array.data)
    loaded_300 = [loaded[i] - ini[i] for i in range(len(loaded))]
    loaded_300_sum = sum(loaded_300)
    loaded_300.append(300)
    print(loaded_300_sum, 'all_data=', loaded_300)
    sum_save(xela_1_z_sum,loaded_300_sum,300)
    text_save(xela_1_z_all,loaded_300)




if __name__ == '__main__':
    # plt.show()
    # BEGIN SUBSCRIBER
    counter = 0
    rospy.init_node('xela_z_calibrate')
    while 1:
        # listener2()
        listener1()