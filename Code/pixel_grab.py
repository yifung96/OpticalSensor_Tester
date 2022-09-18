# -*- coding: utf-8 -*-
"""
Created on Fri Jul 19 16:39:30 2019

@author: yf_choong
"""

import numpy as np
import time

##############################################################################
# Pixel grab
def pixel_grab(dev, mode='run'):
    """
    Image grab from mouse by grabbing one pixel per frame.

    Parameters
    ----------
    dev : object, typically a USB mouse
        object should have IO methods i.e. SPI read, write

    Returns
    -------
    img : ndarray, shape (M, K) where M=K=asize=array size of image
        Composed of pixels grabbed one pixel per frame
        asize is the image size of the mouse e.g. 36x36

    Examples
    --------
    >>> ii = pixel_grab(dev)

    Warns
    -----
    none

    See Also
    --------

    Notes
    -----

    References
    ----------

    """

    reg_PRBS_TEST = dev.rega['PRBS_TEST']
    reg_PIX_GRAB = dev.rega['PIX_GRAB']
    reg_PERFORMANCE = dev.rega['PERFORMANCE']

    # Enable test clock
    dev.wr(reg_PRBS_TEST, 0x80)

    # Mode check
    rd_PERFORMANCE = dev.rd(reg_PERFORMANCE)
    if mode=='rest1':
        dev.wr(reg_PERFORMANCE, 0x20)
        asz = dev.arraySzRest
        dly = 0.1
    elif mode=='rest2':
        dev.wr(reg_PERFORMANCE, 0x40)
        asz = dev.arraySzRest
        dly = 0.2
    elif mode=='rest3':
        dev.wr(reg_PERFORMANCE, 0x60)
        asz = dev.arraySzRest
        dly = 0.75
    else: # run mode
        dev.wr(reg_PERFORMANCE, 0x80)
        asz = dev.arraySzRun
        dly = 0.01
        print ('run mode')

    print (mode, dly)

    time.sleep(1) # delay

    # Reset the pixel grabber
    dev.wr(reg_PIX_GRAB, 0xff)
    time.sleep(0.1) # delay

    img = np.zeros((asz, asz), dtype=np.uint8)
#    vcp = np.zeros((asz, asz), dtype=np.uint16)
    for i in range(asz):
        for j in range(asz):
            pix = dev.rd(reg_PIX_GRAB)
            pix = pix & 0x7f
            pix = np.uint8(pix)
            time.sleep(dly)
            img[i, j] = pix

#            valid = 0x00
#            vc = 0
#            while (valid != 0x80) and (vc < 5000):
#                vc += 1
#                pix = dev.rd(reg_PIX_GRAB)
#                valid = pix & 0x80
#            pix = np.uint8(pix)
#            img[i, j] = pix
#            vcp[i, j] = vc
#            sleep(0.02)
#            print vcp

    # Disable test clock
    dev.wr(reg_PRBS_TEST, 0x00)

    # Revert to original PERFORMANCE setting
    dev.wr(reg_PERFORMANCE, rd_PERFORMANCE)

    # Get rid of the msb (which is the valid flag) from each pixel
    return img