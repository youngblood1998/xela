#!/usr/bin/env python3
import numpy as np
import rospy
import std_msgs
from xela_initial.msg import xela_msg
matrix = np.zeros((3,9))
full_data = '/home/jay/xela/src/calibrate_Data/matrix_data'
all_data = '/home/jay/xela/src/calibrate_Data/all_data'
all_data_zero = '/home/jay/xela/src/calibrate_Data/all_data_zero'

def text_save(filename, data):  #filename为写入CSV文件的路径，data为要写入数据列表.
    file = open(filename, 'a')
    for i in range(len(data)):
        s = str(data[i]).replace('[','').replace(']','')#去除[],这两行按数据不同，可以选择
        s = s+' '   #去除单引号，逗号，每行末尾追加换行符
        file.write(s)
    file.write('\n')
    file.close()

def listener():
    global matrix
    raw_input('press ENTER to get the zero data')
    zero_data = np.array(list(rospy.wait_for_message("xela/1_all_data_raw", xela_msg).array.data))
    raw_input('press ENTER to get the initial data')
    initial_data = np.array(list(rospy.wait_for_message("xela/1_all_data_raw", xela_msg).array.data))
    raw_input('press ENTER to get the load data')
    load_data = np.array(list(rospy.wait_for_message("xela/1_all_data_raw", xela_msg).array.data))
    delta_data = load_data-initial_data
    delta_data_zero = load_data-zero_data
    for i in range(3):
        matrix[0, i] = delta_data[i]
    for i in range(3):
        matrix[1, i+3] = delta_data[i]
    for i in range(3):
        matrix[2, i+6] = delta_data[i]
    text_save(full_data,matrix[0,:])
    text_save(full_data, matrix[1, :])
    text_save(full_data, matrix[2, :])
    text_save(all_data, delta_data)
    text_save(all_data_zero, delta_data_zero)
    print(delta_data)
if __name__ == '__main__':
    # plt.show()
    # BEGIN SUBSCRIBER
    rospy.init_node('lstm_data_generate')
    while 1:
        listener()