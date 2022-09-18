# -*- coding: utf-8 -*-
"""
Created on Mon Aug 26 08:52:56 2019

@author: yf_choong
"""

import os
import sys
import time
import matplotlib.pyplot as plt
import usb.core #usb module from github
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
###############################################################################
#Main Program
const=0.8
ang=13.7
def main(): 
    #Request Product ID
    idProduct=create_dev()
    #Request update in system database, Y=Yes Any key=No   
    update_data()
    ite,choice=mode(idProduct)
    if choice==1:
        if choice!=1:
            print ("Error")
        calibrate(idProduct)
    else:
        #Create a new directory for the tests
        new_dir=create_folder(choice)
        #Obtain the type of surface for each test     
        test=get_surface(ite)
        #Confirm with the choices made      
        test=confirm(test,ite)
        if choice==2:
            while True: 
                s_height=float(input("Enter Sweep Height (2~4)mm off ground: "))
                if s_height>=2 and s_height<=4:
                    break
                else:
                    print("Invalid")
                    continue
            sweep(idProduct,ite,test,new_dir,s_height)
        elif choice==3:
            loop_main=0 
            #Initial servo[2] angle location            
            angle_rot=22.5
            #The program is to be looped 4 times to carry out tests on 4 diff surfaces          
            while loop_main<ite:
                sf=str(test[loop_main]) 
                number=str(loop_main)
                #Create subfolder to contain result data for the test
                sub_dir=create_subfolder(new_dir,number) 
                print('')
                print('************* Test: Cut-off Height *****************')
                print("Process Begin")
                print("Test ",number)
                print("Surface Type: ",sf)
                #Function to carry out the required test on each surface
                run(sf,angle_rot,sub_dir,idProduct) 
                time.sleep(0.5)
                #Close all plottings
                plt.close(fig='all')    
                print('')
                angle_rot+=45
                loop_main+=1
                pause()
                swift.set_servo_angle(servo_id=1,angle=90,speed=10000)
                swift.set_servo_angle(servo_id=2,angle=5,speed=10000)
            ext_plot(new_dir)
            plt.close(fig='all')
            print('')
    print("****************** Process End ***********************")
    #Reset robotic arm position
    reset()
    #Clear global values
    clear()
    return
###############################################################################
#Void Function 
#All k (k2,k3 etc) refer to constant/ temporary variable to store value
#All count refer to variable which function as counter
#Create device by getting product id, using 'Find' function from 'Core' module
def create_dev():
    print("**************** INITIALISE ****************")
    idProduct=inputNum("Enter Product id: ")
    dev=usb.core.find(idVendor=0x192f, idProduct=idProduct)
    if dev is None:
        raise ValueError('Device not found')
    else:
        print('Device Found')
        print("idProduct=",idProduct)
        print("idVendor=0x192f") 
        print('')
    return(idProduct)
#To update the list of available test surface in database (txt file in folder)
def update_data():
    print("**************** UPDATE DATABASE ******************")
    print("This program test on 4 different surfaces.")
    print("Loading database")
    #Open text file and read
    data_file=open('/Users/yf_choong/Desktop/Result_data/Test_surface.txt',"r+")
    surface_type=data_file.readlines()
    #Read every line and enumerate the line
    for line in enumerate(surface_type,0):
        print(line)
    data_file.close()
    while True:
        #Exit loop once user is done with updating the database
        k1=input("Update surface option? (Yes=Y or Any button to exit update)" )
        if k1=='Y' or k1=='y':
            data_file=open('/Users/yf_choong/Desktop/Result_data/Test_surface.txt',"a+")
            new_surface=str(input("Enter New Surface: " ))
            #Update the database
            data_file.write("{}\n".format(new_surface))
            data_file.close
            continue
        else:
            print("Exit update")
            break
    data_file=open('/Users/yf_choong/Desktop/Result_data/Test_surface.txt',"r+")
    surface_type=data_file.readlines()
    print("Available test surfaces: ")
    for line in enumerate(surface_type,0):
        print(line)
    data_file.close()
    return
