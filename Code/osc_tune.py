# -*- coding: utf-8 -*-
"""
Created on Fri Jul 19 16:58:47 2019

@author: yf_choong
"""

import time

##############################################################################
# Oscillator tuning
def osc_tune(dev, osc='fast', t_spi=10):
    """
    Enable oscillator tuning for fast or slow clock through SPI timing

    Parameters
    ----------
    dev : object, typically a USB mouse
        Object should have IO methods i.e. SPI read, write

    osc : {'fast', 'slow'}, optional
        Selects either fast or slow clock tuning

    t_spi : integer, optional
        SPI start to SPI stop period in ms

    Returns
    -------
    count : 21-bit fast (default) or slow clock counter value

    Examples
    --------
    >>> ii = osc_tune(dev)

    Warns
    -----
    None

    See Also
    --------

    Notes
    -----

    References
    ----------
    """

    # register definitions
    reg_OSC_TUNE_INSTR = dev.rega['OSC_TUNE_INSTR']
    reg_OSC_TUNE_STATUS = dev.rega['OSC_TUNE_STATUS']
    reg_OSC_COUNT0 = dev.rega['OSC_COUNT0']
    reg_OSC_COUNT1 = dev.rega['OSC_COUNT1']
    reg_OSC_COUNT2 = dev.rega['OSC_COUNT2']

    # turn on fast clock
    dev.wr(reg_OSC_TUNE_INSTR, 0x20)

    dev.wr(reg_OSC_TUNE_INSTR, 0x60) # reset counter


    if osc == 'fast':
        dev.wr(reg_OSC_TUNE_INSTR, 0x80) # start fast clock counter
        time.sleep(t_spi/1000.0) # wait for 10ms
        dev.wr(reg_OSC_TUNE_INSTR, 0xa0) # stop fast clock counter

    elif osc == 'slow':
        dev.wr(reg_OSC_TUNE_INSTR, 0xca) # start 10 slow clock cycles counter
        time.sleep(0.015) # wait for 15ms


    stat = dev.rd(reg_OSC_TUNE_STATUS) # read status

    # read counter
    count0 = dev.rd(reg_OSC_COUNT0)
    count1 = dev.rd(reg_OSC_COUNT1)
    count2 = dev.rd(reg_OSC_COUNT2)

    # turn of fast clock
    dev.wr(reg_OSC_TUNE_INSTR, 0x40)

    if stat == 0x80:
        count = (65536 * count2) + (256 * count1) + count0

    else:
        count = 0

    return count