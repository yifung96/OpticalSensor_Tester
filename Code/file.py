# -*- coding: utf-8 -*-
"""
Created on Mon Aug  5 16:08:38 2019

@author: yf_choong
"""
import pathlib
from time import gmtime,strftime
import xlsxwriter
from IPython import get_ipython

def cf():
    e=str(input())
    pathlib.Path('/Users/yf_choong/Desktop/Test_result/'+e).mkdir(parents=True,exist_ok=True)
    
def r():
    d='/Users/yf_choong/Desktop/Test_result/'
    sf=open(d + "Surface_type.txt","r+")
    data=sf.readlines()
    count=0
    for line in enumerate(data,0):
        print (line)
        count+=1
    n=int(input())
    if n>=0 and n<count:
        print(data[n])
    else:
        print("Invalid")
        while True:
             n=int(input())
             if n>=0 and n<count:
                 break
             else:
                 print("Invalid")
        print(data[n])
    sf.close()
    
def w():
    d='/Users/yf_choong/Desktop/Test_result/'
    surface_type= open(d + "test.txt", "a+") 
    d=2
    e=4
    new1=1 + 1
    new2=str(input())
    new3=(new1,  d,  e)
    new4="dgdhdhhdhd"
    surface_type.write("{}\n".format(new4))
    surface_type.write("{}\n".format("\n"))
    surface_type.write("{}\n".format(new3))
    surface_type.close()
    
def get():
    d='/Users/yf_choong/Desktop/Test_result/'
    sf=open(d + "Surface_type.txt","r+")
    line=sf.readlines()
    n=int(input())
    print(line[n])
    sf.close()

def t():
    time=strftime("%y%m%d%H%M%S",gmtime())
    print(time)

c=[]    
def excel():
    a=0
    for i in range (10):
        b=a + 1
        c.append(b)
        a+=1
    d='/Users/yf_choong/Desktop/Test_result/' 
    a=open(d,"w+")
    workbook=xlsxwriter.Workbook(d+'Test.xlsx')
    worksheet=workbook.add_worksheet()
    row=0
    col=0
    
    for item in (c):
        worksheet.write(row,col,item)
        row+=1
    worksheet.write(row,0,'=SUM(A1:A10)')
    workbook.close()
    a.close()
h=[]    
def run():
    v=int(input())
    count=0
    if count!=v:
        g=[]
        while True:
            a=0
            print(count)
            for i in range (10):
                b=a + 1
                g.append(b)
                a+=1
            count+=1
            print(g)
            if count==v:
                break
        print(g)
        print(count)
        j=1
        print(g[j])
        print("done")
    else:
        print("bye")
    return
def g():
    while True:
        get=inputNum("Enter number:" )
        if get>0 and get<4:
            print("answer is",get)
            break
        else:
            print("Error")
            continue
    
    return

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
           