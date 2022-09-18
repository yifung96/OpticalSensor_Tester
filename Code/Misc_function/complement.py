# -*- coding: utf-8 -*-
"""
Created on Thu Jul 25 13:18:28 2019

@author: yf_choong
"""
import math

def main():
    a=str(11111100)
    n=len(a)
    i=n - 1
    while i >= 0:
        if (a[i]=='1'):
            break
        i -= 1
    if i== -1:
        return '1'+a
    k=i - 1
    while k>=0:
        if(a[k]=='1'):
            a = list(a)
            a[k]='0'
            a=''.join(a)
            
        else:
            a = list(a)
            a[k]='1'
            a=''.join(a)
        k -=1
    print(a)
    print(int(a,2))
   
def setBitNumber(n): 
      
    k = int(math.log(n, 2))  
    n2= 2**k   
    print(n2) 
    print(n)