#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from sensor_msgs.msg import JointState
from sensor_msgs.msg import Joy
from math import radians
from time import sleep

import roslaunch

node = roslaunch.core.Node("joy", "joy_node")
launch = roslaunch.scriptapi.ROSLaunch()
launch.start()
script = launch.launch(node)

class joystic:
    def __init__(self):
        self.a=0
        self.b=0
        self.c=0
        self.d=0

    def joy_callback(self,data):
        rospy.loginfo("I heard %f",data.axes[0])
        self.a=data.axes[4]*-3.14
        self.b=data.axes[3]*3.14
        self.c=(data.axes[5]-1)*3.14
        self.d=data.axes[0]*1.5

pub = rospy.Publisher('joint_states', JointState, queue_size=10)
rospy.init_node('node_name')
r = rospy.Rate(10) # 10hz

j1=joystic()

sub=rospy.Subscriber('joy',Joy,j1.joy_callback)
while not rospy.is_shutdown():

    msg=JointState()
    msg.header.stamp = rospy.Time.now()

    msg.name=['hand_joint','arm_joint','sh_joint','head_joint']
    msg.position = [j1.c,j1.b,j1.a,j1.d]
    #rospy.loginfo(repr(msg))
    pub.publish(msg)
    r.sleep()
