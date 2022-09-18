# -*- coding: utf-8 -*-
"""
Created on Wed Aug 28 11:36:10 2019

@author: yf_choong
"""

import sys
import os
import time
import matplotlib.pyplot as plt
import usb.core 
import usb.util
import tkinter as tk
from tkinter import messagebox
sys.path.append(os.path.join(os.path.dirname(__file__), '../../..'))
import pathlib
import math
from time import gmtime,strftime
import xlsxwriter
from uarm.wrapper import SwiftAPI
from IPython import get_ipython
"""
api test: move
"""
#swift = SwiftAPI(filters={'hwid': 'USB VID:PID=2341:0042'})
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
LARGE_FONT= ("Verdana", 12)
global new_dir

class SeaofBTCapp(tk.Tk):
    
    def __init__(self, *args, **kwargs):
        tk.Tk.__init__(self, *args, **kwargs)
        container = tk.Frame(self)
        container.pack(side="top", fill="both", expand = True)
        container.grid_rowconfigure(0, weight=1)
        container.grid_columnconfigure(0, weight=1)
        self.frames = {}
        for F in (StartPage, Update, Mode, CreateFol, Calibration, Sweep_height, Cutoff_height, 
                  get_surface, Sh_run, Ch_run):
            frame = F(container, self)
            self.frames[F] = frame
            frame.grid(row=0, column=0, sticky="nsew")
        self.show_frame(StartPage)
    def show_frame(self, cont):
        frame = self.frames[cont]
        frame.tkraise()

class StartPage(tk.Frame):
    
    def __init__(self, parent, controller):
        
        def cont(e1):
            try:
                E1=int(e1)
            except ValueError:
                messagebox.showerror("Error", "Not an integer")
            else:
                create_dev(E1)
                print("create_dev--OK")
        tk.Frame.__init__(self,parent)
        tk.Label(self, text="Create Device", font=LARGE_FONT).grid(row=0)
        tk.Label(self,text="Enter Product ID").grid(row=5)
        e1=tk.Entry(self)
        e1.grid(row=5, column=1)
        button = tk.Button(self, text="Locate",
                            command=lambda: cont(e1.get()))
        button.grid(row=8,column=1,sticky=tk.W,pady=4)
        button2 = tk.Button(self, text="Quit",
                            command=lambda: app.destroy())
        button2.grid(row=8,column=2,sticky=tk.W,pady=4)
    
        def create_dev(E1):
            global idProduct
            idProduct=E1
            dev=usb.core.find(idVendor=0x192f, idProduct=idProduct)
            if dev is None:
                raise ValueError('Device not found')
                messagebox.showwarning('Error','Device not found:Exit application')
                app.destroy()
            else:
                print('Device Found')
                print("idProduct=",idProduct)
                print("idVendor=0x192f") 
                print('')
                messagebox.showinfo("Note","Device Found")
                controller.show_frame(Update)
            return
        
class Update(tk.Frame):

    def __init__(self, parent, controller):
        def cont_es(e1):
            new_surface=write(e1)
            msg2='New surface updated: '+str(new_surface)
            tk.messagebox.showinfo('Note',msg2)
            print("New Surface:",new_surface)
            dblist.delete(0,'end')
            read()
            self.e1.delete(0,'end')
            return
        def read():
            data_file=open('/Users/yf_choong/Desktop/Result_data/Test_surface.txt',"r+")
            surface_type=data_file.readlines()
            for line in enumerate(surface_type,0):
                dblist.insert('end',line)
            data_file.close()
            
        tk.Frame.__init__(self, parent)
        tk.Label(self, text="Review Database", font=LARGE_FONT)
        tk.Label(self,text="Enter New Surface").grid(row=5)
        self.e1=tk.Entry(self)
        self.e1.grid(row=6, column=1)
        button1 = tk.Button(self, text="Update and Save",
                            command=lambda: cont_es(self.e1.get()))
        button1.grid(row=8,column=1,sticky=tk.W,pady=4)
        button2 = tk.Button(self, text="Next",
                            command=lambda: controller.show_frame(Mode))
        button2.grid(row=8,column=2,sticky=tk.W,pady=4)
        tk.Label(self,text="Available Test Surfaces in database").grid(row=50)
        lower_frame=tk.Frame(self,bg='#ffffff', bd=10)
        lower_frame.place(relx=0.5, rely=0.25, relwidth=0.75, relheight=0.6, anchor='n')
        scroll=tk.Scrollbar(lower_frame)
        scroll.pack(side='right',fill='y')
        dblist=tk.Listbox(lower_frame,yscrollcommand= scroll.set)
        read()
        dblist.place(relx=0.35, rely=0.2, relwidth=0.7, relheight=0.6, anchor='n')
        scroll.config(command=dblist.yview)
        def write(e1):
            data_file=open('/Users/yf_choong/Desktop/Result_data/Test_surface.txt',"a+")
            new_surface=str(e1)
            data_file.write("{}\n".format(new_surface))
            data_file.close
            return(new_surface)
            