#Function to create folder which will contain all the result data obtained 
#Folder name is unique as current time is included in filename
def create_folder(choice):
    if choice==2:
        tname='_sweep'
    else:
        tname='_cutoff'
    current_time=strftime("%y%m%d%H%M%S",gmtime())
    print("******************* NEW FOLDER *************************")
    fn=str(input("Enter filename: "))
    filename=fn+tname
    print('')
    #mkdir is used to make/create directories
    pathlib.Path('/Users/yf_choong/Desktop/Result_data/'+current_time+filename).mkdir(parents=True,exist_ok=True)
    new_dir=str('/Users/yf_choong/Desktop/Result_data/'+current_time+filename+'/')
    print("Directory: ",new_dir)
    print('')
    return(new_dir)  
#function to create subfolder which will be saved into the main directory created    
def create_subfolder(new_dir,number):
    pathlib.Path(new_dir+'test'+number).mkdir(parents=True,exist_ok=True)
    sub_dir=str(new_dir+'test'+number+'/')
    return(sub_dir)

def mode(idProduct):
    print('')
    print("************** Select mode ****************")
    print("1. Calibrate Robotic Arm")
    print("2. Sweep Height (2-4mm)")
    print("3. Cut-off Height")
    while True:
        choice=inputNum("Choice Index: ")
        if choice>0 and choice<4:
            break
        else:
            print("Invalid option")
            continue
    if choice==2 or choice==3:
        while True:
            ite=inputNum("No. of iteration: ")
            if ite>0 and ite<5:
                break
            else:
                print("Invalid option")
                continue
    else:
        ite=1
    return(ite,choice)    
        
#Function to get the mat_surface type users intended to test on with the usb mouse
#Program obtain 4 type of surface details for test
#test is a list which contain surface_type to be tested (string)    
def get_surface(ite):
    print("************** INPUT TEST SURFACES ******************")
    data_file=open('/Users/yf_choong/Desktop/Result_data/Test_surface.txt',"r+")
    surface_type=data_file.readlines()
    count2=0
    #list out the surface_type from database
    for line in enumerate(surface_type,0):
        print(line)
        count2+=1
    k3=count2 
    print("Enter Surface Index: ")
    print('')
    #Create list of selections for test => test
    test=[]
    count3=0
    for i in range(ite):
        while True:
            print("Surface",count3,":",end='')
            k4=inputNum('' )
            if k4>=0 and k4<k3:
                k5=surface_type[k4]
                print(k5)
                test.append(k5)
                count3+=1
                break
            else:
                print("Invalid")
                continue
    return(test)
#Ensure that the input obtained is integer and prevent program exit due to error
def inputNum(num):
    while True:
        try:
            userinput=int(input(num))
        except ValueError:
            print("Not an integer, try again")
            continue
        else:
            return(userinput)
            break
#To confirm users'selections
def confirm(test,ite):
    #List users' selections
    #Request confirmation
    while True:
        print("Surface Selections: ")
        for line in enumerate(test,0):
            print(line)
        ans=input("Confirm with order and selection? (N=No,Any_key=Yes)" )
        if ans=='N' or ans=='n':
            while True:
                #get input on the surface which user intended to make change
                ans2=inputNum("Index number of selection to be updated: ")
                print('')
                print("Available test surfaces: ")
                if ans2>=0 and ans2<ite:
                    data_file=open('/Users/yf_choong/Desktop/Result_data/Test_surface.txt',"r+")
                    surface_type=data_file.readlines()
                    for line2 in enumerate(surface_type,0):
                        print(line2)
                    while True:
                        #get input of new surface which user intended to replace with
                        ans3=inputNum("Index number of new surface: ")
                        if ans2>=0 and ans2<ite:
                            nsf=surface_type[ans3]
                            test[ans2]=nsf
                            break
                        else:
                            print("Invalid")
                            continue
                    data_file.close()
                    break
                else:
                    print("Invalid")
                    continue
            continue
        else:
            #list out the updated surface details before proceeeding to test
            for line in enumerate(test,0):
                 print(line)
            return(test)
            break
