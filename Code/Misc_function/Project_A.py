# -*- coding: utf-8 -*-
"""
Created on Mon Jul 22 14:30:36 2019

@author: yf_choong
"""

import os
import sys
import time
import matplotlib.pyplot as plt
import numpy as np
sys.path.append(os.path.join(os.path.dirname(__file__), '../../..'))
from uarm.wrapper import SwiftAPI

"""
api test: move
"""

swift = SwiftAPI(filters={'hwid': 'USB VID:PID=2341:0042'})

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
b=[]
br=[]
z=[]
a=[]
z1=[]

def main(zz):
    swift.set_servo_angle(servo_id=1,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=0,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=2,angle=15.7,speed=10000)
    time.sleep(5)
    e=sg()
    z0=e[2]
    print("init z=",z0)
    if (z0!=zz):
        e=sg()
        s=e[0]
        t=0
        while True:
            swift.set_polar(stretch=s,rotation=90,height=z0+t,speed=10000,wait=True)
            time.sleep(0.7)
            f=ss()
            a.append(f[2])
            e=sg()
            z1.append(e[2])
            swift.set_servo_angle(servo_id=0,angle=85,speed=10000)
            for l in range (0,20):
                e=sg()
                b.append(e[2])
                br.append(e[1])
                z3=np.array(e[2])
                Diff=lambda z3:(z3-z0)/1.1263
                z.append(np.round(Diff(z3),2))
            
            swift.set_servo_angle(servo_id=0,angle=90,speed=10000)
            for l in range (0,20):
                e=sg()
                b.append(e[2])
                br.append(e[1])
                z3=np.array(e[2])
                Diff=lambda z3:(z3-z0)/1.1263
                z.append(np.round(Diff(z3),2))
           
            swift.set_servo_angle(servo_id=0,angle=95,speed=10000)
            for l in range (0,20):
                e=sg()
                b.append(e[2])
                br.append(e[1])
                z3=np.array(e[2])
                Diff=lambda z3:(z3-z0)/1.1263
                z.append(np.round(Diff(z3),2))
            
            swift.set_servo_angle(servo_id=0,angle=90,speed=10000)
            for l in range (0,20):
                e=sg()
                b.append(e[2])
                br.append(e[1])
                z3=np.array(e[2])
                Diff=lambda z3:(z3-z0)/1.1263
                z.append(np.round(Diff(z3),2))
            
            time.sleep(0.5)
            d=sg()
            zd=d[2]-zz
            t+=0.05
            if(zd<=0.08 and zd>=-0.08):
                break
            
    else:
        print("z=",zz)
    f=sg()
    z2=round(f[2],2)
    print("current z=",z2)
    zd2=z2-z0
    Hd=round(zd2/1.1263,2)
    print("Height(mm)=",Hd)  
    plt.plot(br,z)
    plt.show
    
zrel=[]    
#autoset
def findh(h):
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
            a.append(f[2])
            g=sg()
            zrel.append(g[2]-zi)
            d=sg()
            z1.append(d[2])
            zd=d[2]-h
            t+=0.05
            if(zd<=0.08 and zd>=-0.08):
                break
    else:
        print("z=",h)
    f=sg()
    print(f[2])  
    
def fh2(h):
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
            a.append(f[2])
            g=sg()
            zrel.append(g[2]-zi)
            d=sg()
            z1.append(d[2])
            zd=d[2]-h
            t+=0.05
            if(zd<=0.08 and zd>=-0.08):
                break
    else:
        print("z=",h)
    f=sg()
    print(f[2])  
    
#manualset   
def sa2(a):
    swift.set_servo_angle(servo_id=2,angle=a,speed=10000)
    time.sleep(7)
    d=sg()
    print(d[2])
    
def polar(h):
    d=sg()
    swift.set_polar(stretch=d[0],rotation=90,height=h,speed=10000,wait=True)
    time.sleep(7)
    e=sg()
    print(e[2])
    
#reset
def reset():
    swift.set_servo_angle(servo_id=1,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=0,angle=90,speed=10000)
    
