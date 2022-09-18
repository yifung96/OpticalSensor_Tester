# -*- coding: utf-8 -*-
"""
Created on Fri Jul 19 16:57:27 2019

@author: yf_choong
"""

def rest_mode(dev, switch):
    """
    Disable or enable Rest mode

    Parameters
    ----------
    dev : object, typically a USB mouse
        Object should have IO methods i.e. SPI read, write

    switch: bool
        If True, enable Rest mode. If False, disable Rest mode.

    Returns
    -------
    stat : bool
        If True, Rest mode switched successfully.

    Examples
    --------
    >>> if rest_mode(dev, True):
    >>>     print "Rest on"
    >>> else:
    >>>     print "Rest off"

    Warns
    -----

    See Also
    --------

    Notes
    -----

    References
    ----------
    """

    reg_PERFORMANCE = dev.rega['PERFORMANCE']
    if switch:
        # Enable Rest mode, normal mode
        dev.wr(reg_PERFORMANCE, 0x00)
        stat = dev.rd(reg_PERFORMANCE) == 0x00
    else:
        # Disable Rest mode, force awake
        dev.wr(reg_PERFORMANCE, 0x80)
        stat = dev.rd(reg_PERFORMANCE) == 0x80

    return stat