#Function to reset robotic arm to initial position        
def reset():
    #servo id 1 = stretch
    swift.set_servo_angle(servo_id=1,angle=90,speed=30000)
    #servo id 0 = rotation
    swift.set_servo_angle(servo_id=0,angle=90,speed=30000)
    #servo id 2 = height
    swift.set_servo_angle(servo_id=2,angle=5,speed=10000)
    return

#Plot global variables
def ext_plot(new_dir):
    plt.figure(1)
    plt.title('DPI')
    plt.xlabel('Iteration')
    plt.ylabel('DPI')
    plt.plot(dpiG)
    plt.show()
    plt.savefig(new_dir+"Overall_DPI.png")
    plt.figure(2)
    plt.title('Average Displacement')
    plt.ylabel('Ave_Disp.')
    plt.plot(ave_disp)
    plt.savefig(new_dir+"Overall_Displacement.png")
    plt.figure(3)
    plt.title('Servo[0] rotation angle')
    plt.ylabel('Angle')
    plt.plot(Yangle)
    plt.savefig(new_dir+"servo[0]_angle.png")
    plt.figure(4)
    plt.title('DX_DY')
    plt.subplot(211)
    plt.plot(dx)
    plt.subplot(212)
    plt.plot(dy)
    plt.savefig(new_dir+"DeltaXY.png")
    return
#Pause the program before proceeding to next test
def pause():
    while True:
        pause=input("Pause (c for continue) " )
        if pause=='C' or pause=='c':
            break
        else:
            continue
    return

def calibrate(idProduct):
    print("System calibrating.......")
    reset()
    swift.set_servo_angle(servo_id=2,angle=ang,speed=10000)
    swift.flush_cmd(wait_stop=True)
    time.sleep(5)
    b=sg()
    initz3=b[2]
    reset()
    while True:
        dx1,dx2,dy1,dy2,total=rd2(idProduct)
        if total==0:
            break
    time.sleep(0.5)
    t=0
    while True:
        swift.set_servo_angle(servo_id=0,angle=92,speed=20000)
        swift.set_servo_angle(servo_id=0,angle=88,speed=20000)
        swift.set_servo_angle(servo_id=0,angle=90,speed=20000)
        swift.flush_cmd(wait_stop=True)
        dx1,dx2,dy1,dy2,total=rd2(idProduct)
        if total==0:
            swift.set_servo_angle(servo_id=2,angle=10+t,speed=10000)
            t+=0.08
            continue
        else:
            break
    swift.flush_cmd(wait_stop=True)
    time.sleep(0.5)
    a=sg()
    app_height=round(((a[2]-initz3)*const),2)
    print("Approximate Cut-off height:",app_height)
    swift.set_servo_angle(servo_id=2,angle=5,speed=10000)
    swift.flush_cmd(wait_stop=True)
    angle_rot2=22.5
    counta=0
    while counta<4:
        swift.set_servo_angle(servo_id=0,angle=angle_rot2,speed=30000)
        swift.set_servo_angle(servo_id=2,angle=ang,speed=10000)
        swift.set_servo_angle(servo_id=2,angle=5,speed=10000)
        angle_rot2+=45
        counta+=1
    swift.set_servo_angle(servo_id=2,angle=ang,speed=10000)
    swift.set_servo_angle(servo_id=0,angle=22.5,speed=20000)
    swift.flush_cmd(wait_stop=True)
    return