class Mode(tk.Frame):

    def __init__(self, parent, controller):
        def onselect():
            global mode
            selection=self.tlist.curselection()
            for item in selection:
                mode=item
            print("Mode: ",mode,"--OK")
            msgm2='Confirm Selection:'+str(mode)+'?'
            msgm3 = tk.messagebox.askquestion ('Note',msgm2)
            if msgm3 == 'yes':
                if mode==0:
                    controller.show_frame(Calibration)
                else:
                    controller.show_frame(CreateFol)
            else:
                tk.messagebox.showinfo('Return','Return to selection') 
        def cont1():
            msgm = tk.messagebox.askquestion ('Exit','Are you sure you want to exit the application',icon = 'warning')
            if msgm == 'yes':
                app.destroy()
            else:
                tk.messagebox.showinfo('Return','Return to previous screen') 
                
        tk.Frame.__init__(self, parent)
        tk.Label(self, text="Select Mode", font=LARGE_FONT).grid(row=0)
        self.tlist=tk.Listbox(self,selectmode='single')
        self.tlist.insert(1,"Calibrate System")
        self.tlist.insert(2,"Sweep Height Test (range: 2 - 4mm)")
        self.tlist.insert(3,"Cut-off Height Test")
        self.tlist.place(relx=0.5, rely=0.25, relwidth=0.5, relheight=0.3, anchor='center')
        button1 = tk.Button(self, text="Select",
                            command=lambda: onselect())
        button1.place(relx=0.5, rely=0.5, anchor='center')
        button2 = tk.Button(self, text="Back",
                            command=lambda: controller.show_frame(Update))
        button2.place(relx=0.6, rely=0.5, anchor='center')
        button3 = tk.Button(self, text="Cancel",
                            command=lambda: cont1())
        button3.place(relx=0.7, rely=0.5, anchor='center')
                
