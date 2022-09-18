# -*- coding: utf-8 -*-
"""
Created on Thu Jul 18 13:57:13 2019

@author: yf_choong
"""

import usb_dev
import pixel_grab
import rest_mode
import osc_tune as oot
import osc_out as ooo
import numpy as np
import time



#create our device
def create_dev(idProduct):
    dev = usb_dev.usb_dev(idVendor=0x192f,
                          idProduct=idProduct,
                          pid=0x4F,
                          arraySzRun=36,
                          arraySzRest=22,
                          ver_def_fname='./registers/proj_defines.v')
    
    
    rega = dev.rega
    return dev, rega

pxg = pixel_grab.pixel_grab
rest = rest_mode.rest_mode
osc_tune = oot.osc_tune
osc_out = ooo.osc_out

def setup_jg2(dev):
    # Setup Jerry as full scale
    dev.wrp(dev.rega['SENSOR_ADDR'], 0x16)
    dev.wrp(dev.rega['SENSOR_DATA'], 0x50)
    # Setup Jerry TA gain
    dev.wrp(dev.rega['SENSOR_ADDR'], 0x19)
    dev.wrp(dev.rega['SENSOR_DATA'], 0x01) # 3x gain
    # Setup Jerry as 3 phase
    dev.wrp(dev.rega['SENSOR_ADDR'], 0x3f)
    dev.wrp(dev.rega['SENSOR_DATA'], 0x71)

def setup_glass_jg2(dev):
    setup_jg2(dev)
    dev.wrp(dev.rega['AXIS_CONTROL'], 0x60)
 #   dev.wrp(dev.rega['CLKSEQ_CTRL5'], 0x80)
    dev.wrp(dev.rega['PERFORMANCE'], 0x80)
    dev.wrp(dev.rega['RESOLUTION'], 0x14)
    dev.wrp(dev.rega['ANA_CTRL19'], 0x01) # Minimum
    dev.wrp(dev.rega['ANA_CTRL18'], 0x00) # Preflash
    dev.wrp(dev.rega['LIFTED_FF_MOVAVG'], 0x22)
    dev.wrp(dev.rega['MIN_SQUAL_RUN_PAF'], 0x0a)
    dev.wrp(dev.rega['MIN_SQUAL_RUN_FF'], 0x0a)
    dev.wrp(dev.rega['SQUAL_THRESH_PAF'], 0x19)
    dev.wrp(dev.rega['SQUAL_THRESH_FF'], 0x19)
    dev.wrp(dev.rega['NAV_CTRL3'], 0xff)
    dev.wrp(dev.rega['NAV_CTRL27'], 0x32)
    dev.wrp(dev.rega['NAV_CTRL28'], 0x32)
    dev.wrp(dev.rega['DCR_CONFIG'], 0x94)
    dev.wrp(dev.rega['DCR_CONFIG2'], 0x06)
    dev.wrp(dev.rega['COR_CTRL10'], 0x42) # AC R-R or C-C
    dev.wrp(dev.rega['COR_CTRL11'], 0x00) # Runaway, FPNS reref
    dev.wrp(dev.rega['NAV_CTRL7'], 0x20) # FF2PAF squal thresh
    dev.wrp(dev.rega['NAV_CTRL8'], 0x12) # PAF2FF squal thresh
    dev.wrp(dev.rega['NAV_CTRL25'], 0x10) # FF2PAF persistence
    dev.wrp(dev.rega['NAV_CTRL26'], 0x10) # PAF2FF persistence
    dev.wrp(dev.rega['NAV_CTRL24'], 0x56) # disable reref on high acc
    dev.wrp(dev.rega['PAF_SHIFT'], 0x11)
    dev.wrp(dev.rega['FF_SHIFT'], 0x22)
    dev.wrp(dev.rega['GEF_SHIFT'], 0x11)
    dev.wrp(dev.rega['NAV_CTRL23'], 0x08) # FPNS vel threshold
    dev.wrp(dev.rega['COR_OUTCLIP_TH'], 0x7f)
    dev.wrp(dev.rega['FPNS_CTRL0'], 0xb9)
    dev.wrp(dev.rega['FPNS_SQUAL_INC_TH'], 0x10)
    dev.wrp(dev.rega['FPNS_SQUAL_CNT_TH'], 0x14)
    dev.wrp(dev.rega['FPNS_AVGSQ_CNT_MEAN_TH'], 0x32)
    dev.wrp(dev.rega['FPNS_AVGSQ_CNT_DN_TH'], 0x32)
    dev.wrp(dev.rega['FPNS_AVGSQ_CNT_UP_TH'], 0x64)
    dev.wrp(dev.rega['FPNS_AVGSQ_INC_TH'], 0x0a)
    dev.wrp(dev.rega['FPNS_UPD_SQUAL_THRESH'], 0xff)
    dcr_coef_glass1(dev)
    
