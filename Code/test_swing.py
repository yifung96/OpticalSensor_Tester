# -*- coding: utf-8 -*-
"""
Created on Thu Aug 29 11:49:45 2019

@author: yf_choong
"""

import os
import sys
import time
from uarm.wrapper import SwiftAPI

"""
api test: move
"""
swift = SwiftAPI(filters={'hwid': 'USB VID:PID=2341:0042'})
#Initial calibration of uArm Swift Pro
swift.waiting_ready(timeout=3)

device_info = swift.get_device_info()
print(device_info)
firmware_version = device_info['firmware_version']
if firmware_version and not firmware_version.startswith(('0.', '1.', '2.', '3.')):
    swift.set_speed_factor(0.0005)

swift.set_mode(0)

swift.reset(wait=True, speed=10000)
swift.set_position(x=200, speed=10000)
swift.set_position(y=100)
swift.set_position(z=150)
swift.flush_cmd(wait_stop=True)
swift.set_polar(stretch=200, speed=10000)
swift.set_polar(rotation=90)
swift.set_polar(height=150)
print(swift.set_polar(stretch=200, rotation=90, height=150, wait=True))

swift.flush_cmd()

sp=swift.set_position
sg=swift.get_position
sr=swift.reset
ss=swift.get_servo_angle

const=0.8

def run():
    swift.set_servo_angle(servo_id=1,angle=90,speed=30000)
    swift.set_servo_angle(servo_id=2,angle=5,speed=10000)
    swift.set_servo_angle(servo_id=0,angle=22.5,speed=30000)
    swift.set_servo_angle(servo_id=2,angle=13.9,speed=10000)
    swift.flush_cmd(wait_stop=True)
    time.sleep(2)
    a=sg()
    initz2=a[2]
    print("Initial z: ",initz2)
    height2=[]
    H5=[]
    height_angle2=[]
    countt=0
    while countt<15:
        swift.flush_cmd(wait_stop=True)
        time.sleep(1)
        t3=0
        if countt>0:
            H3=H5[0]
            h_a2=height_angle2[0]
        while True:
            if countt==0:
                swift.set_servo_angle(servo_id=2,angle=13.9-t3,speed=7500)
                time.sleep(0.1)
                ha=13.7
                H4=initz2
                break
            else:
                swift.set_servo_angle(servo_id=2,angle=h_a2-t3,speed=7500)
                time.sleep(0.3)
                h=sg()
                H6=h[2]
                a=ss()
                haa=a[2]
                t3+=0.01
                if H6-H3>0.05 and h_a2-haa>0.05 :
                     ha=haa
                     H4=H6
                     break
                elif H6-H3>0.05 and h_a2-haa<0.05 :
                     t3+=0.01
                     continue
                elif H6-H3>0.2:
                     ha=haa
                     H4=H6
                     break
                else:
                     t3+=0.01
                     continue 
        swift.flush_cmd(wait_stop=True)
        time.sleep(0.1)
        height_angle2.clear()
        H5.clear()
        z_diff2=round(((H4-initz2)*const),2)
        height_angle2.append(ha)
        height2.append(z_diff2)
        H5.append(H4)
        loop2=0
        while loop2<2:
            swing(ha,H4)
            loop2+=1
        #Pause()
        countt+=1
    Pause()
    swift.set_servo_angle(servo_id=2,angle=5,speed=10000)
    time.sleep(1)
    return

def Pause():
     while True:
        pause=input("Pause (c for continue) " )
        if pause=='C' or pause=='c':
            break
        else:
            continue
eeh=[]
def swing(ha,H4):
    swift.set_servo_angle(servo_id=2,angle=ha,speed=10000)
    swift.set_servo_angle(servo_id=0,angle=(22.5- 18),speed=15000)
    swift.flush_cmd(wait_stop=True)
    time.sleep(0.5)
    swift.set_servo_angle(servo_id=0,angle=22.5+ 18,speed=15000)
    for l in range (0,50):
        f=sg()
        eeh.append(f[2])
    swift.flush_cmd(wait_stop=True)
    time.sleep(0.5)
    swift.set_servo_angle(servo_id=0,angle=22.5,speed=15000)
    swift.flush_cmd(wait_stop=True)
    time.sleep(0.5)
    return  