class Calibration(tk.Frame):

    def __init__(self, parent, controller):
        def cont():
            msgc = tk.messagebox.askquestion ('Exit','Are you sure you want to exit the application',icon = 'warning')
            if msgc == 'yes':
                app.destroy()
            else:
                tk.messagebox.showinfo('Return','Return to previous screen') 
        def cont2():
            tk.messagebox.showinfo('Note','Start Calibration') 
            app_height=calibrate(idProduct)
            msgc2='Appx. cutoff height(mm): '+str(app_height)
            tk.messagebox.showinfo('Complete',msgc2)
            
        tk.Frame.__init__(self, parent)
        tk.Label(self, text="Calibration", font=LARGE_FONT).grid(row=0)
        button1 = tk.Button(self, text="Run",
                            command=lambda: cont2())
        button1.place(relx=0.5, rely=0.5, anchor='center')
        button2 = tk.Button(self, text="Back",
                            command=lambda: controller.show_frame(Mode))
        button2.place(relx=0.6, rely=0.5, anchor='center')  
        button3 = tk.Button(self, text="Exit",
                            command=lambda: cont())
        button3.place(relx=0.7, rely=0.5, anchor='center')
        
        def calibrate(idProduct):
            print("System calibrating.......")
            functions().reset()
            swift.set_servo_angle(servo_id=2,angle=13.7,speed=10000)
            swift.flush_cmd(wait_stop=True)
            time.sleep(5)
            b=sg()
            initz3=b[2]
            functions().reset()
            while True:
                dx1,dx2,dy1,dy2,total=functions().rd2(idProduct)
                if total==0:
                    break
            time.sleep(0.5)
            t=0
            while True:
                swift.set_servo_angle(servo_id=0,angle=92,speed=20000)
                swift.set_servo_angle(servo_id=0,angle=88,speed=20000)
                swift.set_servo_angle(servo_id=0,angle=90,speed=20000)
                swift.flush_cmd(wait_stop=True)
                dx1,dx2,dy1,dy2,total=functions().rd2(idProduct)
                if total==0:
                    swift.set_servo_angle(servo_id=2,angle=10+t,speed=10000)
                    t+=0.08
                    continue
                else:
                    break
            swift.flush_cmd(wait_stop=True)
            time.sleep(0.5)
            a=sg()
            app_height=round(((a[2]-initz3)*0.8),2)
            print("Approximate Cut-off height:",app_height)
            swift.set_servo_angle(servo_id=2,angle=5,speed=10000)
            swift.flush_cmd(wait_stop=True)
            angle_rot2=22.5
            counta=0
            while counta<4:
                swift.set_servo_angle(servo_id=0,angle=angle_rot2,speed=30000)
                swift.set_servo_angle(servo_id=2,angle=14,speed=10000)
                swift.set_servo_angle(servo_id=2,angle=5,speed=10000)
                angle_rot2+=45
                counta+=1
            swift.set_servo_angle(servo_id=2,angle=13.7,speed=10000)
            swift.set_servo_angle(servo_id=0,angle=22.5,speed=20000)
            functions().reset()
            swift.flush_cmd(wait_stop=True)
            return(app_height)

class CreateFol(tk.Frame):
   
    def __init__(self, parent, controller):
        
        def cont(e1):
            E1=e1.get()
            new_dir=create_folder(E1)
            e1.delete(0,tk.END)
            print("Directory: ",new_dir, "--Ok")
            messagebox.showinfo("Note","Folder created")
            if mode==1:
                controller.show_frame(Sweep_height)
            elif mode==2:
                controller.show_frame(Cutoff_height)
        def cont2():
            if mode==1:
                controller.show_frame(Sweep_height)
            elif mode==2:
                controller.show_frame(Cutoff_height)
        tk.Frame.__init__(self, parent)
        tk.Label(self, text="Create Folder", font=LARGE_FONT).grid(row=0)
        tk.Label(self,text="Enter Filename").grid(row=5)
        e1=tk.Entry(self)
        e1.grid(row=5, column=1)
        button = tk.Button(self, text="Save",
                            command=lambda: cont(e1))
        button.grid(row=8,column=1,sticky=tk.W,pady=4)
        button2 = tk.Button(self, text="Back",
                            command=lambda: cont2())
        button2.grid(row=8,column=2,sticky=tk.W,pady=4)
        
        def create_folder(E1):
            if mode==1:
                tname='_sweep'
            elif mode==2:
                tname='_cutoff'
            filename=str(E1)+tname
            current_time=strftime("%y%m%d%H%M%S",gmtime())
            pathlib.Path('/Users/yf_choong/Desktop/Result_data/'+current_time+filename).mkdir(parents=True,exist_ok=True)
            global new_dir
            new_dir=str('/Users/yf_choong/Desktop/Result_data/'+current_time+filename+'/')
            return (new_dir)
            
