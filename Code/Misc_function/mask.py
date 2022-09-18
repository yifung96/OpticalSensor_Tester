# -*- coding: utf-8 -*-
"""
Created on Fri Jul 26 11:22:54 2019

@author: yf_choong
"""
import numpy as np
import matplotlib.pyplot as plt
import math
def mask(a):
    mask = 1<<3
    xd1=(a &~ mask)|(0<<3)
    print(xd1)
    
def t():
    foo = (1, 2, 3)
    bar = (4, 5, 6)
    for f, b in zip(foo, bar):
        print(f, b)
        
def add():
    a=0
    b=[]
    bnew=[]
    p=0
    for i in range (0,6):
        b = a + 1
        bnew=b+p
        p+=b
        a+=1
        print(b,bnew)
a1=[]
b1=[]     
def c():
    b=0
    for i in range(5):
        a=b + 1
        b+=a
        a1.append(a)
        b1.append(b)
    plt.plot(a1,b1)
    plt.show()
    print("end")
        
def w():
    r=4
    arc=math.pi*r*20/180
    print(arc)
       
       
        
