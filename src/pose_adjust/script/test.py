#!/usr/bin/env python
import rospy
import std_msgs
from my_xela_initial.msg import xela_msg

class PoseAdjust:
    def __init__(self):
        self.z_data_pub = rospy.Subscriber("xela/2_z_data_calibrated", xela_msg, queue_size=1, buff_size=52428800)
        s = rospy.get_param("/param")
        print(1)
        rospy.loginfo(s)

if __name__ == '__main__':
    rospy.init_node("pose_adjust")
    rospy.loginfo("位姿调整启动")
    print(3)
    PoseAdjust()
    print(2)
    rospy.spin()