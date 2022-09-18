# -*- coding: utf-8 -*-
"""
Created on Mon Jul 22 13:51:59 2019

@author: yf_choong
"""

import usb.core
import usb.util

def cd(idProduct):    
    dev=usb.core.find(idVendor=0x192f, idProduct=idProduct)
    if dev is None:
        raise ValueError('Device not found')
    else:
        print('Found')
        print('VID= 0x192f')
        print('PID=',idProduct)
        
        while True:
            opt=input("Function: ")
            if opt==('r'or'R'):
                addr_full=int(input('Address: '))
                addr=addr_full & 127
                data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
                print(hex(addr),hex(data[0]))
                print(data)
                break
            if opt==('w'or'W'):
                addr_full=int(input('Address: '))
                data=int(input('data: '))
                addr = addr_full & 127 
                out = data*256 + addr
                dev.ctrl_transfer(0x40, 1, 0, out)
                break
            elif opt==('e'or'E'):
                print('Exit')
                return
                
            else:
                print('Invalid')
       
            
        
