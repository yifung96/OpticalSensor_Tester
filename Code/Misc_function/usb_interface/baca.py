# -*- coding: utf-8 -*-
"""
Created on Tue Jul 23 10:42:52 2019

@author: yf_choong
"""

import usb.core
import usb.util
import time
p=[]
def main():
    out1,out2,out3,out4=rd()
    print('')
    print(out1,out2,out3,out4)
    print('')
    T= out1 + out2 + out3 + out4
    total=int(T,16)
    if total !=0:
        while True:
            out1,out2,out3,out4=rd()
            T= out1 + out2 + out3 + out4
            total=int(T,16)
            if total==0:
                break
        print(out1,out2,out3,out4)
    else:
        print(out1,out2,out3,out4)
    out1,out2,out3,out4=rd()
    T= out1 + out2 + out3 + out4
    total=int(T,16)
    #Assuming moving
    if total==0:
        while True:
            print('Moving')
            time.sleep(3)
            out1,out2,out3,out4=rd()
            T= out1 + out2 + out3 + out4
            total=int(T,16)
            if total ==0:
                break
        print('cutoff height')
        
def rd():
    dev=usb.core.find(idVendor=0x192f, idProduct=0x00)
    if dev is None:
        raise ValueError('Device not found')
    else:
        print('Found')
        r=2
        for i in range (5):
           
            if r==3 :
                addr = r & 127
                data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
                out1=hex(data[0]).replace('0x','')
                print('DxR',r,out1)
                dx.append(out1)
                r+=1
            elif r==4 :
                addr = r & 127
                data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
                out2=hex(data[0]).replace('0x','')
                print('DxR',r,out2)
                dx.append(out2)
                r+=1
            elif r==5 :
                addr = r & 127
                data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
                out3=hex(data[0]).replace('0x','')
                print('DyR',r,out3)
                dy.append(out3)
                r+=1
            elif r==6 :
                addr = r & 127
                data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
                out4=hex(data[0]).replace('0x','')
                print('DyR',r,out4)
                dy.append(out4)
                r+=1
            else:
                addr = r & 127
                data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
                r+=1
       
    return (out1,out2,out3,out4)
dx=[]
dy=[]