def sweep(idProduct,ite,test,new_dir,s_height):
    reset()
    print('')
    print('************* Test: Sweep Height *****************')
    loop_main2=0
    angle_rot=22.5
    while loop_main2<ite:
        sf=str(test[loop_main2]) 
        number=str(loop_main2)
        sub_dir=create_subfolder(new_dir,number) 
        print("Process Begin")
        print("Test ",number)
        print("Surface Type: ",sf)
        swift.set_servo_angle(servo_id=0,angle=angle_rot,speed=30000)
        swift.set_servo_angle(servo_id=2,angle=ang,speed=10000)
        swift.flush_cmd(wait_stop=True)
        time.sleep(2)
        a=sg()
        initz2=a[2]
        print("Initial z: ",initz2)
        arc2=round(((math.pi*180*18/180)/25.4),4)
        s_z=(s_height/const)+initz2
        dpi2=[]
        b_dx=[]
        b_dy=[]
        height2=[]
        H5=[]
        height_angle2=[]
        countt=0
        while True:
            swift.flush_cmd(wait_stop=True)
            time.sleep(1)
            t3=0
            if countt>0:
                H3=H5[0]
                h_a2=height_angle2[0]
            while True:
                if countt==0:
                    swift.set_servo_angle(servo_id=2,angle=ang-t3,speed=7500)
                    time.sleep(0.1)
                    while True:
                        a=ss()
                        ha=a[2]
                        h=sg()
                        H4=h[2]
                        if H4==initz2:
                            break
                    break
                else:
                    swift.set_servo_angle(servo_id=2,angle=h_a2-t3,speed=7500)
                    time.sleep(0.3)
                    h=sg()
                    Hc1=h[2]
                    a=ss()
                    haa=a[2]
                    t3+=0.02
                    if Hc1-H3>0.05 and h_a2-haa>0.05 :
                         ha=haa
                         H4=Hc1
                         break
                    elif Hc1-H3>0.05 and h_a2-haa<0.05 :
                        t3+=0.01
                        continue
                    elif Hc1-H3>0.2:
                        ha=haa
                        H4=Hc1
                        break
                    else:
                        t3+=0.01
                        continue 
            swift.flush_cmd(wait_stop=True)
            time.sleep(0.1)
            height_angle2.clear()
            height_angle2.append(ha)
            H5.clear()
            z_diff2=round(((H4-initz2)*const),2)
            height2.append(z_diff2)
            H5.append(H4)
            print(H4,ha,z_diff2)
            loop2=0
            k8=0
            #Robotic arm is to be swing 6 times
            while loop2<4:
                #move the robot arm left and right 
                total,acc,b_dx,b_dy=swing(idProduct,b_dx,b_dy,angle_rot,ha)
                #Accumulate the total displacement 
                acc_swing=acc + k8
                k8+=acc
                loop2+=1
            #Obtain average displacement
            ave_displacement2= round((acc_swing/4),4)
            ave_disp.append(ave_displacement2)
            #Calculation of dpi value
            dpi=round((ave_displacement2/(2*arc2)),4)
            dpi2.append(dpi)
            dpiG.append(dpi)
            print(dpi,ave_displacement2)
            dff=H4-s_z
            if dff<0.08 and dff>-0.08:
                break
            elif dff>0.08:
                break
            else:
                t3+=0.05
                countt+=1
                continue
        sw=round(((H4-initz2)*const),2)
        print("Sweep Height: ",sw )
        swift.set_servo_angle(servo_id=2,angle=5,speed=10000)
        print("Processing data......")
        plot2(dpi2,height2,sub_dir)
        excel2(dpi2,height2,sub_dir,b_dx,b_dy)
        time.sleep(1)
        plt.close('all')
        angle_rot+=45
        loop_main2+=1
        pause()
    return

def plot2(dpi2,height2,sub_dir):
    plt.figure(1)
    plt.title('DPI vs Height')
    plt.xlabel('Height/mm')
    plt.ylabel('DPI')
    plt.plot(height2,dpi2)
    plt.show()
    plt.savefig(sub_dir+"dpi_mm.png")
    plt.figure(2)
    plt.title('DPI vs Count')
    plt.plot(dpi2)
    plt.savefig(sub_dir+"dpi_count.png")
    return