def fps_lo(dev):
    dev.wrp(dev.rega['VFR_MIN_PERIOD_LO'], 0x38)
    dev.wrp(dev.rega['VFR_MIN_PERIOD_HI'], 0x01)

def fps_hi(dev):
    dev.wrp(dev.rega['VFR_MIN_PERIOD_LO'], 0x43)
    dev.wrp(dev.rega['VFR_MIN_PERIOD_HI'], 0x00)

def dcr_coef_glass1(dev,
                   kl=0x12, mn=0x21,
                   op=0x2b, qr=0xb2,
                   st=0x2b, uv=0xb2,
                   wx=0x12, yz=0x21):
    dev.wrp(dev.rega['COEF_K_L'], kl)
    dev.wrp(dev.rega['COEF_M_N'], mn)
    dev.wrp(dev.rega['COEF_O_P'], op)
    dev.wrp(dev.rega['COEF_Q_R'], qr)
    dev.wrp(dev.rega['COEF_S_T'], st)
    dev.wrp(dev.rega['COEF_U_V'], uv)
    dev.wrp(dev.rega['COEF_W_X'], wx)
    dev.wrp(dev.rega['COEF_Y_Z'], yz)

def dcr_coef_glass2(dev,
                   kl=0xff, mn=0x11,
                   op=0xff, qr=0x11,
                   st=0x11, uv=0xff,
                   wx=0x11, yz=0xff):
    dev.wrp(dev.rega['COEF_K_L'], kl)
    dev.wrp(dev.rega['COEF_M_N'], mn)
    dev.wrp(dev.rega['COEF_O_P'], op)
    dev.wrp(dev.rega['COEF_Q_R'], qr)
    dev.wrp(dev.rega['COEF_S_T'], st)
    dev.wrp(dev.rega['COEF_U_V'], uv)
    dev.wrp(dev.rega['COEF_W_X'], wx)
    dev.wrp(dev.rega['COEF_Y_Z'], yz)

# Setup 8L option
def setup_8L(dev):
    dev.motion_stop()
    dev.spi_mode(3)
    dev.motion_run()
    # Lift settings
    dev.wrp(dev.rega['PACC_COLSTART'], 0x00) # from 0x03
    dev.wrp(dev.rega['PACC_COLEND'], 0x01) # from 0x04
    dev.wrp(dev.rega['EIDX_TH_LHYST'], 0x01) # from 0x04
    dev.wrp(dev.rega['EIDX_TH'], 0x03) # from 0x06

# Setup CAL_EN stress
def setup_CAL_EN_stress11(dev):
    dev.wrp(dev.rega['PAD_HDRV'], 0x01)
    print ("PAD_HDRV: %s" %hex(dev.rdp(dev.rega['PAD_HDRV'])))
    dev.wrp(dev.rega['PAD_LDRV'], 0x01)
    print ("PAD_LDRV: %s" %hex (dev.rdp(dev.rega['PAD_LDRV'])))
    dev.wrp(dev.rega['CLKSEQ_CTRL5'], 0x06)
    print ("CLKSEQ_CTRL5: %s" %hex (dev.rdp(dev.rega['CLKSEQ_CTRL5'])))

def setup_CAL_EN_stress00(dev):
    dev.wrp(dev.rega['PAD_HDRV'], 0x00)
    print ("PAD_HDRV: %s" %hex(dev.rdp(dev.rega['PAD_HDRV'])))
    dev.wrp(dev.rega['PAD_LDRV'], 0x00)
    print ("PAD_LDRV: %s" %hex (dev.rdp(dev.rega['PAD_LDRV'])))
    dev.wrp(dev.rega['CLKSEQ_CTRL5'], 0x06)
    print ("CLKSEQ_CTRL5: %s" %hex (dev.rdp(dev.rega['CLKSEQ_CTRL5'])))

def setup_CAL_EN_stress_HDRV_LDRV(dev):
    dev.wrp(dev.rega['PAD_HDRV'], 0x01)
    print ("PAD_HDRV: %s" %hex(dev.rdp(dev.rega['PAD_HDRV'])))
    dev.wrp(dev.rega['PAD_LDRV'], 0x01)
    print ("PAD_LDRV: %s" %hex (dev.rdp(dev.rega['PAD_LDRV'])))
    dev.wrp(dev.rega['CLKSEQ_CTRL5'], 0x00)
    print ("CLKSEQ_CTRL5: %s" %hex (dev.rdp(dev.rega['CLKSEQ_CTRL5'])))

