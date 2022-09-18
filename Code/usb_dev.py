# -*- coding: utf-8 -*-
"""
Created on Fri Jul 19 09:47:04 2019

@author: yf_choong
"""

import usb.core
import usb.util
import time
import numpy as np

class usb_dev:
    reg_Motion = 0x02
    reg_PixSum = 0x08
    reg_PixMax = 0x09
    reg_PixMin = 0x0a
    reg_Config2 = 0x10
    reg_Shutter_Lo = 0x0b
    reg_Shutter_Hi = 0x0c
    reg_Frame_Capture = 0x12
    reg_ShutterMax_Lo = 0x1e
    reg_ShutterMax_Hi = 0x1f
    reg_FramePeriod_Lo = 0x20
    reg_FramePeriod_Hi = 0x21
    reg_Force_VFR = 0x23
    reg_PixelDump = 0x29
    reg_TapKey = 0x30
    reg_TapAddr_Lo = 0x31
    reg_TapAddr_Hi = 0x32
    reg_RAM_std = 0x33
    reg_RAM_aui = 0x34
    reg_sfr_rd = 0x44
    reg_sfr_wr = 0x45
    reg_sfr_data = 0x46
    reg_ind_ana_addr = 0x4d
    reg_ind_ana_data = 0x4e
    reg_Preflash_Lo = 0x56
    reg_Preflash_Hi = 0x57
    reg_Pixel_Burst = 0x64
    nav_ubRunArray_ColStart = 0x8290
    nav_ubRunArray_ColEnd = 0x8291
    nav_ubRunArray_RowStart = 0x8292
    nav_ubRunArray_RowEnd = 	0x8293
    nav_ubRunDCRArraySize = 0x8294
    iox_ubPixelSumCavgThres = 0x009C
    
    def __init__(self, idVendor, idProduct, pid, arraySzRun, arraySzRest,
                 ver_def_fname):
        self.idVendor = idVendor
        self.idProduct = idProduct
        self.dev = usb.core.find(idVendor=self.idVendor,
                                 idProduct=self.idProduct)
        try:
            # Check if the device product matches what the user expected
            self.dev_pid = self.rd(0x00)
            print ("")
            print ("#####################")
            print ("# USB Device Object #")
            print ("#####################")
            print ("")
            print ("Constructed USB device object with: ")
            print ("  USB Vendor ID = %s" %(hex(idVendor)))
            print ("  USB Product ID = %s" %(hex(idProduct)))
            print ("")
            print ("Device parameters: ")
            print ("  Array size Run mode = %d x %d" %(arraySzRun, arraySzRun))
            print ("  Array size Rest mode = %d x %d" %(arraySzRest, arraySzRest))
            if self.dev_pid == pid:
                print ("  Device Product ID = %s" %(hex(pid)))
            else:
                print ("  WARNING: Device Product ID = %s" %(hex(self.dev_pid)))
                print ("           does not match expected ID = %s" %(hex(pid)))
        except AttributeError:
            print ("USB device not found")
            
        # Make a register name dictionary
        self.ver_def_fname = ver_def_fname
        self.make_reg_addr()

        self.arraySzRun = arraySzRun
        self.arraySzRest = arraySzRest
        
    # Create register dictionary
    def make_reg_addr(self):
        # Create a dictionary of register names and its address
        self.rega = dict()
        # Read in verilog definition file into a dictionary
        ver_def = dict(np.genfromtxt(self.ver_def_fname, dtype=np.str,
                                     comments='//', usecols=(1,2)))
        # Registers begin with REGA_
        # Other line items in the verilog definition file are discarded
        # So self.rega dict will only contain registers
        for ver_item in ver_def.keys():
            if ver_item.startswith('REGA_'):
                # For simplicity, 'REGA_' prefix is removed
                # Verilog hex format is 10'hxx, so we need to first remove the
                # '9'h' prefix and then convert xx to an integer
                self.rega[ver_item[5:]] = int(ver_def[ver_item][4:], 16)

    # Read register
    def rd(self, addr_full, silent=True):
        # Single register read
        dev = self.dev
        addr = addr_full & 127 # mask out paging bits
        data = dev.ctrl_transfer(0xc0, 1, 0, addr, 1, timeout=5000)
        if not silent:
            print ("Register %s = %s" % (hex(addr), hex(data[0])))
        return data[0]

    # Write register
    def wr(self, addr_full, data):
        # Single register write
        dev = self.dev
        addr = addr_full & 127 # mask out paging bits
        out = data*256 + addr
        dev.ctrl_transfer(0x40, 1, 0, out)

    # Paged read register
    def rdp(self, addr_full, silent=True):
        # Single register read
        addr = addr_full & 127 # mask out paging bits
        page = addr_full >> 8 # page bits

        # Switch page only if current page is different from required page
        curr_page = self.rd(self.rega['SPI_PAGE']) # current page
        if curr_page != page:
            self.wr(self.rega['SPI_PAGE'], page) # change page

        if not silent:
            print ("Page %d" %page)
        data = self.rd(addr, silent) # read from register

        # Return to original page if page was switched previously
        if curr_page != page:
            self.wr(self.rega['SPI_PAGE'], curr_page)

        return data

    # Paged write register
    def wrp(self, addr_full, data):
        # Single register write
        addr = addr_full & 127 # mask out paging bits
        page = addr_full >> 8 # page bits

        # Switch page only if current page is different from required page
        curr_page = self.rd(self.rega['SPI_PAGE']) # current page
        if curr_page != page:
            self.wr(self.rega['SPI_PAGE'], page) # change page
        self.wr(addr, data) # write to register

        # Return to original page if page was switched previously
        if curr_page != page:
            self.wr(self.rega['SPI_PAGE'], curr_page)
    # Write to MCU
    def wmcu(self, addr, data):
        dev = self.dev
        out = data*256 + addr
        dev.ctrl_transfer(0x40, 0x04, 0x0000, out)

    # Read and verify register
    def rdv(self, addr_full, exp_data, silent=True, ret='val'):
        rcv_data = self.rd(addr_full)
        flag = (rcv_data == exp_data)
        if silent == False:
            if flag:
                print ("PASS: Read addr=0x{0:02x}, rcv=0x{1:02x}".format(addr_full, rcv_data))
            else:
                print ("FAILED: Read addr=0x{0:02x}, exp=0x{1:02x}, rcv=0x{2:02x}".format(addr_full, exp_data, rcv_data))
        else:
            if ret == 'val':
                return rcv_data
            elif ret == 'flag':
                return flag
            elif ret == 'str':
                if flag:
                    return "PASS"
                else:
                    return "FAIL"
    # Result logging
    def rlog(self, text, res, color=True):  
        if color:
            if res:
                print ("[\x1b[32;1mPASS\x1b[0m] " + text)
            else:
                print ("[\x1b[31;1mFAIL\x1b[0m] " + text)
        else:
            if res:
                print ("[PASS] " + text)
            else:
                print ("[FAIL] " + text)
                
     # Motion stop
    def motion_stop(self):
        # MCU command to stop USB motion packets
        self.wmcu(0x16, 0x01)

    # Motion run
    def motion_run(self):
        # MCU command to resume USB motion packets
        self.wmcu(0x16, 0x00)

    # SPI stress test
    def spi_stress(self, switch=True):
        # MCU command to start/ stop SPI stress test
        if switch:
            self.wmcu(0x55, 0x07)
        else:
            self.wmcu(0x5f, 0x01)

    # SPI mode
    def spi_mode(self, nwire=4):
        wmcu = self.wmcu
        # Set SPI mode according to number of wires
        if nwire==2:
            # MCU will write to SPI_MODE
            # wrp(self.rega['SPI_MODE'], 0x24)
            wmcu(0x14, 0x02)
            wmcu(0x15, 0x02)
            wmcu(0x17, 0x02)
            wmcu(0x18, 0x02)
            print ("SPI 4-Wire mode using SW SPI")
        elif nwire==3:
            # MCU will write to SPI_MODE
            # wrp(self.rega['SPI_MODE'], 0x39)
            wmcu(0x14, 0x03)
            wmcu(0x15, 0x02)
            wmcu(0x17, 0x02)
            wmcu(0x18, 0x02)
            print ("SPI 3-Wire mode using SW SPI")
        else:
            # MCU will write to SPI_MODE
            # wrp(self.rega['SPI_MODE'], 0x00)
            wmcu(0x14, 0x04)
            wmcu(0x15, 0x02)
            wmcu(0x17, 0x01)
            wmcu(0x18, 0x02)
            print ("SPI 4-Wire mode using HW SPI")
            
     # Frame grab
    def frame_grab(self):
        # Grab an image through frame grab
        # NOTE: this method destroys the SROM
        reg_Config2 = self.reg_Confgi2
        reg_Frame_Capture = self.reg_Frame_Capture
        reg_Pixel_Burst = self.reg_Pixel_Burst

        # temporarily clear config2 to get rid of rest mode
        self.wr(reg_Config2, 0x00)
        self.wr(reg_Frame_Capture, 0x83)
        self.wr(reg_Frame_Capture, 0xc5)
        time.sleep(1)
        # placeholder to check for motion register pixel ready bit
        img = np.zeros((36,36), dtype=np.uint8)
        for i in range(0, 36):
            for j in range(0, 36):
                pix = self.rd(reg_Pixel_Burst)
                pix = np.uint8(pix)
                img[i, j] = pix
        return img
    # Read pixel statistics
    def rd_pixstat(self):
        # read from the 3 pixel stats registers
        # convert sum to an average
        pxmin = self.rd(self.reg_PixMin)
        pxmax = self.rd(self.reg_PixMax)
        pxavg = self.rd(self.reg_PixSum)
        pxavg = pxavg * 1024. / (36*36)

        return pxmin, np.single(pxavg), pxmax
    # Read Shutter
    def rd_shutter(self):
        # read from hi then lo bytes of shutter register
        reg_Shutter_Hi = self.reg_Shutter_Hi
        reg_Shutter_Lo = self.reg_Shutter_Lo

        # read srom ID to resolve double byte read bug
        self.rd(0x2a)
        sh_hi = self.rd(reg_Shutter_Hi)
        sh_lo = self.rd(reg_Shutter_Lo)

        return sh_hi*256 + sh_lo
     # Write Shutter
    def wr_shutter(self, data, silent=False):
        # write to lo then hi byte of shutter max register
        reg_ShutterMax_Lo = self.reg_ShutterMax_Lo
        reg_ShutterMax_Hi = self.reg_ShutterMax_Hi
        hi = data >> 8
        lo = data - hi*(2**8)

        self.wr(reg_ShutterMax_Lo, lo)
        self.wr(reg_ShutterMax_Hi, hi)

        shutter = self.rd_shutter()
        flag = (shutter==data)

        if silent==False:
            if flag:
                print ("Shutter set to %d clocks" % data)
            else:
                print ("Failed to write shutter to %d clocks" % data)

        return flag
     # Read Frame Period
    def rd_frame_period(self):
        # read from hi then lo bytes of frame period register
        reg_FramePeriod_Hi = self.reg_FramePeriod_Hi
        reg_FramePeriod_Lo = self.reg_FramePeriod_Lo

        # read srom ID to resolve double byte read bug
        self.rd(0x2a)
        fp_hi = self.rd(reg_FramePeriod_Hi)
        fp_lo = self.rd(reg_FramePeriod_Lo)

        return fp_hi*256 + fp_lo

    # Write Frame Period
    def wr_frame_period(self, data):
        # write to lo then hi byte of frame period register
        reg_FramePeriod_Lo = self.reg_FramePeriod_Lo
        reg_FramePeriod_Hi = self.reg_FramePeriod_Hi
        hi = data >> 8
        lo = data - hi*(2**8)

        self.wr(reg_FramePeriod_Lo, lo)
        self.wr(reg_FramePeriod_Hi, hi)

        fr = self.rd_frame_period()
        if fr == data:
            print ("Frame period set to %d clocks" % data)
            flag = True
        else:
            print ("Failed to write frame period to %d clocks" % data)
            flag = False

        return flag

    ##########################################################################
    # Read Frame Rate
    def rd_frame_rate(self):
        # read frame period and convert to frame rate, assume 70MHz clock
        fp = self.rd_frame_period()
        fr = 70. / fp * 1e6
        print ("Frame rate (based on 70MHz clock) is %d fps" % fr)
        # return 32b float rather than a 64b double
        return np.single(fr)

    ##########################################################################
    # Enable tapkey
    def en_tapkey(self):
        # enable tapkey
        reg_TapKey = self.reg_TapKey

        self.wr(reg_TapKey, 0x44)

    ##########################################################################
    # Subpage read
    def rsfr(self, addr, silent=True):
        # Single subpage register read
        reg_sfr_rd = self.reg_sfr_rd
        reg_sfr_data = self.reg_sfr_data

        # set tapkey
        self.en_tapkey()
        # write to sfr address and read from sfr data register
        self.wr(reg_sfr_rd, (addr | 0x80))
        data = self.rd(reg_sfr_data)

        if not silent:
            print ("SFR register %s = %s" % (hex(addr), hex(data)))

        return data

    ##########################################################################
    # Subpage write
    def wsfr(self, addr, data):
        # Single subpage register write
        reg_sfr_wr = self.reg_sfr_wr
        reg_sfr_data = self.reg_sfr_data

        # set tapkey
        self.en_tapkey()
        # write to sfr address and write to sfr data register
        self.wr(reg_sfr_wr, (addr | 0x80))
        self.wr(reg_sfr_data, data)


    ##########################################################################
    # Indirect ANA read
    def rd_ana(self, addr, silent=True):
        # Single read of indirect ana control subpage
        reg_ind_ana_addr = self.reg_ind_ana_addr
        reg_ind_ana_data = self.reg_ind_ana_data

        # set tapkey
        self.en_tapkey()
        # write to sfr address and read from sfr data register
        self.wr(reg_ind_ana_addr, addr)
        data = self.rd(reg_ind_ana_data)

        if not silent:
            print ("SFR register %s = %s" % (hex(addr), hex(data)))

        return data

    ##########################################################################
    # Indirect ANA write
    def wr_ana(self, addr, data):
        # Single write to indirect ana control subpage
        reg_ind_ana_addr = self.reg_ind_ana_addr
        reg_ind_ana_data = self.reg_ind_ana_data

        # set tapkey
        self.en_tapkey()
        # write to sfr address and write to sfr data register
        self.wr(reg_ind_ana_addr, addr)
        self.wr(reg_ind_ana_data, data)