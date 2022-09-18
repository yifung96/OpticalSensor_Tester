# -*- coding: utf-8 -*-
"""
Created on Fri Jul 19 15:19:49 2019

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
    collected=0
    attempts=50
    while collected<attempts:
        try:
            data=dev.read(endpoint.bEndpointAddress,endpoint.wMaxPacketSize)
            collected +=1
            print(data)
        except usb.core.USBError as e:
            data=None
            if e.args==('Operation timed out',):
                continue
   