def disable_CAL_EN_stress(dev):
    dev.wrp(dev.rega['PAD_HDRV'], 0x00)
    print ("PAD_HDRV: %s" %hex(dev.rdp(dev.rega['PAD_HDRV'])))
    dev.wrp(dev.rega['PAD_LDRV'], 0x00)
    print ("PAD_LDRV: %s" %hex (dev.rdp(dev.rega['PAD_LDRV'])))
    dev.wrp(dev.rega['CLKSEQ_CTRL5'], 0x00)
    print ("CLKSEQ_CTRL5: %s" %hex (dev.rdp(dev.rega['CLKSEQ_CTRL5'])))
    
# Read write stress
def rw_stress(dev, loop=10):
    errCnt = 0
    for i in range(loop):
        dev.wrp(dev.rega['RESOLUTION'], 0x92)
        a = dev.rdp(dev.rega['RESOLUTION'])
        if a != 0x92:
            errCnt += 1
        dev.wrp(dev.rega['RESOLUTION'], 0x6d)
        a = dev.rdp(dev.rega['RESOLUTION'])
        if a != 0x6d:
            errCnt += 1
        dev.wrp(dev.rega['RUN_DOWNSHIFT'], 0xaa)
        a = dev.rdp(dev.rega['RUN_DOWNSHIFT'])
        if a != 0xaa:
            errCnt += 1
        dev.wrp(dev.rega['RUN_DOWNSHIFT'], 0x55)
        a = dev.rdp(dev.rega['RUN_DOWNSHIFT'])
        if a != 0x55:
            errCnt += 1

        if i%10 == 0:
            print ("Loop %d" %i)

    print ("---------------")
    print ("Failed %d times" %errCnt)

# Enable COR_STATUS
def enable_cor_status(dev):
    dev.wrp(dev.rega['FPC_CTRL0'], 0x04)
    dev.wrp(dev.rega['TAP_KEY'], 0xb9)
    dev.wrp(dev.rega['COR_STATUS'], 0x00)

# Debug wakeup
def debug_wakeup(dev):
    # This stabilizes lift while in Turtle in order to enter Rest
    dev.wrp(dev.rega['BIN_TH_BIGSHUT'], 0x48) # from 0x32
    dev.wrp(dev.rega['LIFT_SQ_TH_HYST'], 0x20) # from 0x10
    # This keeps the sensor in Rest while in Turtle
    dev.wrp(dev.rega['DECOR_TH'], 0x55) # from 0x53
    # This enables decor wakeup in Low Squal
    dev.wrp(dev.rega['REST_CFG'], 0xff) # from 0xbf
    # Tapkey to open up ACOR and XC00
    dev.wrp(dev.rega['TAP_KEY'], 0xb9) # from 0xbf
    # This reduces downshift time for experimentation
    dev.wrp(dev.rega['REST1_DOWNSHIFT'], 0x15) # from 0x4f
    dev.wrp(dev.rega['REST2_DOWNSHIFT'], 0x02) # from 0x5e
    # This eliminates Low Squal in Rest mode
#    dev.wrp(dev.rega['MIN_SQUAL_REST_PAF'], 0x00) # from 0x0f
#    dev.wrp(dev.rega['MIN_SQUAL_REST_FF'], 0x00) # from 0x0f
#    dev.wrp(dev.rega['MIN_SQUAL_REST_BIGSHUT_PAF'], 0x00) # from 0x0f
#    dev.wrp(dev.rega['MIN_SQUAL_REST_BIGSHUT_FF'], 0x00) # from 0x0f

# Surface tuning
def sft_step1(dev):
    dev.wrp(dev.rega['PERFORMANCE'], 0x80) # Disable Rest
    dev.wrp(dev.rega['RESOLUTION'], 0x03) # 200 DPI
    dev.wrp(dev.rega['NAV_CTRL3'], 0x47) # PAF and disable lift
    dev.wrp(dev.rega['SFT_MIN_SQ_RUN'], 0x00) # SFT option

