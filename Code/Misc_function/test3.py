# -*- coding: utf-8 -*-
"""
Created on Fri Jul 26 11:03:27 2019

@author: yf_choong
"""

# -*- coding: utf-8 -*-
"""
Created on Fri Jul 26 10:26:24 2019

@author: yf_choong
"""

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
a_zd=[]
a_dpi=[]
def run(idProduct):
    create_dev(idProduct)
    #Initialise uarm
    reset()
    print('')
    z0,arc=iniz()
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
    dx1,dx2,dy1,dy2,total=rd2(idProduct)
    if total == 0:
        t=0
        count=0
        while True:
            swift.set_servo_angle(servo_id=2,angle=14.55-t,speed=10000)
            time.sleep(0.5)
            f=ss()
            a_a.append(f[2])
            g=sg()
            z_diff=(g[2]-z0)*0.662878
            a_zd.append(z_diff)
            t+=0.05
            count+=1
            loop=0
            w1=0
            w2=0
            while loop<6:
                total,acc=swing(idProduct)
                add_swing=total + w1
                acc_swing=acc + w2
                w1+=total
                w2+=acc
                loop+=1
            ave_displacement= round((acc_swing/6),4)
            dpi=round((ave_displacement/(4*arc)),4)
            a_dpi.append(dpi)
            plt.xlabel('Height/mm')
            plt.ylabel('DPI')
            plt.plot(a_zd,a_dpi)
            plt.show()
            if add_swing==0 and acc_swing==0:
                break
        h=sg()
        zf=round(((h[2]-z0)*0.662878),4)
        dx1,dx2,dy1,dy2,total=rd2(idProduct)
        xf=dx2+dx1
        yf=dy2+dy1
        print('')
        print("Final Position: ","X=",xf,"Y=",yf)
        print("Z final= ",h[2]," units")
        print("Cutoff height= ",zf," mm")
        print("Iteration: ",count)
    else:
        print("Error")
###############################################################################
#Void Functions
#Reset Arm position (servo 0,1)            
def reset():
    swift.set_servo_angle(servo_id=1,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=0,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=2,angle=14.55,speed=10000)
    swift.flush_cmd(wait_stop=True)
#check initial heigth   
def iniz():
    time.sleep(7)
    e=sg()
    z0=e[2]
    radius=e[0]
    arc=round(((math.pi*radius*27/180)/25.4),4)
    print("Z initial=",z0," units")
    return (z0,arc)
#Swing mouse left and right 
#Collecting mouse displacement while moving
a_rotA=[]
a_zs=[]
def swing(idProduct):
    p=0
    p1=0
    x1=[]
    y1=[]
    swift.set_servo_angle(servo_id=0,angle=63,speed=15000)
    for l in range (0,23):
        e=sg()
        a_zs.append(e[2])
        f=ss()
        a_rotA.append(f[0])
        x_value,y_value=rd(idProduct)
        x1=x_value + p
        p+=x_value
        y1=y_value + p1
        p1+=y_value
        a_dx.append(x1)
        a_dy.append(y1)
    swift.set_servo_angle(servo_id=0,angle=90,speed=15000)
    q=0
    q1=0
    x2=[]
    y2=[]
    for l in range (0,23):
        e=sg()
        a_zs.append(e[2])
        f=ss()
        a_rotA.append(f[0])
        x_value,y_value=rd(idProduct)
        x2=x_value + q
        q+=x_value
        y2=y_value + q1
        q1+=y_value
        a_dx.append(x2)
        a_dy.append(y2)
    swift.set_servo_angle(servo_id=0,angle=117,speed=15000)
    x3=[]
    y3=[]
    r=0
    r1=0
    for l in range (0,23):
       e=sg()
       a_zs.append(e[2])
       f=ss()
       a_rotA.append(f[0])
       x_value,y_value=rd(idProduct)
       x3=x_value + r
       r+=x_value
       y3=y_value + r1
       r1+=y_value
       a_dx.append(x3)
       a_dy.append(y3)
    swift.set_servo_angle(servo_id=0,angle=90,speed=15000)
    s=0
    s1=0
    x4=[]
    y4=[]
    for l in range (0,23):
       e=sg()
       a_zs.append(e[2])
       f=ss()
       a_rotA.append(f[0])
       x_value,y_value=rd(idProduct)
       x4=x_value + s
       s+=x_value
       y4=y_value + s1
       s1+=y_value
       a_dx.append(x4)
       a_dy.append(y4)
    hyp1=math.sqrt((math.pow(x1,2))+(math.pow(y1,2)))
    hyp2=math.sqrt((math.pow(x2,2))+(math.pow(y2,2)))
    hyp3=math.sqrt((math.pow(x3,2))+(math.pow(y3,2)))
    hyp4=math.sqrt((math.pow(x4,2))+(math.pow(y4,2)))
    acc=round((abs(hyp1)+abs(hyp2)+abs(hyp3)+abs(hyp4)),4)
    print(acc)
    dx1,dx2,dy1,dy2,total=rd2(idProduct) 
    return(total,acc)    
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
#Read and convert data
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
    #Obtain converted 2s complement of x and y
    xd=int(x,16)
    yd=int(y,16)
    xd1,yd1=mask(xd,yd)
    x_value,y_value=check(xd,yd,xd1,yd1)
    return(x_value,y_value)
#Read without collecting displacement (Check conditions)
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

#Check positive or negative value
#Convert 2's complement, binary to decimal
def check(xd,yd,xd1,yd1):
    if xd != 0:
        k = int(math.log(xd, 2))  
        x= 2**k   
        if x ==32768:
            x_value= -32768 + xd1
        else:
            x_value= 0 + xd1
    else:
        x_value =0
    if yd != 0:
        k = int(math.log(yd, 2))  
        y= 2**k   
        if y ==32768:
            y_value= -32768 + yd1
        else:
            y_value= 0 + yd1
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