def excel2(dpi2,height2,sub_dir,b_dx,b_dy):
    name3=os.path.abspath(sub_dir+"_Result.xlsx")
    workbook=xlsxwriter.Workbook(name3)
    worksheet=workbook.add_worksheet()
    title=['Height','DPI','Delta X','Delta Y']
    row=0
    col=0
    for item in (title):
        worksheet.write(row,col,item)
        col +=1
    row=1
    for data_1 in (dpi2):
        worksheet.write(row,0,data_1)
        row+=1
    row=1
    for data_2 in (height2):
        worksheet.write(row,1,data_2)
        row+=1
    row=1
    for data_3 in (b_dx):
        worksheet.write(row,2,data_3)
        row+=1
    row=1
    for data_4 in (b_dy):
        worksheet.write(row,3,data_4)
        row+=1
    workbook.close()
    return     
#Clear the global values in variable explorer
def clear():
    Yangle.clear()
    ave_disp.clear()
    dpiG.clear()
    dx.clear()
    dy.clear()
    return

def findh():
    reset()
    while True: 
        s_height=float(input("Enter Sweep Height (0~6)mm off ground: "))
        if s_height>=0 and s_height<=6:
            break
        else:
            print("Invalid")
            continue
    swift.set_servo_angle(servo_id=0,angle=90,speed=30000)
    swift.set_servo_angle(servo_id=2,angle=ang,speed=10000)
    swift.flush_cmd(wait_stop=True)
    time.sleep(2)
    a=sg()
    initz3=a[2]
    print("Initial z: ",initz3)
    s_z=round((s_height/const)+initz3,3)
    print("Appx. z: ",s_z)
    t9=0
    while True:
        swift.set_servo_angle(servo_id=2,angle=ang-t9,speed=10000)
        swift.flush_cmd(wait_stop=True)
        b=sg()
        hh=b[2]
        dff=hh-s_z
        if dff<0.08 and dff>-0.08:
            break
        elif dff<-0.05:
            t9+=0.01
            continue
        else:
            break
    ah=round(((hh-initz3)*const),3)
    d=ss()
    anh=round(d[2],3)
    print("Curr. z: ",hh)
    print("Height(mm): ",ah,"Angle: ",anh)
    return
############################ 'Run' Function ###################################
#Global variable is defined
dpiG=[] #DPI of usb mouse
dx=[]   #Delta X of usb mouse
dy=[]   #Delta Y of usb mouse
ave_disp=[]
Yangle=[]
#'run' function as the main program for usb mouse test
def run(sf,angle_rot,sub_dir,idProduct):
    #Initialise robotic arm position
    init_z,arc=initz(angle_rot)
    #read usb register to ensure 0 is obtained (no displacement recorded)
    while True:
        dx1,dx2,dy1,dy2,total=rd2(idProduct)
        if total==0:
            break
    print("Set Position: ",dx2+dx1,dy2+dy1)
    #total = summation of values recorded from the usb registers
    if total == 0:
        count1=0
        b_height=[] #height of robotic arm recorded      
        b_dpi=[]    #dpi recorded from usb mouse registry
        b_dx=[]     #Delta-X recorded from usb mouse registry
        b_dy=[]     #Delta-Y recorded from usb mouse registry
        H=[]
        height_angle=[]
        while True:
            #At angle of 13.7, usb mouse is ~0mm from surface, robot arm (cont)
            #repeatedly increase height until the usb mouse record 0 
            #Get position, built-in function from uarm
            swift.flush_cmd(wait_stop=True)
            time.sleep(1)
            t2=0
            if count1>0:
                H1=H[0]
                h_a=height_angle[0]
            while True:
                if count1==0:
                    swift.set_servo_angle(servo_id=2,angle=ang-t2,speed=7500)
                    time.sleep(0.1)
                    ha=ang
                    H2=init_z
                    break
                else:
                    swift.set_servo_angle(servo_id=2,angle=h_a-t2,speed=10000)
                    time.sleep(0.2)
                    a=ss()
                    haa=a[2]
                    h=sg()
                    Hc=h[2]
                    t2+=0.01
                    if Hc-H1>0.05 and h_a-haa>0.05 :
                         ha=haa
                         H2=Hc
                         break
                    elif Hc-H1>0.05 and h_a-haa<0.05 :
                        t2+=0.01
                        continue
                    elif Hc-H1>0.2:
                        ha=haa
                        H2=Hc
                        break
                    else:
                        t2+=0.01
                        continue 
            time.sleep(0.5)
            H.clear()
            height_angle.clear()
            z_diff=round(((H2-init_z)*const),2)
            height_angle.append(ha)
            print(z_diff,ha,H2)
            b_height.append(z_diff)
            H.append(H2)
            count1+=1
            loop=0
            k7=0
            #Robotic arm is to be swing 4 times
            while loop<4:
                #move the robot arm left and right 
                total,acc,b_dx,b_dy=swing(idProduct,b_dx,b_dy,angle_rot,ha)
                #Accumulate the total displacement 
                acc_swing=acc + k7
                k7+=acc
                loop+=1
            #Obtain average displacement
            ave_displacement= round((acc_swing/4),4)
            ave_disp.append(ave_displacement)
            #Calculation of dpi value
            dpi=round((ave_displacement/(2*arc)),4)
            b_dpi.append(dpi)
            dpiG.append(dpi)
            if ave_displacement==0:
                break
        time.sleep(0.5)
        print("Processing data.......")
        #function to generate excel file and plots
        data(sub_dir,idProduct,b_height,b_dpi,b_dx,b_dy)
        #Function to write data obtained into text file and display final result
        display(sf,init_z,count1,idProduct,sub_dir)
        time.sleep(1)
    else:
        print("System Error")
        get_ipython().magic('reset -s')
        sys.exit()
    return