def sft_step2(dev):
    dev.wrp(dev.rega['SFT_CTL'], 0x91) # Start test clock and SFT state machine
    sft_done = (dev.rdp(dev.rega['SFT_STATUS']) & 0x04) == 0x04
    if sft_done:
        print ("SFT start error; SFT_DONE = %d" %sft_done)
    else:
        print ("SFT started; SFT_DONE = %d" %sft_done)

    time.sleep(5) # 20 sec tuning
    dev.wrp(dev.rega['SFT_CTL'], 0x10) # Stop test clock and SFT state machine

    sft_done = (dev.rdp(dev.rega['SFT_STATUS']) & 0x04) == 0x04
    if sft_done:
        print ("SFT done; SFT_DONE = %d" %sft_done)
    else:
        print ("SFT done error; SFT_DONE = %d" %sft_done)

    sft_valid = (dev.rdp(dev.rega['SFT_STATUS']) & 0x01) == 0x01
    if sft_valid:
        print ("SFT valid; SFT_VALID = %d" %sft_valid)
        do_sft_valid(dev)
    else:
        print ("SFT invalid; SFT_VALID = %d" %sft_valid)
        do_sft_invalid(dev)

def do_sft_valid(dev):
    print ("SFT_MSQ = %s" %hex(dev.rdp(dev.rega['SFT_MSQ'])))
    print ("SFT_SQTH = %s" %hex(dev.rdp(dev.rega['SFT_SQTH'])))
    dev.wrp(dev.rega['LIFT_SQ_SFT_TH'], 0x04) # Lift Sq threshold
    dev.wrp(dev.rega['LIFT_SQ_SFT_TH_HYST'], 0x0c) # Lift Sq threshold
    dev.wrp(dev.rega['NAV_CTRL3'], 0x44) # PAF
    dev.wrp(dev.rega['NAV_CTRL5'], 0x64) # Lift Sq allowed in PAF
    dev.wrp(dev.rega['SFT_MIN_SQ_RUN'], 0x81) # SFT option
    dev.wrp(dev.rega['RESOLUTION'], 0x3B) # 3000 DPI
    dev.wrp(dev.rega['PERFORMANCE'], 0x00) # Enable Rest
    print ("Completed SFT")

def do_sft_invalid(dev):
    dev.wrp(dev.rega['NAV_CTRL3'], 0x40) # Default auto filter
    dev.wrp(dev.rega['RESOLUTION'], 0x3B) # 3000 DPI
    dev.wrp(dev.rega['PERFORMANCE'], 0x00) # Enable Rest
    print ("Unable to tune; revert to default")

def glass(dev):
    dev.wrp(dev.rega['PERFORMANCE'], 0x80)
    dev.wrp(dev.rega['ANA_CTRL10'], 0x11)
    dev.wrp(dev.rega['SHUTTER_MANUAL_LO'], 0x88)
#    dev.wrp(dev.rega['SHUTTER_MANUAL_HI'], 0x80)
    dev.wrp(dev.rega['SHUTTER_MANUAL_HI'], 0x00)
    dev.wrp(dev.rega['NAV_CTRL3'], 0x7f)
    dev.wrp(dev.rega['SQUAL_THRESH_FF'], 0x01)
    dev.wrp(dev.rega['SQUAL_THRESH_PAF'], 0x01)
    dev.wrp(dev.rega['MIN_SQUAL_RUN_FF'], 0x01)
    dev.wrp(dev.rega['MIN_SQUAL_RUN_PAF'], 0x01)
    dev.wrp(dev.rega['MIN_SQUAL_RUN_BIGSHUT_FF'], 0x01)
    dev.wrp(dev.rega['MIN_SQUAL_RUN_BIGSHUT_PAF'], 0x01)
    dev.wrp(dev.rega['NAV_CTRL28'], 0x11)
    dev.wrp(dev.rega['DCR_SHIFT'], 0xd5)
#    dcr_coef(dev, kl=0x00,mn=0x00,op=0x0f,qr=0x10,st=0x01,uv=0xf0,wx=0x00,yz=0x00)
#    dcr_coef(dev, kl=0xf0,mn=0x10,op=0x00,qr=0x00,st=0x10,uv=0xf0,wx=0x00,yz=0x00)
#    dcr_coef(dev, kl=0xce,mn=0x24,op=0xef,qr=0x12,st=0x21,uv=0xfe,wx=0x42,yz=0xec)

##############################################################################
# pgm2array_sq
##############################################################################
# import csv file as numpy array uint8 data type
def pgm2array_sq(fname):
    '''
    This pgm converter uses numpy's genfromtxt and is only usable for
    square images
    '''
    with open(fname, 'r') as inp:
        filtered_inp = filter(lambda x: not x.startswith('P2'), inp)
        frames = np.genfromtxt(filtered_inp, dtype=np.uint8)

    nframe = np.divide(frames.shape[0], frames.shape[1])
    frames = frames.reshape(nframe, frames.shape[1], frames.shape[1])

    return frames, nframe
