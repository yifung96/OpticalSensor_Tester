# -*- coding: utf-8 -*-
"""
Created on Fri Jul 19 17:00:05 2019

@author: yf_choong
"""

import rest_mode

##############################################################################
# Oscillator output
def osc_out(dev, osc='fast', out='raw'):
    """
    Enable oscillator output for fast or slow clock through MOTION pin

    Parameters
    ----------
    dev : object, typically a USB mouse
        Object should have IO methods i.e. SPI read, write

    osc : {'fast', 'slow'}, optional
        Selects either fast or slow clock output

    out : {'raw', '1k', 'off'}, optional
        Selects either the raw or 1kHz frequency output.
        'off' disables osc out and selects normal mode

    Returns
    -------

    Examples
    --------
    >>> osc_out(dev)

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

    # aliases
    rest = rest_mode.rest_mode


    # register definitions
    reg_SPI_PAGE = dev.rega['SPI_PAGE']
    reg_PAD_HDRV = dev.rega['PAD_HDRV']
    reg_PAD_LDRV = dev.rega['PAD_LDRV']
    reg_CLKSEQ_CTRL5 = dev.rega['CLKSEQ_CTRL5']
    reg_CLKSEQ_CTRL6 = dev.rega['CLKSEQ_CTRL6']
    reg_CLKSEQ_CTRL7 = dev.rega['CLKSEQ_CTRL7']
    reg_PERFORMANCE = dev.rega['PERFORMANCE']


    # disable rest
    rest(dev, False)


    if out == 'raw':
        if osc == 'fast':
            # change MOTION pad drive to high
            dev.wr(reg_SPI_PAGE, 0x02) # switch to page 2
            dev.wr(reg_PAD_HDRV, 0x01) # high motion hdrv
            dev.wr(reg_PAD_LDRV, 0x01) # high motion ldrv

            dev.wr(reg_SPI_PAGE, 0x01) # switch to page 1
            dev.wr(reg_CLKSEQ_CTRL5, 0x0e) # enable 68MHz fast osc out

        elif osc == 'slow':
            dev.wr(reg_SPI_PAGE, 0x01) # switch to page 1
            dev.wr(reg_CLKSEQ_CTRL5, 0x0a) # enable 1kHz slow osc out


    elif out == '1k':
        if osc == 'fast':
            dev.wr(reg_SPI_PAGE, 0x01) # switch to page 1
            #dev.wr(reg_CLKSEQ_CTRL6, 0xcf) # 1kHz divider low byte
            #dev.wr(reg_CLKSEQ_CTRL7, 0xa6) # 1kHz divider high byte
            dev.wr(reg_CLKSEQ_CTRL5, 0x06) # enable 1kHz fast osc out

        elif osc == 'slow':
            dev.wr(reg_SPI_PAGE, 0x01) # switch to page 1
            dev.wr(reg_CLKSEQ_CTRL5, 0x0a) # enable 1kHz slow osc out


    elif out == 'off':
        # change MOTION pad drive to low
        dev.wr(reg_SPI_PAGE, 0x02) # switch to page 2
        dev.wr(reg_PAD_HDRV, 0x00) # low motion hdrv
        dev.wr(reg_PAD_LDRV, 0x00) # low motion ldrv

        dev.wr(reg_SPI_PAGE, 0x01) # switch to page 1
        dev.wr(reg_CLKSEQ_CTRL5, 0x00) # disable fast/slow osc out

        dev.wr(reg_SPI_PAGE, 0x00) # switch to page 0
        rest(dev, True) # enable rest


    # go back to page 0
    dev.wr(reg_SPI_PAGE, 0x00) # switch to page 0