#Initialise robot arm position
def initz(angle_rot):
    swift.set_servo_angle(servo_id=1,angle=90,speed=50000)
    swift.set_servo_angle(servo_id=0,angle=angle_rot,speed=50000)
    swift.set_servo_angle(servo_id=2,angle=ang,speed=10000)
    swift.flush_cmd(wait_stop=True)
    time.sleep(5)
    e=sg()
    init_z=e[2]
    radius=205
    #calculation of arc (mouse movement left right),/25.4 =>convert unit(~mm) to inches
    arc=round(((math.pi*radius*18/180)/25.4),4)
    print("Z initial=",init_z," units")
    return (init_z,arc)
#Read values registered from usb mouse using control transfer 
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
#Read values registered from usb mouse using control transfer and convert them to count
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
    #x and y are in hex, convert to dec
    x=dx2+dx1
    y=dy2+dy1
    xd=int(x,16)
    yd=int(y,16)
    xd1,yd1=mask(xd,yd)
    x_value,y_value=check(xd,yd,xd1,yd1)
    return(x_value,y_value)
#To mask the MSB of the value 
def mask(xd,yd):
    mask = 1<<15
    xd1=(xd &~ mask)|(0<<15)
    mask = 1<<15
    yd1=(yd &~ mask)|(0<<15)
    return (xd1,yd1)
#To check the sign of the delta x (dx), delta y (dy) and return true magnitude 
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
#To move the mouse left and right
def swing(idProduct,b_dx,b_dy,angle_rot,ha):
    swift.set_servo_angle(servo_id=2,angle=ha,speed=10000)
    swift.set_servo_angle(servo_id=0,angle=(angle_rot- 18),speed=15000)
    swift.flush_cmd(wait_stop=True)
    while True:
        dx1,dx2,dy1,dy2,total=rd2(idProduct)
        if total==0:
            break
    time.sleep(0.5)
    k10=0
    k11=0
    x2=[]
    y2=[] 
    
    swift.set_servo_angle(servo_id=0,angle=angle_rot+ 18,speed=15000)
    for l in range (0,50):
        f=ss()
        Yangle.append(f[0])
        x_value,y_value=rd(idProduct)
        #Collect accumulated value
        x2=x_value + k10
        k10+=x_value
        y2=y_value + k11
        k11+=y_value
        #Collect data and store in a list
        b_dx.append(x2)
        b_dy.append(y2)
        dx.append(x2)
        dy.append(y2)
    swift.flush_cmd(wait_stop=True)
    time.sleep(0.5)
    swift.set_servo_angle(servo_id=0,angle=angle_rot,speed=15000)
    swift.flush_cmd(wait_stop=True)
    time.sleep(0.5)
    #Calculate hypothenus for delta x and delta y
    hyp2=math.sqrt((math.pow(x2,2))+(math.pow(y2,2)))
    acc=round((abs(hyp2)),4)
    dx1,dx2,dy1,dy2,total=rd2(idProduct) 
    return(total,acc,b_dx,b_dy)  
