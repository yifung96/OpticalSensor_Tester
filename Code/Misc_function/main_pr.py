# -*- coding: utf-8 -*-
"""
Created on Fri Jul 19 10:45:05 2019

@author: yf_choong
"""

import usb.core
import usb.util
import sys

def create_dev(idProduct):
    
    dev=usb.core.find(idVendor=0x192F, idProduct=idProduct)
    if dev is None:
        raise ValueError('device not found')
    else:
        print('device found')
        print("ProductID=", idProduct)
    dev.set_configuration()
        
    endpoint=dev[0][(0,0)][0]
    data=None
    while True:
        try:
            dev.read(endpoint.bEndpointAddress, endpoint.wMaxPacketSize)
            print (data)
            
        except usb.core.USBError as e:
            data=None
            if e.args==('Operation timed out',):
                print("Error")
                continue
            
#if __name__=='__create_dev()':
    #create_dev()