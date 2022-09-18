# -*- coding: utf-8 -*-
"""
Created on Mon Jul 22 10:57:41 2019

@author: yf_choong
"""

import usb.core
import usb.util

def r(addr_full):
    
    dev=usb.core.find(idVendor=0x192f, idProduct=0x00)
    addr = addr_full & 127
    data=dev.ctrl_transfer(0xc0,1,0,addr,1,timeout=5000)
    print(hex(data[0]).replace('0x',''))
     
        
                        
   