#Void function for data collection    
def data(sub_dir,idProduct,b_height,b_dpi,b_dx,b_dy):
    excel(sub_dir,b_height,b_dpi,b_dx,b_dy)
    time.sleep(1)
    plot(sub_dir,b_height,b_dpi,b_dx,b_dy)
    time.sleep(1)
    return()
#Generate excel file to store data   
def excel(sub_dir,b_dpi,b_height,b_dx,b_dy):
    name2=os.path.abspath(sub_dir+"mm_Result.xlsx")
    workbook=xlsxwriter.Workbook(name2)
    worksheet=workbook.add_worksheet()
    title=['Height','DPI','Delta X','Delta Y']
    row=0
    col=0
    for item in (title):
        worksheet.write(row,col,item)
        col +=1
    row=1
    for data_1 in (b_dpi):
        worksheet.write(row,0,data_1)
        row+=1
    row=1
    for data_2 in (b_height):
        worksheet.write(row,1,data_2)
        row+=1
    row=1
    for data_3 in (b_dx):
        worksheet.write(row,2,data_3)
        row+=1
    row=1
    for data_4 in (b_dy):
        worksheet.write(row,3,data_4)
        row+=1
    workbook.close()
    return
#Plot result and save in folder
def plot(sub_dir,b_height,b_dpi,b_dx,b_dy):
    plt.figure(1)
    plt.title('DPI vs Height')
    plt.xlabel('Height/mm')
    plt.ylabel('DPI')
    plt.plot(b_height,b_dpi)
    plt.show()
    plt.savefig(sub_dir+"dpi_mm.png")
    plt.figure(2)
    plt.title('DPI vs Count')
    plt.plot(b_dpi)
    plt.savefig(sub_dir+"dpi_count.png")
    plt.figure(3)
    plt.title('Delta XY')
    plt.subplot(211)
    plt.plot(b_dx)
    plt.subplot(212)
    plt.plot(b_dy)
    plt.savefig(sub_dir+"DeltaXY.png")
    return
#Display final result and generate notes in txt file
def display(sf,init_z,count1,idProduct,sub_dir):
     h=sg()
     #0.8 as constant and 0.05 to reduce error
     cutoff_height=round(((h[2]-init_z)*const),2)
     dx1,dx2,dy1,dy2,total=rd2(idProduct)
     xf=dx2+dx1
     yf=dy2+dy1
     print('')
     print("Final Position: ","X=",xf,"Y=",yf)
     print("Z final= ",h[2]," units")
     print("Cutoff height= ",cutoff_height," mm")
     print("Iteration: ",count1)
     name1=os.path.abspath(sub_dir+"_Data.txt")
     data_file=open(name1,"a+")
     data0=("Test:",sf)
     data1="1.Initial Z  2.Final Z  3.Cutoff Height  (in mm)"
     data2=(init_z,   h[2],    cutoff_height)
     data_file.write("{}\n".format(data0))
     data_file.write("{}\n".format("\n"))
     data_file.write("{}\n".format(data1))
     data_file.write("{}\n".format("\n"))
     data_file.write("{}\n".format(data2))
     data_file.close
     return