class Sweep_height(tk.Frame):

    def __init__(self, parent, controller):
        def cont():
            msgs = tk.messagebox.askquestion ('Exit','Are you sure you want to exit the application',icon = 'warning')
            if msgs == 'yes':
                os.rmdir(new_dir)
                app.destroy()
            else:
                tk.messagebox.showinfo('Return','Return to previous screen')
        def cont2(e1,e2):
            try:
                global ite
                ite=int(e1)
            except ValueError:
                messagebox.showerror("Error", "Not an integer")
                self.e1.delete(0,tk.END)
                self.e2.delete(0,tk.END)
                controller.show_frame(Sweep_height)
            else:
                print("Function OK", ite)
                if ite>0 and ite<5:
                    self.e1.delete(0,tk.END)
                    try:
                        global sh
                        sh=float(e2)
                    except ValueError:
                        messagebox.showerror("Error", "Not a float variable")
                        self.e2.delete(0,tk.END)
                        controller.show_frame(Sweep_height)
                    else:
                        if sh>=2 and sh<=4:
                            self.e2.delete(0,tk.END)
                            controller.show_frame(get_surface)
                        else:
                            messagebox.showerror("Error", "Value Inappropriate")
                            self.e2.delete(0,tk.END)
                            controller.show_frame(Sweep_height)
                else:
                    messagebox.showerror("Error", "Value Inappropriate")
                    self.e1.delete(0,tk.END)
                    controller.show_frame(Sweep_height)
            return    
            print(new_dir)
            controller.show_frame(Mode)
        def cont3():
            os.rmdir(new_dir)
            controller.show_frame(Mode)
            
        tk.Frame.__init__(self, parent)
        tk.Label(self, text="Sweep Height Test", font=LARGE_FONT).grid(row=0)
        tk.Label(self,text="No of Test (1-4)").place(relx=0.2, rely=0.2, anchor='center')
        tk.Label(self,text="Sweep Range (2-4mm)").place(relx=0.2, rely=0.3, anchor='center')
        self.e1=tk.Entry(self)
        self.e1.place(relx=0.6, rely=0.2, anchor='center')
        self.e2=tk.Entry(self)
        self.e2.place(relx=0.6, rely=0.3, anchor='center')
        button1 = tk.Button(self, text="Setting:Run",
                            command=lambda: cont2(self.e1.get(),self.e2.get()))
        button1.place(relx=0.6, rely=0.6, anchor='center')
        button2 = tk.Button(self, text="Back",
                            command=lambda: cont3())
        button2.place(relx=0.6, rely=0.5, anchor='center')  
        button3 = tk.Button(self, text="Exit",
                            command=lambda: cont())
        button3.place(relx=0.7, rely=0.5, anchor='center')
        
class Sh_run(tk.Frame):

    def __init__(self, parent, controller):
        
        def run():
            messagebox.showinfo("Note", "Start Test")
            lari=functions()
            lari.RUN()
            fdisplay()
            clear()
            return
        
        tk.Frame.__init__(self, parent)
        tk.Label(self, text="Sweep Height Test", font=LARGE_FONT).grid(row=0)
        self.dpflist=tk.Listbox(self,selectmode='single')
        self.dpflist.place(relx=0.5, rely=0.5, relwidth=0.5, relheight=0.4, anchor='s')
        button1 = tk.Button(self, text="Mode",command=lambda: controller.show_frame(Mode))
        button1.place(relx=0.6, rely=0.7, anchor='w')
        button2 = tk.Button(self, text="Exit",command=lambda: app.destroy())
        button2.place(relx=0.6, rely=0.8, anchor='nw')
        button = tk.Button(self, text="Run",command=lambda: run())
        button.place(relx=0.6, rely=0.6, anchor='nw')
       
        def fdisplay():
            self.dpflist.insert("Sweep Height Test - Range(mm) "+str(sh))
            for display in (sfs):
                self.dpflist.insert('end',display)
            return
        def clear():
            Yangle.clear()
            ave_disp.clear()
            dpiG.clear()
            dxG.clear()
            dyG.clear()
            sf.clear()
            sfs.clear()
            chG.clear()
            return
