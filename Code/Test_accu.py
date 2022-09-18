# -*- coding: utf-8 -*-
"""
Created on Wed Aug 28 15:31:39 2019

@author: yf_choong
"""

import usb.core #usb module from github
import usb.util
import time
from uarm.wrapper import SwiftAPI
import numpy as np
import matplotlib.pyplot as plt
import math
"""
api test: move
"""
#swift = SwiftAPI(filters={'hwid': 'USB VID:PID=2341:0042'})
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

def squareP(p):
    x=[]
    y=[]
    z=[]
    sp(x=150,y=0,z=140,speed=20000)
    sp(x=150,y=0+(p/2),z=140,speed=20000)
    swift.flush_cmd(wait_stop=True)
    time.sleep(0.5)
    a=sg()
    x0=a[0]
    y0=a[1]
    z0=a[2]
    x.append(x0)
    y.append(y0)
    z.append(z0)
    print("Initial co: ","X0= ",x0,"Y0= ",y0)
    sp(x=150+p,y=0+(p/2),z=140,speed=20000)
    for l in range (0,50):
        b=sg()
        x1=b[0]
        y1=b[1]
        z1=b[2]
        x.append(x1)
        y.append(y1)
        z.append(z1)
    swift.flush_cmd(wait_stop=True)
    time.sleep(0.5)
    sp(x=150+p,y=-(p/2),z=140,speed=20000)
    for m in range (0,50):
        c=sg()
        x2=c[0]
        y2=c[1]
        z2=c[2]
        x.append(x2)
        y.append(y2)
        z.append(z2)
    swift.flush_cmd(wait_stop=True)
    time.sleep(0.5)
    sp(x=150,y=-(p/2),z=140,speed=20000)
    for n in range (0,50):
        d=sg()
        x3=d[0]
        y3=d[1]
        z3=d[2]
        x.append(x3)
        y.append(y3)
        z.append(z3)
    swift.flush_cmd(wait_stop=True)
    time.sleep(0.5)
    sp(x=150,y=(p/2),z=140,speed=20000)
    for o in range (0,50):
        e=sg()
        x4=e[0]
        y4=e[1]
        z4=e[2]
        x.append(x4)
        y.append(y4)
        z.append(z4)
    swift.flush_cmd(wait_stop=True)
    time.sleep(1)
    f=sg()
    xf=f[0]
    yf=f[1]
    zf=f[2]
    x.append(xf)
    y.append(yf)
    z.append(zf)
    print("Final co: ","Xf= ",xf,"Yf= ",yf)
    time.sleep(1)
    plt.figure(1)
    plt.title('x vs Y')
    plt.xlabel('X')
    plt.ylabel('Y')
    plt.plot(x,y)
    plt.figure(2)
    plt.plot(y,z)
    plt.figure(3)
    plt.plot(x,z)
    plt.show()
    sp(x=150,y=0,z=140,speed=10000)
    
def triP(p,h):
    x=[]
    y=[]
    z=[]
    sp(x=150,y=0,z=h,speed=20000)
    swift.flush_cmd(wait_stop=True)
    time.sleep(0.5)
    sp(x=150,y=0+(p/2),z=h,speed=20000)
    swift.flush_cmd(wait_stop=True)
    time.sleep(0.5)
    a=sg()
    x0=a[0]
    y0=a[1]
    z0=a[2]
    x.append(x0)
    y.append(y0)
    z.append(z0)
    print("Initial co: ","X0= ",x0,"Y0= ",y0,"Height= ",z0)
    hypx=math.sqrt(0.75*(math.pow(p,2)))
    count=0
    while count<5:
        sp(x=150+hypx,y=0,z=h,speed=20000)
        for l in range (0,50):
            b=sg()
            x1=b[0]
            y1=b[1]
            z1=b[2]
            x.append(x1)
            y.append(y1)
            z.append(z1)
        swift.flush_cmd(wait_stop=True)
        time.sleep(0.5)
        sp(x=150,y=-(p/2),z=h,speed=20000)
        for m in range (0,50):
            c=sg()
            x2=c[0]
            y2=c[1]
            z2=c[2]
            x.append(x2)
            y.append(y2)
            z.append(z2)
        sp(x=150,y=0+(p/2),z=h,speed=20000)
        for n in range (0,50):
            d=sg()
            x3=d[0]
            y3=d[1]
            z3=d[2]
            x.append(x3)
            y.append(y3)
            z.append(z3)
        swift.flush_cmd(wait_stop=True)
        time.sleep(0.5)
        count+=1
    swift.flush_cmd(wait_stop=True)
    time.sleep(0.5)
    f=sg()
    xf=f[0]
    yf=f[1]
    zf=f[2]
    x.append(xf)
    y.append(yf)
    z.append(zf)
    print("Final co: ","Xf= ",xf,"Yf= ",yf,"Height= ",zf)
    time.sleep(1)
    plt.figure(1)
    plt.title('x vs Y')
    plt.xlabel('X')
    plt.ylabel('Y')
    plt.plot(x,y)
    plt.figure(2)
    plt.plot(y,z)
    plt.figure(3)
    plt.plot(x,z)
    plt.show()
    sp(x=150,y=0,z=h,speed=10000)
    
x=[]
y=[]
z=[]    
steps=100
t=np.linspace(0,2*np.pi,steps)
def circleP(r):
    Xi=r*np.cos(t)
    Yi=r*np.sin(t) 
    sp(x=round(Xi[0],3)+220, y=round(Yi[0],3), z=60, speed=50000)
    swift.flush_cmd(wait_stop=True)
    time.sleep(0.5)
    a=sg()
    x0=a[0]
    y0=a[1]
    z0=a[2]
    x.append(x0)
    y.append(y0)
    z.append(z0)
    print("Initial co: ","X0= ",x0,"Y0= ",y0,"Height= ",z0)
    count=0
    while count<5:
        for i in range(steps):
            sp(x=round(Xi[i],5)+220, y=round(Yi[i],3), z=60, speed=5000)
            for n in range (0,6):
                d=sg()
                x3=d[0]
                y3=d[1]
                z3=d[2]
                x.append(x3)
                y.append(y3)
                z.append(z3)
            time.sleep(0.001)
        swift.flush_cmd(wait_stop=True)
        time.sleep(0.5)
        count+=1
    swift.flush_cmd(wait_stop=True)
    time.sleep(0.5)
    f=sg()
    xf=f[0]
    yf=f[1]
    zf=f[2]
    x.append(xf)
    y.append(yf)
    z.append(zf)
    print("Final co: ","Xf= ",xf,"Yf= ",yf,"Height= ",zf) 
    time.sleep(1)
    plt.figure(1)
    plt.title('x vs Y')
    plt.xlabel('X')
    plt.ylabel('Y')
    plt.plot(x,y)
    plt.figure(2)
    plt.plot(y,z)
    plt.figure(3)
    plt.plot(x,z)
    plt.show()
    sp(z=100,speed=50000)
    