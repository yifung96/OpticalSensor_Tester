# -*- coding: utf-8 -*-
"""
Created on Tue Aug  6 09:49:08 2019

@author: yf_choong
"""
import os
import sys
import time
import matplotlib.pyplot as plt
import usb.core
import usb.util
sys.path.append(os.path.join(os.path.dirname(__file__), '../../..'))
from uarm.wrapper import SwiftAPI
import math
import pathlib
import xlsxwriter
from time import gmtime,strftime
from IPython import get_ipython
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
###############################################################################
#Main Program

a_Z_angle=[]    
a_height=[]
a_dpi=[]

def run(idProduct):
    create_dev(idProduct)
    new_dir=create_folder()
    #Initialise uarm
    print('')
    init_z,arc,init_angle=iniz()
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
            swift.set_servo_angle(servo_id=2,angle=init_angle - t,speed=10000)
            time.sleep(0.5)
            f=ss()
            a_Z_angle.append(f[2])
            g=sg()
            z_diff=(g[2]-init_z)*0.662878
            a_height.append(z_diff)
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
            if add_swing==0 and ave_displacement==0:
                break
        display(init_z,count,idProduct,new_dir)
        excel(new_dir)
        plot(new_dir)
        time.sleep(3)
        plt.close(fig='all')
        get_ipython().magic('reset -s')
        return
    else:
        print("Error")
###############################################################################
#Void Functions
#Reset Arm position (servo 0,1)            
#check initial heigth   
def iniz():
    print("Enter mat thickness:  (2dp in mm)")
    tn=float(input())
    if tn>=10 or tn<0:
        print("Invalid Input")
        while True:
            tn=float(input())
            if tn>=4 or tn<0:
                print("Invalid Input")
            else:
                break
    init_angle= 15.9 - (tn* 0.4)
    swift.set_servo_angle(servo_id=1,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=0,angle=67.5,speed=10000)
    swift.set_servo_angle(servo_id=2,angle=init_angle,speed=10000)
    swift.flush_cmd(wait_stop=True)
    time.sleep(7)
    e=sg()
    init_z=e[2]
    radius=e[0]
    arc=round(((math.pi*radius*20/180)/25.4),4)
    print(arc,radius)
    print("Z initial=",init_z," units")
    return (init_z,arc,init_angle)
#create folder in directory
def create_folder():
    time=strftime("%y%m%d%H%M%S",gmtime())
    print("Enter filename: ")
    filename=str(input())
    pathlib.Path('/Users/yf_choong/Desktop/Test_result/'+time+filename).mkdir(parents=True,exist_ok=True)
    new_dir='/Users/yf_choong/Desktop/Test_result/'+time+filename
    return(new_dir)
#Display Result
def display(init_z,count,idProduct,new_dir):
     h=sg()
     cutoff_height=round(((h[2]-init_z)*0.662878),4)
     dx1,dx2,dy1,dy2,total=rd2(idProduct)
     xf=dx2+dx1
     yf=dy2+dy1
     print('')
     print("Final Position: ","X=",xf,"Y=",yf)
     print("Z final= ",h[2]," units")
     print("Cutoff height= ",cutoff_height," mm")
     print("Iteration: ",count)
     data_file=open(new_dir+"/Data.txt","a+")
     data1="1.Initial Z  2.Final Z  3.Cutoff Height  (in mm)"
     data2=(init_z,   h[2],    cutoff_height)
     data_file.write("{}\n".format(data1))
     data_file.write("{}\n".format("\n"))
     data_file.write("{}\n".format(data2))
     data_file.close
     return
#Plot
def plot(new_dir):
    plt.figure(1)
    plt.title('DPI vs Height')
    plt.xlabel('Height/mm')
    plt.ylabel('DPI')
    plt.plot(a_height,a_dpi)
    plt.show()
    plt.savefig(new_dir+"/dpi_mm.png")
    plt.figure(2)
    plt.title('DPI vs Count')
    plt.plot(a_dpi)
    plt.savefig(new_dir+"/dpi_count.png")
    plt.figure(3)
    plt.title('YZ-axis angle')
    plt.subplot(211)
    plt.plot(a_Y_angle)
    plt.subplot(212)
    plt.plot(a_Z_angle)
    plt.savefig(new_dir+"/Angles.png")
    plt.figure(4)
    plt.title('Delta XY')
    plt.subplot(211)
    plt.plot(a_dx)
    plt.subplot(212)
    plt.plot(a_dy)
    plt.savefig(new_dir+"/DeltaXY.png")
    return
