# -*- coding: utf-8 -*-
"""
Created on Tue Jul 23 11:27:06 2019

@author: yf_choong
"""

import os
import sys
import time
import matplotlib.pyplot as plt
import numpy as np
import usb.core
import usb.util
sys.path.append(os.path.join(os.path.dirname(__file__), '../../..'))
from uarm.wrapper import SwiftAPI
import math
"""
api test: move
"""
#swift = SwiftAPI(filters={'hwid': 'USB VID:PID=2341:0042'})

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
###############################################################################
#Main Program
a_a=[]
a_z=[]
def run(idProduct):
    create_dev(idProduct)
    #Initialise uarm
    reset()
    print('')
    z0=iniz()
    #Set initial position
    dx1,dx2,dy1,dy2,total=rd2(idProduct)
    if total !=0:
        while True:
            dx1,dx2,dy1,dy2,total=rd2(idProduct)
            if total==0:
                break
        print("Set Position: ",dx2+dx1,dy2+dy1)
    else:
        print("Set Position: ",dx2+dx1,dy2+dy1) 
    total=swing(idProduct)
    if total!=0:
        t=0.05
        count=1
        while True:
            swift.set_servo_angle(servo_id=2,angle=15.5-t,speed=10000)
            time.sleep(0.7)
            f=ss()
            a_a.append(f[2])
            g=sg()
            a_z.append(g[2])
            t+=0.05
            count+=1
            total=swing(idProduct)
            time.sleep(0.5)
            dx1,dx2,dy1,dy2,total=rd2(idProduct)
            x=dx2+dx1
            y=dy2+dy1
            total2=int((x+y),16)
            if total==0 and total2==0:
                break
        h=sg()
        zf=round((h[2]-z0),3)
        dx1,dx2,dy1,dy2,total=rd2(idProduct)
        xf=dx2+dx1
        yf=dy2+dy1
        print('')
        print("Final Position: ","X=",xf,"Y=",yf)
        print("Z final= ",h[2]," units")
        print("Cutoff Z= ",zf," units")
        print("Iteration: ",count)
    else:
        print("Error")
###############################################################################
#Void Function
#Reset Arm position (servo 0,1)            
def reset():
    swift.set_servo_angle(servo_id=1,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=0,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=2,angle=15.7,speed=10000)
    swift.flush_cmd(wait_stop=True)
#check initial heigth   
def iniz():
    time.sleep(7)
    e=sg()
    z0=e[2]
    print("Z initial=",z0," units")
    return (z0)
#Swing mouse left and right 
a_rotA=[]
a_zs=[]
def swing(idProduct):
    swift.set_servo_angle(servo_id=0,angle=85,speed=10000)
    for l in range (0,8):
        e=sg()
        a_zs.append(e[2])
        f=ss()
        a_rotA.append(f[0])
        dx1,dx2,dy1,dy2,total=rd(idProduct)
        
    swift.set_servo_angle(servo_id=0,angle=90,speed=10000)
    for l in range (0,8):
        e=sg()
        a_zs.append(e[2])
        f=ss()
        a_rotA.append(f[0])
        dx1,dx2,dy1,dy2,total=rd(idProduct)
           
    swift.set_servo_angle(servo_id=0,angle=95,speed=10000)
    for l in range (0,8):
       e=sg()
       a_zs.append(e[2])
       f=ss()
       a_rotA.append(f[0])
       dx1,dx2,dy1,dy2,total=rd(idProduct)
            
    swift.set_servo_angle(servo_id=0,angle=90,speed=10000)
    for l in range (0,8):
       e=sg()
       a_zs.append(e[2])
       f=ss()
       a_rotA.append(f[0])
       dx1,dx2,dy1,dy2,total=rd(idProduct)
    dx1,dx2,dy1,dy2,total=rd2(idProduct) 
    return(total)    
#Create Device    
def create_dev(idProduct):
    dev=usb.core.find(idVendor=0x192f, idProduct=idProduct)
    if dev is None:
        raise ValueError('Device not found')
    else:
        print('Device Found')
        print("idProduct=",idProduct)
        print("idVendor=0x192f")        
#Read data from usb registry        
a_dx=[]
a_dy=[]
#Read while collecting displacement
def rd(idProduct):
    dev=usb.core.find(idVendor=0x192f, idProduct=idProduct)
    r=2
    for i in range (5):
        if r==3 :
            addr = r & 127
            data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
            dx1=hex(data[0])[2:].zfill(2).replace('0x','')
            r+=1
        elif r==4 :
            addr = r & 127
            data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
            dx2=hex(data[0])[2:].zfill(2).replace('0x','')
            r+=1
        elif r==5 :
            addr = r & 127
            data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
            dy1=hex(data[0])[2:].zfill(2).replace('0x','')
            r+=1
        elif r==6 :
            addr = r & 127
            data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
            dy2=hex(data[0])[2:].zfill(2).replace('0x','')
            r+=1
        else:
            addr = r & 127
            data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
            r+=1
    x=dx2+dx1
    y=dy2+dy1
    xb="{0:08b}".format(int(x,16)).zfill(16)
    yb="{0:08b}".format(int(y,16)).zfill(16)
    #Obtain converted 2s complement of x and y
    xd=int(x,16)
    yd=int(y,16)
    xd1,yd1=mask(xd,yd)
    x_value,y_value=convert(xd,yd,xd1,yd1)
    a_dx.append(x_value)
    a_dy.append(y_value)
    T=dx1+dx2+dy1+dy2
    total=int(T,16)     
    return(dx2,dx1,dy2,dy1,total)
#Read without collecting desplacement (Check conditions)
def rd2(idProduct):
    dev=usb.core.find(idVendor=0x192f, idProduct=idProduct)
    r=2
    for i in range (5):
        if r==3 :
            addr = r & 127
            data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
            dx1=hex(data[0]).replace('0x','')
            r+=1
        elif r==4 :
            addr = r & 127
            data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
            dx2=hex(data[0]).replace('0x','')
            r+=1
        elif r==5 :
            addr = r & 127
            data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
            dy1=hex(data[0]).replace('0x','')
            r+=1
        elif r==6 :
            addr = r & 127
            data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
            dy2=hex(data[0]).replace('0x','')
            r+=1
        else:
            addr = r & 127
            data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
            r+=1
    T=dx1+dx2+dy1+dy2
    total=int(T,16)     
    return(dx1,dx2,dy1,dy2,total)  
#Mask MSB
def mask(xd,yd):
    mask = 1<<15
    xd1=(xd &~ mask)|(0<<15)
    mask = 1<<15
    yd1=(yd &~ mask)|(0<<15)
    return (xd1,yd1)
#Convert 2s Complement
#Check positive or negative value
def convert(xd,yd,xd1,yd1):
    if xd != 0:
        k = int(math.log(xd, 2))  
        x= 2**k   
        if x ==32768:
            x_value= -xd1
        else:
            x_value= xd1
    else:
        x_value =0
    if yd != 0:
        k = int(math.log(yd, 2))  
        y= 2**k   
        if y ==32768:
            y_value= -yd1
        else:
            y_value= yd1
    else:
        y_value= 0
    return(x_value,y_value)
###############################################################################
#Misc Functions    
#Functions to determine robotic arm properties
#manually set height 
#Set servo angle
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