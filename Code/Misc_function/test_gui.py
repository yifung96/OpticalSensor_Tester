# -*- coding: utf-8 -*-
"""
Created on Fri Aug 23 13:30:25 2019

@author: yf_choong
"""

import tkinter as tk

def run():
    E1,E2=main()
    print("num:",E1,E2)
    

def main():
    def show_entry_fields():
        try:
            E1=int(e1.get())
        except ValueError:
            tk.messagebox.showinfo("Error")
        E1=int(e1.get())
        E2=e2.get()
        print(E1,E2)
        e1.delete(0,tk.END)
        e2.delete(0,tk.END)
        tk.messagebox.showinfo("Note", "File is saved")
        master.destroy()
    master=tk.Tk()
    master.title("Test")
    master.geometry("400x400")
    tk.Label(master,text="First Name").grid(row=0)
    tk.Label(master, text="Last Name").grid(row=1)
    e1=tk.Entry(master)
    e2=tk.Entry(master)
    e1.grid(row=0, column=1)
    e2.grid(row=1, column=1)
    tk.Button(master,text='Save', command=show_entry_fields).grid(row=3,column=1,sticky=tk.W,pady=4)
    tk.Button(master,text='Quit', command=master.destroy).grid(row=3,column=0,sticky=tk.W,pady=4)
    master.mainloop()
    return(E1,E2)
    
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
           
    
    
  