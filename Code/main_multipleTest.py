# -*- coding: utf-8 -*-
"""
Created on Fri Aug  9 14:43:03 2019

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

def main():
    idProduct=create_dev()
    amt=initsys()
    new_dir=create_folder()
    surface_type,thickness=get_surface(amt)
    loop_main=0
    if loop_main!=amt:
        si=0
        ti=0
        while True:
            ts=str(thickness[ti])
            surface=surface_type[si]
            sub_dir=create_subfolder(new_dir,loop_main,surface,ts)
            print('')
            print("Process Begin")
            print("Test Surface: ",surface_type[si])
            print("Thickness: ",thickness[ti])
            tn=thickness[ti]
            run(idProduct,tn,sub_dir,new_dir)
            time.sleep(3)
            plt.close(fig='all') 
            loop_main+=1
            si+=1
            ti+=1
            if loop_main==amt:
                break
            reloop()
        time.sleep(1)
        Overall_Note(amt,surface_type,thickness,new_dir)
        plt.close(fig='all')
        print("Process End")
        reset()
        get_ipython().magic('reset -s')
    else:
        print("System Error")
        get_ipython().magic('reset -s')
        sys.exit()
###############################################################################
#Void Function   (Initial Process) 
def create_dev():
    idProduct=int(input("Enter Product id: "))
    dev=usb.core.find(idVendor=0x192f, idProduct=idProduct)
    if dev is None:
        raise ValueError('Device not found')
    else:
        print('Device Found')
        print("idProduct=",idProduct)
        print("idVendor=0x192f") 
    return(idProduct)
    
def initsys():
    #print("Enter amount of the surface to be tested: (1-4)")
    amt=int(input("Enter amount of the surface to be tested: (1-4)" ))
    if amt<1 or amt>4:
        print("Invalid Input")
        while True:
            amt=int(input())
            if amt>0 and amt<5:
                break
            print("Invalid Input")
        print("Total test: ",amt)
    else:
        print("Total test: ",amt)
    return(amt)
    
def create_folder():
    c_time=strftime("%y%m%d%H%M%S",gmtime())
    #print("Enter filename: ")
    filename=str(input("Enter filename: "))
    pathlib.Path('/Users/yf_choong/Desktop/Test_result/'+c_time+filename).mkdir(parents=True,exist_ok=True)
    new_dir=str('/Users/yf_choong/Desktop/Test_result/'+c_time+filename)
    return(new_dir)
    
def create_subfolder(new_dir,loop_main,surface,ts):
    number=str(loop_main)
    pathlib.Path(new_dir+'/Test'+number+'_'+surface+ts).mkdir(parents=True,exist_ok=True)
    sub_dir=str(new_dir+'/Test'+number+'_'+surface+ts+'/')
    return(sub_dir)
    
def get_surface(amt):
    surface_type=[]
    thickness=[]
    count1=0
    if count1!=amt:
        while True:
            print("Enter Surface",count1,":")
            s=str(input())
            surface_type.append(s)
            t=int(input("Enter Mat Thickness: "))
            if t<0 or t>5:
                print("Invalid Thickness")
                while True:
                    t=int(input())
                    if t>=0 and t<=5:
                        break
                    print("Invalid Thickness")
                thickness.append(t)
            else:
                thickness.append(t)
            count1+=1
            if count1 ==amt:
                break
    else:
            print("Process Error")
    return(surface_type,thickness)
    
def reloop():
    swift.set_servo_angle(servo_id=1,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=0,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=2,angle=5,speed=10000)
    print("Place/Change mat")
    mat=str(input("Press C to continue "))
    if mat=='C' or mat=='c':
        print("Restart in 2s")
        time.sleep(2)
    else:
        print("Invalid")
        while True:
             mat=str(input("Press C to continue "))
             if mat=='C' or mat=='c':
                 break
             else:    
                 print("Invalid")
        print("Restart in 2s")
        time.sleep(2)
    return
def reset():
    swift.set_servo_angle(servo_id=1,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=0,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=2,angle=5,speed=10000)
    return
###############################################################################
#Void Function (RUN)
def run(idProduct,tn,sub_dir,new_dir):
    init_z,arc,init_angle=iniz(tn)
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
        a_Z_angle=[]    
        a_height=[]
        a_dpi=[]
        a_dx=[]
        a_dy=[]
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
                total,acc,a_dx,a_dy=swing(idProduct,a_dx,a_dy)
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
        time.sleep(1)
        print("Processing data.......")
        data(sub_dir,idProduct,a_height,a_dpi,a_dx,a_dy,a_Z_angle)
        #f5=o_plot(new_dir,a_height,a_dpi)
        time.sleep(1)
        display(init_z,count,idProduct,sub_dir)
        time.sleep(1)
    else:
        print("System Error")
        get_ipython().magic('reset -s')
        sys.exit()
    return
#Supporting Functions for RUN
def iniz(tn):
    init_angle= 15.9 - (tn* 0.4)
    swift.set_servo_angle(servo_id=1,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=0,angle=90,speed=10000)
    swift.set_servo_angle(servo_id=2,angle=init_angle,speed=10000)
    swift.flush_cmd(wait_stop=True)
    time.sleep(7)
    e=sg()
    init_z=e[2]
    radius=e[0]
    arc=round(((math.pi*radius*27/180)/25.4),4)
    print("Z initial=",init_z," units")
    return (init_z,arc,init_angle)

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

a_zs=[]
a_Y_angle=[]
def swing(idProduct,a_dx,a_dy):
    k0=0
    k1=0
    x1=[]
    y1=[]
    swift.set_servo_angle(servo_id=0,angle=63,speed=15000)
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
    swift.set_servo_angle(servo_id=0,angle=90,speed=15000)
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
    swift.set_servo_angle(servo_id=0,angle=117,speed=15000)
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
    swift.set_servo_angle(servo_id=0,angle=90,speed=15000)
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
    return(total,acc,a_dx,a_dy)    

def mask(xd,yd):
    mask = 1<<15
    xd1=(xd &~ mask)|(0<<15)
    mask = 1<<15
    yd1=(yd &~ mask)|(0<<15)
    return (xd1,yd1)

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
#Void Function (Data Collection)
def data(sub_dir,idProduct,a_height,a_dpi,a_dx,a_dy,a_Z_angle):
    excel(sub_dir,a_height,a_dpi,a_dx,a_dy,a_Z_angle)
    time.sleep(1)
    plot(sub_dir,a_height,a_dpi,a_dx,a_dy,a_Z_angle)
    time.sleep(1)
    return()
#Supporting Functions 
def display(init_z,count,idProduct,sub_dir):
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
     name1=os.path.abspath(sub_dir+"_Data.txt")
     data_file=open(name1,"a+")
     data1="1.Initial Z  2.Final Z  3.Cutoff Height  (in mm)"
     data2=(init_z,   h[2],    cutoff_height)
     data_file.write("{}\n".format(data1))
     data_file.write("{}\n".format("\n"))
     data_file.write("{}\n".format(data2))
     data_file.close
     return
def Overall_Note(amt,surface_type,thickness,new_dir):
    data_file=open(new_dir+"/overall_Data.txt","a+")
    data3=("Total Test: ", amt)
    data4=(surface_type)
    data5=(thickness)
    data_file.write("{}\n".format(data3))
    data_file.write("{}\n".format("\n"))
    data_file.write("{}\n".format(data4))
    data_file.write("{}\n".format(data5))
    data_file.close 
    return
def plot(sub_dir,a_height,a_dpi,a_dx,a_dy,a_Z_angle):
    plt.figure(1)
    plt.title('DPI vs Height')
    plt.xlabel('Height/mm')
    plt.ylabel('DPI')
    plt.plot(a_height,a_dpi)
    plt.show()
    plt.savefig(sub_dir+"dpi_mm.png")
    plt.figure(2)
    plt.title('DPI vs Count')
    plt.plot(a_dpi)
    plt.savefig(sub_dir+"dpi_count.png")
    plt.figure(3)
    plt.title('Z-axis angle')
    plt.plot(a_Z_angle)
    plt.savefig(sub_dir+"Z_angle.png")
    plt.figure(4)
    plt.title('Delta XY')
    plt.subplot(211)
    plt.plot(a_dx)
    plt.subplot(212)
    plt.plot(a_dy)
    plt.savefig(sub_dir+"DeltaXY.png")
    return
def o_plot(new_dir,a_height,a_dpi):
    f5=plt.figure(5)
    plt.title('DPI vs Height')
    plt.xlabel('Height/mm')
    plt.ylabel('DPI')
    plt.plot(a_height,a_dpi)
    plt.show()
    plt.savefig(new_dir+"/Overall_dpi.png")
    return(f5)
def excel(sub_dir,a_dpi,a_height,a_dx,a_dy,a_Z_angle):
    name2=os.path.abspath(sub_dir+"mm_Result.xlsx")
    workbook=xlsxwriter.Workbook(name2)
    worksheet=workbook.add_worksheet()
    title=['DPI','Height','Delta X','Delta Y','Servo[2]Angle_Z-axis']
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
    for data_6 in (a_Z_angle):
        worksheet.write(row,4,data_6)
        row+=1
    workbook.close()
    return