sf=[]  
sfs=[]  
class get_surface(tk.Frame):

    def __init__(self, parent, controller):
        def read():
            data_file=open('/Users/yf_choong/Desktop/Result_data/Test_surface.txt',"r+")
            surface_type=data_file.readlines()
            for line in enumerate(surface_type,0):
                self.sflist.insert('end',line)
            data_file.close()
        def onselect1():
            data_file=open('/Users/yf_choong/Desktop/Result_data/Test_surface.txt',"r+")
            surface_type=data_file.readlines()
            surface=self.sflist.curselection()
            if len(surface)==ite:
                for item in surface:
                    sf.append(item)
                    sfa=str(surface_type[item])
                    sfs.append(sfa)
                print("Option: ",sf,"--OK")
                print("Surface: ",sfs,"--OK")
                for display in (sfs):
                    self.dplist.insert('end',display)
                msgs = tk.messagebox.askquestion ('Note','Confirm Selections?')
                if msgs == 'yes':
                    if mode==1:
                        controller.show_frame(Sh_run)
                    elif mode==2:
                        controller.show_frame(Ch_run)
                else:
                    sf.clear()
                    sfs.clear()
                    self.dplist.delete(0,'end')
                    tk.messagebox.showinfo('Return','Return to previous screen')
            else:
                messagebox.showerror("Error", "Inappropriate amount of selections")
                controller.show_frame(get_surface)
        def cont():
            if mode==1:
                controller.show_frame(Sweep_height)
            elif mode==2:
                controller.show_frame(Cutoff_height)
            return
        tk.Frame.__init__(self, parent)
        tk.Label(self, text="Input Test Surfaces (Select in order)", font=LARGE_FONT).grid(row=0)
        upper_frame=tk.Frame(self,bg='#f2f2f2', bd=10)
        upper_frame.place(relx=0.5, rely=0.5,relwidth=0.6, relheight=0.4, anchor='s')
        scroll=tk.Scrollbar(upper_frame, width=10)
        scroll.pack(side='right',fill='y')
        self.sflist=tk.Listbox(upper_frame, yscrollcommand= scroll.set, selectmode='multiple')
        read()
        self.sflist.place(relx=0.5,rely=0.5,relwidth=0.8, relheight=0.7, anchor='center')
        scroll.config(command=self.sflist.yview)
        button1 = tk.Button(self, text="Select",command=lambda: onselect1())
        button1.place(relx=0.6, rely=0.6, anchor='w')
        button2 = tk.Button(self, text="Back",command=lambda: cont())
        button2.place(relx=0.6, rely=0.7, anchor='nw')
        self.dplist=tk.Listbox(self,selectmode='single')
        self.dplist.place(relx=0.5, rely=0.5, relwidth=0.4, relheight=0.4, anchor='ne')
        
class Cutoff_height(tk.Frame):

    def __init__(self, parent, controller):
        def cont1(e1):
            try:
                global ite
                ite=int(e1)
            except ValueError:
                messagebox.showerror("Error", "Not an integer")
                self.e1.delete(0,tk.END)
                controller.show_frame(Cutoff_height)
            else:
                print("Function OK", ite)
                if ite>0 and ite<5:
                    self.e1.delete(0,tk.END)
                    controller.show_frame(get_surface)
                else:
                    messagebox.showerror("Error", "Value Inappropriate")
                    self.e1.delete(0,tk.END)
                    controller.show_frame(Cutoff_height)
            return    
        def cont2():
            os.rmdir(new_dir)
            controller.show_frame(Mode)
            return
        def cont3():
            msgs = tk.messagebox.askquestion ('Exit','Are you sure you want to exit the application',icon = 'warning')
            if msgs == 'yes':
                os.rmdir(new_dir)
                app.destroy()
            else:
                tk.messagebox.showinfo('Return','Return to previous screen')
            return
        
        tk.Frame.__init__(self, parent)
        tk.Label(self, text="Cut-off Height Test", font=LARGE_FONT).grid(row=0)
        tk.Label(self,text="No of Test (1-4)").place(relx=0.2, rely=0.2, anchor='center')
        self.e1=tk.Entry(self)
        self.e1.place(relx=0.6, rely=0.2, anchor='center')
        button1 = tk.Button(self, text="Setting:Run",
                            command=lambda: cont1(self.e1.get()))
        button1.place(relx=0.6, rely=0.6, anchor='center')
        button2 = tk.Button(self, text="Back",
                            command=lambda: cont2())
        button2.place(relx=0.6, rely=0.5, anchor='center')  
        button3 = tk.Button(self, text="Exit",
                            command=lambda: cont3())
        button3.place(relx=0.7, rely=0.5, anchor='center')
        
