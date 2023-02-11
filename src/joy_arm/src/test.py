#! /usr/bin/env python3

#sensor_msgs/JointState


import rospy
from std_msgs.msg import String
import random
import numpy as np
import time
from sensor_msgs.msg import JointState
from math import radians
import roslaunch

#node = roslaunch.core.Node("joy", "joy_node")
#launch = roslaunch.scriptapi.ROSLaunch()
#try:
#    launch.start()
#    script = launch.launch(node)
#except:
#    pass

if __name__ == '__main__':
    while True:
        joint1 = radians(90)
        pub = rospy.Publisher('/joint_states', JointState, queue_size=10)
        rospy.init_node('talker', anonymous=True)
        r = rospy.Rate(100000) # 100hz
        msg = JointState()
        msg.header=rospy.Time.now()
        msg.name=['hand_joint','arm_joint','sh_joint','head_joint']
        msg.position = [joint1,joint1,joint1,0.0]
        rospy.loginfo(repr(msg))
        pub.publish(msg)
        #r.sleep()

        rospy.spin()
