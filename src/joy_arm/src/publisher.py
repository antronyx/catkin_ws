#! /usr/bin/env python3

import rospy
from std_msgs.msg import String
import random
import numpy as np
import time
from sensor_msgs.msg import JointState
from math import radians
import roslaunch
node = roslaunch.core.Node("joy", "joy_node")
launch = roslaunch.scriptapi.ROSLaunch()
launch.start()
script = launch.launch(node)

def talker():
    joint1 = radians(90)
    pub = rospy.Publisher('/joint_states', JointState, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    #r = rospy.Rate(100000) # 100hz
    msg = JointState()
    msg.position = [0,joint1,0,0]
    pub.publish(msg)
    #r.sleep()
    #time.sleep(.4)

if __name__ == '__main__':
    try:
        while True:
            talker()
    except rospy.ROSInterruptException: pass