class Ch_run(tk.Frame):

    def __init__(self, parent, controller):
        def cont():
            msgs = tk.messagebox.askquestion ('Exit','Are you sure you want to exit the application',icon = 'warning')
            if msgs == 'yes':
                os.rmdir(new_dir)
                app.destroy()
            else:
                tk.messagebox.showinfo('Return','Return to previous screen')
            return
        def run():
            messagebox.showinfo("Note", "Start Test")
            lari=functions()
            lari.RUN()
            fdisplay()
            clear()
            return
        tk.Frame.__init__(self, parent)
        tk.Label(self, text="Cut-off Height Test", font=LARGE_FONT).grid(row=0)
        self.dpflist=tk.Listbox(self,selectmode='single')
        self.dpflist.place(relx=0.5, rely=0.5, relwidth=0.5, relheight=0.4, anchor='s')
        button1 = tk.Button(self, text="Mode",command=lambda: controller.show_frame(Mode))
        button1.place(relx=0.6, rely=0.7, anchor='w')
        button2 = tk.Button(self, text="Exit",command=lambda: cont())
        button2.place(relx=0.6, rely=0.8, anchor='nw')
        button = tk.Button(self, text="Run",command=lambda: run())
        button.place(relx=0.6, rely=0.6, anchor='nw')
        
        def fdisplay():
            self.dpflist.insert(0,"Cutoff Height Test ")
            for display in (sfs):
                self.dpflist.insert('end',display)
            for heig in (chG):
                self.dpflist.insert('end',heig)
                #self.dpflist.insert('end',chG[display])
            return
        def clear():
            Yangle.clear()
            ave_disp.clear()
            dpiG.clear()
            dxG.clear()
            dyG.clear()
            sf.clear()
            sfs.clear()
            chG.clear()
            return
app = SeaofBTCapp()
app.title("USB Mouse Test")
app.geometry("450x450")
app.mainloop()