#Save data to excel
def excel(new_dir):
    workbook=xlsxwriter.Workbook(new_dir+"/Result.xlsx")
    worksheet=workbook.add_worksheet()
    title=['DPI','Height','Delta X','Delta Y','Servo[0]Angle_Y-axis','Servo[2]Angle_Z-axis']
    row=0
    col=0
    for item in (title):
        worksheet.write(row,col,item)
        col +=1
    row=1
    for data_1 in (a_dpi):
        worksheet.write(row,0,data_1)
        row+=1
    row=1
    for data_2 in (a_height):
        worksheet.write(row,1,data_2)
        row+=1
    row=1
    for data_3 in (a_dx):
        worksheet.write(row,2,data_3)
        row+=1
    row=1
    for data_4 in (a_dy):
        worksheet.write(row,3,data_4)
        row+=1
    row=1
    for data_5 in (a_Y_angle):
        worksheet.write(row,4,data_5)
        row+=1
    row=1
    for data_6 in (a_Z_angle):
        worksheet.write(row,5,data_6)
        row+=1
    workbook.close()
    return

#Swing mouse left and right 
#Collecting mouse displacement while moving
a_Y_angle=[]
a_zs=[]
def swing(idProduct):
    k0=0
    k1=0
    x1=[]
    y1=[]
    swift.set_servo_angle(servo_id=0,angle=47.5,speed=15000)
    for l in range (0,23):
        e=sg()
        a_zs.append(e[2])
        f=ss()
        a_Y_angle.append(f[0])
        x_value,y_value=rd(idProduct)
        x1=x_value + k0
        k0+=x_value
        y1=y_value + k1
        k1+=y_value
        a_dx.append(x1)
        a_dy.append(y1)
    swift.set_servo_angle(servo_id=0,angle=67.5,speed=15000)
    k2=0
    k3=0
    x2=[]
    y2=[]
    for l in range (0,23):
        e=sg()
        a_zs.append(e[2])
        f=ss()
        a_Y_angle.append(f[0])
        x_value,y_value=rd(idProduct)
        x2=x_value + k2
        k2+=x_value
        y2=y_value + k3
        k3+=y_value
        a_dx.append(x2)
        a_dy.append(y2)
    swift.set_servo_angle(servo_id=0,angle=87.5,speed=15000)
    x3=[]
    y3=[]
    k4=0
    k5=0
    for l in range (0,23):
       e=sg()
       a_zs.append(e[2])
       f=ss()
       a_Y_angle.append(f[0])
       x_value,y_value=rd(idProduct)
       x3=x_value + k4
       k4+=x_value
       y3=y_value + k5
       k5+=y_value
       a_dx.append(x3)
       a_dy.append(y3)
    swift.set_servo_angle(servo_id=0,angle=67.5,speed=15000)
    k6=0
    k7=0
    x4=[]
    y4=[]
    for l in range (0,23):
       e=sg()
       a_zs.append(e[2])
       f=ss()
       a_Y_angle.append(f[0])
       x_value,y_value=rd(idProduct)
       x4=x_value + k6
       k6+=x_value
       y4=y_value + k7
       k7+=y_value
       a_dx.append(x4)
       a_dy.append(y4)
    hyp1=math.sqrt((math.pow(x1,2))+(math.pow(y1,2)))
    hyp2=math.sqrt((math.pow(x2,2))+(math.pow(y2,2)))
    hyp3=math.sqrt((math.pow(x3,2))+(math.pow(y3,2)))
    hyp4=math.sqrt((math.pow(x4,2))+(math.pow(y4,2)))
    acc=round((abs(hyp1)+abs(hyp2)+abs(hyp3)+abs(hyp4)),4)
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
def reset():
    swift.set_servo_angle(servo_id=1,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=0,angle=67.5,speed=10000)
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