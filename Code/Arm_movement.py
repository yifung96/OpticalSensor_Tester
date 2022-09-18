# -*- coding: utf-8 -*-
"""
Created on Fri Aug  9 15:49:46 2019

@author: yf_choong
"""
import time
from uarm.wrapper import SwiftAPI
"""
api test: move
"""
swift = SwiftAPI(filters={'hwid': 'USB VID:PID=2341:0042'})
#Initial calibration
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

reset()
#Misc Functions    
#Functions to determine robotic arm properties
#manually set height 
#Set servo angle
def reset():
    swift.set_servo_angle(servo_id=1,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=0,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=2,angle=15.9,speed=10000)
    swift.flush_cmd(wait_stop=True)
def sa2(a):
    swift.set_servo_angle(servo_id=2,angle=a,speed=10000)
    time.sleep(7)
    d=sg()
    print(d[2])
#set polar    
def polar(h):
    d=sg()
    swift.set_polar(stretch=d[0],rotation=90,height=h,speed=10000,wait=True)
    time.sleep(7)
    e=sg()
    print(e[2])
#Check increment
#Increment via set angle
z_a=[]
z_inc1=[]
z_z=[]
def inc1(h):
    swift.set_servo_angle(servo_id=2,angle=79,speed=7500)
    time.sleep(25)
    e=sg()
    z0=e[2]
    print("init z=",z0)
    if (z0!=h):
        t=0
        while True:
            e=sg()
            zi=e[2]
            swift.set_servo_angle(servo_id=2,angle=79-t,speed=10000)
            time.sleep(0.7)
            f=ss()
            z_a.append(f[2])
            g=sg()
            z_inc1.append(g[2]-zi)
            d=sg()
            z_z.append(d[2])
            zd=d[2]-h
            t+=0.05
            if(zd<=0.08 and zd>=-0.08):
                break
    else:
        print("z=",h)
    f=sg()
    print(f[2])  
#Increment via set polar
y_a=[]
y_inc=[]
y_z=[]
def inc2(h):
    d=sg()
    s1=d[0]
    swift.set_polar(stretch=s1,rotation=90,height=20,speed=7500,wait=True)
    time.sleep(25)
    e=sg()
    z0=e[2]
    print("init z=",z0)
    if (z0!=h):
        t=0
        while True:
            e=sg()
            zi=e[2]
            swift.set_polar(stretch=s1,rotation=90,height=20+t,speed=10000,wait=True)
            time.sleep(0.7)
            f=ss()
            y_a.append(f[2])
            g=sg()
            y_inc.append(g[2]-zi)
            d=sg()
            y_z.append(d[2])
            zd=d[2]-h
            t+=0.05
            if(zd<=0.08 and zd>=-0.08):
                break
    else:
        print("z=",h)
    f=sg()
    print(f[2])  