chG=[]
dpiG=[]    
ave_disp=[]
Yangle=[]
dxG=[]
dyG=[]
class functions():
    const=0.8
    ang=13.7
    #def __init__(self,initz,sub_dir,ha,num,dpi,dx,dy,count,height,h_diff):
        #self.initz=initz
        #self.sub_dir=sub_dir
      #  self.ha=ha
       # self.num=num
        #self.dpi=dpi
       # self.dx=dx
       # self.dy=dy
       # self.count=count
       # self.height=height
       # self.h_diff=h_diff
        
    def RUN(self):
        self.reset()
        swift.flush_cmd(wait_stop=True)
        if mode==1:
            rname='Sweep Height Test'
        elif mode==2:
            rname='Cut-off Height Test'
        loop_main=0
        angle_rot=22.5
        while loop_main<ite:
            s=str(sfs[loop_main])
            num=str(loop_main)
            sub_dir=self.create_subfolder(new_dir,num)
            print("Process Begin: ",rname)
            print("Test ",num)
            print("Surface Type: ",s)
            self.reset()
            swift.set_servo_angle(servo_id=0,angle=angle_rot,speed=30000)
            swift.set_servo_angle(servo_id=2,angle=self.ang,speed=10000)
            swift.flush_cmd(wait_stop=True)
            time.sleep(5)
            arc,initz=self.init_step()
            dx1,dx2,dy1,dy2,total=self.rd2(idProduct)
            if total !=0:
                while True:
                    dx1,dx2,dy1,dy2,total=self.rd2(idProduct)
                    if total==0:
                        break
                print("Set Position: ",dx2+dx1,dy2+dy1)
            else:
                print("Set Position: ",dx2+dx1,dy2+dy1) 
            dx1,dx2,dy1,dy2,total=self.rd2(idProduct)
            if total == 0:
                dpi=[]
                dx=[]
                dy=[]
                height=[]
                H0=[]
                height_angle=[]
                count=0
                while True:
                    time.sleep(0.3)
                    t=0
                    if count>0:
                        H1=H0[0]
                        ha1=height_angle[0]
                    while True:
                        if count==0:
                            swift.set_servo_angle(servo_id=2,angle=self.ang-t,speed=7500)
                            time.sleep(0.1)
                            ha=self.ang-t
                            H2=initz
                            break
                        else:
                            swift.set_servo_angle(servo_id=2,angle=ha1-t,speed=7500)
                            time.sleep(0.3)
                            h=sg()
                            H3=h[2]
                            a=ss()
                            haa=a[2]
                            if H3-H1>0.05 and ha1-haa>0.05 :
                                ha=haa
                                H2=H3
                                break
                            elif H3-H1>0.05 and ha1-haa<0.05 :
                                t+=0.02
                                continue
                            elif H3-H1>0.2:
                                ha=haa
                                H2=H3
                                break
                            else:
                                t+=0.02
                                continue 
                    time.sleep(0.1)
                    H0.clear()
                    height_angle.clear()
                    height_angle.append(ha)
                    H0.append(H2)
                    h_diff=round(((H2-initz)*self.const),2)
                    height.append(h_diff)
                    print(ha,H2,h_diff)
                    loop=0
                    k8=0
                    while loop<4:
                        total,acc,dx,dy=self.swing(idProduct,dx,dy,angle_rot,ha)
                        acc_swing=acc+k8
                        k8+=acc
                        loop+=1
                    ave_displacement= round((acc_swing/4),4)
                    ave_disp.append(ave_displacement)
                    dpi2=round((ave_displacement/(2*arc)),4)
                    dpi.append(dpi2)
                    if mode==1:
                        dff=h_diff-sh
                        if dff<0.08 and dff>-0.08:
                            break
                        else:
                            count+=1
                            continue
                    elif mode==2:
                        if ave_displacement==0:
                            break
                        else:
                            count+=1
                            continue
                time.sleep(0.5)
                print("Processing data.......")
                self.excel(sub_dir,dpi,height,dx,dy)
                time.sleep(0.5)
                self.plot(sub_dir,height,dpi,dx,dy)
                time.sleep(0.5)
                self.display(s,initz,count,idProduct,sub_dir,h_diff)
                time.sleep(0.5)
            else:
                print("System Error")
                get_ipython().magic('reset -s')
                sys.exit()
            time.sleep(1)
            plt.close(fig='all')    
            print('')
            angle_rot+=45
            loop_main+=1
            swift.set_servo_angle(servo_id=1,angle=90,speed=10000)
            swift.set_servo_angle(servo_id=2,angle=5,speed=10000)
        time.sleep(1)
        self.ext_plot(new_dir)
        plt.close(fig='all')
        self.reset()
        return
    
    def create_subfolder(self,new_dir,num):
            pathlib.Path(new_dir+'test'+num).mkdir(parents=True,exist_ok=True)
            sub_dir=str(new_dir+'test'+num+'/')
            return(sub_dir)
    #Robotic Arm Functions        
    def reset(self):
        #servo id 1 = stretch
        swift.set_servo_angle(servo_id=1,angle=90,speed=30000)
        #servo id 0 = rotation
        swift.set_servo_angle(servo_id=0,angle=90,speed=30000)
        #servo id 2 = height
        swift.set_servo_angle(servo_id=2,angle=5,speed=10000)
        swift.flush_cmd(wait_stop=True)
        return

    def swing(self,idProduct,dx,dy,angle_rot,ha):
        swift.set_servo_angle(servo_id=2,angle=ha,speed=10000)
        swift.set_servo_angle(servo_id=0,angle=(angle_rot- 18),speed=15000)
        swift.flush_cmd(wait_stop=True)
        while True:
            dx1,dx2,dy1,dy2,total=self.rd2(idProduct)
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
            x_value,y_value=self.rd(idProduct)
            #Collect accumulated value
            x2=x_value + k10
            k10+=x_value
            y2=y_value + k11
            k11+=y_value
            #Collect data and store in a list
            dx.append(x2)
            dy.append(y2)
            dxG.append(x2)
            dyG.append(y2)
        swift.flush_cmd(wait_stop=True)
        time.sleep(0.5)
        swift.set_servo_angle(servo_id=0,angle=angle_rot,speed=20000)
        swift.flush_cmd(wait_stop=True)
        time.sleep(0.5)
        #Calculate hypothenus for delta x and delta y
        hyp2=math.sqrt((math.pow(x2,2))+(math.pow(y2,2)))
        acc=round((abs(hyp2)),4)
        dx1,dx2,dy1,dy2,total=self.rd2(idProduct) 
        return(total,acc,dx,dy)  

    def init_step(self):
        a=sg()
        initz=round((a[2]),4)
        print("Initial z: ",initz)
        arc=round(((math.pi*205*18/180)/25.4),4)
        return(arc,initz)
    
    def rd2(self,idProduct):
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
    
    def rd(self,idProduct):
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
        xd1,yd1=self.mask(xd,yd)
        x_value,y_value=self.check(xd,yd,xd1,yd1)
        return(x_value,y_value)
    #To mask the MSB of the value 
    def mask(self,xd,yd):
        mask = 1<<15
        xd1=(xd &~ mask)|(0<<15)
        mask = 1<<15
        yd1=(yd &~ mask)|(0<<15)
        return (xd1,yd1)
    #To check the sign of the delta x (dx), delta y (dy) and return true magnitude 
    def check(self,xd,yd,xd1,yd1):
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
        
    def excel(self,sub_dir,dpi,height,dx,dy):
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
        for data_1 in (dpi):
            worksheet.write(row,0,data_1)
            row+=1
        row=1
        for data_2 in (height):
            worksheet.write(row,1,data_2)
            row+=1
        row=1
        for data_3 in (dx):
            worksheet.write(row,2,data_3)
            row+=1
        row=1
        for data_4 in (dy):
            worksheet.write(row,3,data_4)
            row+=1
        workbook.close()
        return
    
    def plot(self,sub_dir,height,dpi,dx,dy):
        plt.figure(1)
        plt.title('DPI vs Height')
        plt.xlabel('Height/mm')
        plt.ylabel('DPI')
        plt.plot(height,dpi)
        plt.show()
        plt.savefig(sub_dir+"dpi_mm.png")
        plt.figure(2)
        plt.title('DPI vs Count')
        plt.plot(dpi)
        plt.savefig(sub_dir+"dpi_count.png")
        plt.figure(3)
        plt.title('Delta XY')
        plt.subplot(211)
        plt.plot(dx)
        plt.subplot(212)
        plt.plot(dy)
        plt.savefig(sub_dir+"DeltaXY.png")
        return
    
    def ext_plot(self,new_dir):
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
        plt.plot(dxG)
        plt.subplot(212)
        plt.plot(dyG)
        plt.savefig(new_dir+"DeltaXY.png")
        return
    
    def display(self,s,initz,count,idProduct,sub_dir,h_diff):
        if mode==2:
            h=sg()
            #0.7 as constant and 0.05 to reduce error
            cutoff_height=round(((h[2]-initz)*self.const),2)
            chG.append(cutoff_height)
            dx1,dx2,dy1,dy2,total=self.rd2(idProduct)
            xf=dx2+dx1
            yf=dy2+dy1
            print('')
            print("Final Position: ","X=",xf,"Y=",yf)
            print("Z final= ",h[2]," units")
            print("Cutoff height= ",cutoff_height," mm")
            print("Iteration: ",count)
            name1=os.path.abspath(sub_dir+"_Data.txt")
            data_file=open(name1,"a+")
            data0=("Test:",s)
            data1="1.Initial Z  2.Final Z  3.Cutoff Height  (in mm)"
            data2=(initz,   h[2],    cutoff_height)
            data_file.write("{}\n".format(data0))
            data_file.write("{}\n".format("\n"))
            data_file.write("{}\n".format(data1))
            data_file.write("{}\n".format("\n"))
            data_file.write("{}\n".format(data2))
            data_file.close
        elif mode==1:
            print("Sweep Height Range: ",sh)
            name1=os.path.abspath(sub_dir+"_Data.txt")
            data_file=open(name1,"a+")
            datat="Sweep Height Range: "+str(sh)
            datat1="Test: "+str(s)
            datat2="Final Height(mm): "+str(h_diff)
            data_file.write("{}\n".format(datat))
            data_file.write("{}\n".format("\n"))
            data_file.write("{}\n".format(datat1))
            data_file.write("{}\n".format("\n"))
            data_file.write("{}\n".format(datat2))
            data_file.close
        return