// $Id: proj_defines.v,v 1.455 2018/12/20 03:08:45 kkong Exp $
// Copyright (c) 2018, Avago Technologies, Inc.  All rights reserved.
// !!!DO NOT EDIT!!! This is a generated file based on:
//             defs_top.xml                  
//             defs_proj_mirror_page0.xml    
//             defs_proj_mirror_page1.xml    
//             defs_proj_mirror_page2.xml    
//             defs_proj_mirror_page3.xml    
//             defs_proj_mirror_page4.xml    
//             defs_proj_mirror_page5.xml    
//             defs_proj_mirror_page6.xml    
//             defs_proj_mirror_page7.xml    
//             defs_proj_mirror_page8.xml    
//             defs_proj_mirror_page9.xml    
//             defs_proj_mirror_page10.xml   
//             defs_proj_mirror_page11.xml   
//             defs_proj_mirror_page12.xml   
//             defs_proj_mirror_page13.xml   
//             defs_proj_mirror_page14.xml   
//             defs_proj_mirror_page15.xml   
//             defs_proj_mirror_page16.xml   
//             defs_proj_mirror_page17.xml   
//             defs_proj_mirror_page18.xml   
//             defs_proj_mirror_page19.xml   
//             defs_proj_mirror_page20.xml   
//             defs_proj_mirror_page21.xml   
//             defs_proj_mirror_page22.xml   
//             defs_proj_mirror_page23.xml   
//             defs_proj_page0.xml           
//             defs_proj_page1.xml           
//             defs_proj_page2.xml           
//             defs_proj_page3.xml           
//             defs_proj_page4.xml           
//             defs_proj_page5.xml           
//             defs_proj_page6.xml           
//             defs_proj_page7.xml           
//             defs_proj_page8.xml           
//             defs_proj_page9.xml           
//             defs_proj_page10.xml          
//             defs_proj_page11.xml          
//             defs_proj_page12.xml          
//             defs_proj_page13.xml          
//             defs_proj_page14.xml          
//             defs_proj_page15.xml          
//             defs_proj_page16.xml          
//             defs_proj_page17.xml          
//             defs_proj_page18.xml          
//             defs_proj_page19.xml          
//             defs_proj_page20.xml          
//             defs_proj_page21.xml          
//             defs_proj_page22.xml          
//             defs_proj_page23.xml          
// To make changes, edit the file(s) listed, above, 
// then run 'defs_xml2vlog_defs.pl'.
// Project: PLN259
//---------------------------------------------------------------------------



`define PROD_ID_WIDTH                                         8
`define REGA_PROD_ID                                          13'h00
`define PROD_ID_DEFAULT                                       8'h4f
`define PROD_ID_CHECK                                         8'h4f
`define PROD_ID                                               `PROD_ID_WIDTH, `REGA_PROD_ID, `PROD_ID_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x4f    PROD_ID
//                  Product ID
//                  0x4F: High Performance Gaming Mouse Sensor

`define REV_ID_WIDTH                                          8
`define REGA_REV_ID                                           13'h01
`define REV_ID_DEFAULT                                        8'h0
`define REV_ID_CHECK                                          8'h0
`define REV_ID                                                `REV_ID_WIDTH, `REGA_REV_ID, `REV_ID_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     REV_ID
//                  Revision ID
//                  00: 1st Rev
//                  01: 2nd Rev
//                  02: 3rd Rev
//                  ...  etc

`define MOTION_WIDTH                                          8
`define REGA_MOTION                                           13'h02
`define MOTION_DEFAULT                                        8'h0
`define MOTION_CHECK                                          8'h0
`define MOTION                                                `MOTION_WIDTH, `REGA_MOTION, `MOTION_DEFAULT
//  access       rw
//  atype        AP,w2r
//    7  0x0     MOTION
//                  1: Motion detected
//    6  0x0     OVERFLOW
//                  1: Motion overflow detected
//    5  0x0     POR_FLAG
//                  1: POR flag assert
//                  0: POR flag deassert
//    4  0x0     RESERVED
//                  reserved
//    3  0x0     LIFTED
//                  1: Sensor lifted (= Lift edge or Lift Squal)
//    2  0x0     DPI_DWNSHIFT
//                  1: DPI downshift detected in RUN mode
//  1:0  0x0     OP_MODE
//                  Operating Mode
//                  0x0: Run mode
//                  0x1: Rest 1
//                  0x2: Rest 2
//                  0x3: Rest 3

`define DELTA_X_LO_WIDTH                                      8
`define REGA_DELTA_X_LO                                       13'h03
`define DELTA_X_LO_DEFAULT                                    8'h0
`define DELTA_X_LO_CHECK                                      8'h0
`define DELTA_X_LO                                            `DELTA_X_LO_WIDTH, `REGA_DELTA_X_LO, `DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     DELTA_X_LO
//                  X displacement.  2's complement number.  It represents lower 8-bits of Delta_X (-32767 to +32767).

`define DELTA_X_HI_WIDTH                                      8
`define REGA_DELTA_X_HI                                       13'h04
`define DELTA_X_HI_DEFAULT                                    8'h0
`define DELTA_X_HI_CHECK                                      8'h0
`define DELTA_X_HI                                            `DELTA_X_HI_WIDTH, `REGA_DELTA_X_HI, `DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     DELTA_X_HI
//                  X displacement.  2's complement number.  It represents upper 8-bits of Delta_X (-32767 to +32767).

`define DELTA_Y_LO_WIDTH                                      8
`define REGA_DELTA_Y_LO                                       13'h05
`define DELTA_Y_LO_DEFAULT                                    8'h0
`define DELTA_Y_LO_CHECK                                      8'h0
`define DELTA_Y_LO                                            `DELTA_Y_LO_WIDTH, `REGA_DELTA_Y_LO, `DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     DELTA_Y_LO
//                  Y displacement.  2's complement number.  It represents lower 8-bits of Delta_Y (-32767 to +32767).

`define DELTA_Y_HI_WIDTH                                      8
`define REGA_DELTA_Y_HI                                       13'h06
`define DELTA_Y_HI_DEFAULT                                    8'h0
`define DELTA_Y_HI_CHECK                                      8'h0
`define DELTA_Y_HI                                            `DELTA_Y_HI_WIDTH, `REGA_DELTA_Y_HI, `DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     DELTA_Y_HI
//                  Y displacement.  2's complement number.  It represents upper 8-bits of Delta_Y (-32767 to +32767).

`define SQUAL_WIDTH                                           8
`define REGA_SQUAL                                            13'h07
`define SQUAL_DEFAULT                                         8'h0
`define SQUAL_CHECK                                           8'h0
`define SQUAL                                                 `SQUAL_WIDTH, `REGA_SQUAL, `SQUAL_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     SQUAL
//                  Surface quality

`define PIX_ACCUM_WIDTH                                       8
`define REGA_PIX_ACCUM                                        13'h08
`define PIX_ACCUM_DEFAULT                                     8'h0
`define PIX_ACCUM_CHECK                                       8'h0
`define PIX_ACCUM                                             `PIX_ACCUM_WIDTH, `REGA_PIX_ACCUM, `PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     PIX_ACCUM
//                  Accumulated Pixel Value
//                  The PIX_ACCUM register is the upper 8-bit of a 18-bit accumulated pixel value in a frame, i.e.  bits [17:10] are reported.  The average pixel value is calculated by PIX_ACCUM * (2^10) / (total pixels) = PIX_ACCUM * 1024 / (36*36).

`define PIX_MAX_WIDTH                                         8
`define REGA_PIX_MAX                                          13'h09
`define PIX_MAX_DEFAULT                                       8'h0
`define PIX_MAX_CHECK                                         8'h0
`define PIX_MAX                                               `PIX_MAX_WIDTH, `REGA_PIX_MAX, `PIX_MAX_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     PIX_MAX
//                  Maximum pixel value in a frame = PIX_MAX*4.
//                  PIX_MAX is the upper 8 bits of internal 10 bits maximum pixel value

`define PIX_MIN_WIDTH                                         8
`define REGA_PIX_MIN                                          13'h0a
`define PIX_MIN_DEFAULT                                       8'h0
`define PIX_MIN_CHECK                                         8'h0
`define PIX_MIN                                               `PIX_MIN_WIDTH, `REGA_PIX_MIN, `PIX_MIN_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     PIX_MIN
//                  Minimum pixel value in a frame = PIX_MIN*4.
//                  PIX_MIN is the upper 8 bits of internal 10 bits minimum pixel value

`define SHUT_LO_WIDTH                                         8
`define REGA_SHUT_LO                                          13'h0b
`define SHUT_LO_DEFAULT                                       8'h0
`define SHUT_LO_CHECK                                         8'h0
`define SHUT_LO                                               `SHUT_LO_WIDTH, `REGA_SHUT_LO, `SHUT_LO_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     SHUT_LO
//                  Lower 8-bit of shutter open time [7:0].

`define SHUT_HI_WIDTH                                         8
`define REGA_SHUT_HI                                          13'h0c
`define SHUT_HI_DEFAULT                                       8'h1
`define SHUT_HI_CHECK                                         8'h1
`define SHUT_HI                                               `SHUT_HI_WIDTH, `REGA_SHUT_HI, `SHUT_HI_DEFAULT
//  access       rw
//  atype        AP,w2r
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1     SHUT_HI
//                  Upper 4-bit of shutter open time [12:8].  Writing a 1 to bit 0 freezes the shutter (only valid in page 0).

`define EXT_WAKEUP_WIDTH                                      8
`define REGA_EXT_WAKEUP                                       13'h0d
`define EXT_WAKEUP_DEFAULT                                    8'h10
`define EXT_WAKEUP_CHECK                                      8'h10
`define EXT_WAKEUP                                            `EXT_WAKEUP_WIDTH, `REGA_EXT_WAKEUP, `EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP
//    7  0x0     EN_EXT_WAKEUP
//                  1: Enable External Wake Up
//                  0: Disable External Wake Up
//  6:5  0x0     RESERVED
//                  Reserved
//    4  0x1     EN_ACTIVE_HIGH
//                  1: Enable Active High Control on External Wake Up
//                  0: Enable Active Low Control on External Wake Up
//    3  0x0     EN_TESTMODE
//                  1: Enable Test Mode for External Wake Up
//                  0: Disable Test Mode for External Wake Up
//  2:1  0x0     IDLE_EXIT_CONFIG
//                  0x0: Enter Run after idle mode exit
//                  0x1: Enter Rest 1 after idle mode exit
//                  0x2: Enter Rest 2 after idle mode exit
//                  0x3: Enter Rest 3 after idle mode exit
//    0  0x0     FORCE_INTERNAL_WAKEUP
//                  1: Force Wake Up in test mode.
//                  0: Disable Wake Up in test mode

`define RESERVED_E_WIDTH                                      8
`define REGA_RESERVED_E                                       13'h0e
`define RESERVED_E_DEFAULT                                    8'h0
`define RESERVED_E_CHECK                                      8'h0
`define RESERVED_E                                            `RESERVED_E_WIDTH, `REGA_RESERVED_E, `RESERVED_E_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     RESERVED
//                  Reserved

`define SKIP_FRAMES_CNT_LO_WIDTH                              8
`define REGA_SKIP_FRAMES_CNT_LO                               13'h0f
`define SKIP_FRAMES_CNT_LO_DEFAULT                            8'h0
`define SKIP_FRAMES_CNT_LO_CHECK                              8'h0
`define SKIP_FRAMES_CNT_LO                                    `SKIP_FRAMES_CNT_LO_WIDTH, `REGA_SKIP_FRAMES_CNT_LO, `SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     SKIP_FRAMES_CNT_LO
//                  Reserved

`define SKIP_FRAMES_CNT_HI_WIDTH                              8
`define REGA_SKIP_FRAMES_CNT_HI                               13'h10
`define SKIP_FRAMES_CNT_HI_DEFAULT                            8'h0
`define SKIP_FRAMES_CNT_HI_CHECK                              8'h0
`define SKIP_FRAMES_CNT_HI                                    `SKIP_FRAMES_CNT_HI_WIDTH, `REGA_SKIP_FRAMES_CNT_HI, `SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     SKIP_FRAMES_CNT_HI
//                  Reserved

`define CVFR_PERIOD_LO_WIDTH                                  8
`define REGA_CVFR_PERIOD_LO                                   13'h11
`define CVFR_PERIOD_LO_DEFAULT                                8'h0
`define CVFR_PERIOD_LO_CHECK                                  8'h0
`define CVFR_PERIOD_LO                                        `CVFR_PERIOD_LO_WIDTH, `REGA_CVFR_PERIOD_LO, `CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     CVFR_PERIOD_LO
//                  CVFR period low byte

`define CVFR_PERIOD_HI_WIDTH                                  8
`define REGA_CVFR_PERIOD_HI                                   13'h12
`define CVFR_PERIOD_HI_DEFAULT                                8'h0
`define CVFR_PERIOD_HI_CHECK                                  8'h0
`define CVFR_PERIOD_HI                                        `CVFR_PERIOD_HI_WIDTH, `REGA_CVFR_PERIOD_HI, `CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     CVFR_PERIOD_HI
//                  CVFR period high byte

`define OBSERVATION_WIDTH                                     8
`define REGA_OBSERVATION                                      13'h15
`define OBSERVATION_DEFAULT                                   8'h80
`define OBSERVATION_CHECK                                     8'h80
`define OBSERVATION                                           `OBSERVATION_WIDTH, `REGA_OBSERVATION, `OBSERVATION_DEFAULT
//  access       rw
//  atype        AP,w2r
//  7:6  0x2     SPI_MODE
//                  Operating Mode
//                  0x0: 2-wire SPI (for test mode only)
//                  0x1: 3-wire SPI
//                  0x2: 4-wire SPI
//                  0x3: Invalid
//    5  0x0     NAV_DONE
//                  NAV done flag
//    4  0x0     COR_DONE
//                  COR done flag
//    3  0x0     LIFT_DONE
//                  LIFT done flag
//    2  0x0     DCR_DONE
//                  DCR done flag
//    1  0x0     ANA_DONE
//                  Analog done flag
//    0  0x0     FPC_START
//                  FPC start flag

`define BURST_MOTION_WIDTH                                    8
`define REGA_BURST_MOTION                                     13'h16
`define BURST_MOTION_DEFAULT                                  8'h0
`define BURST_MOTION_CHECK                                    8'h0
`define BURST_MOTION                                          `BURST_MOTION_WIDTH, `REGA_BURST_MOTION, `BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     BURST_MOTION
//                  BYTE[00] = Motion
//                  BYTE[01] = Observation
//                  BYTE[02] = Delta_X_L
//                  BYTE[03] = Delta_X_H
//                  BYTE[04] = Delta_Y_L
//                  BYTE[05] = Delta_Y_H
//                  BYTE[06] = SQUAL (this is the Squal count from the tracking Squal threshold)
//                  BYTE[07] = Pixel_Sum
//                  BYTE[08] = Maximum_Pixel
//                  BYTE[09] = Minimum_Pixel
//                  BYTE[10] = Shutter_Upper
//                  BYTE[11] = Shutter_Lower
//                  BYTE[12] = ledge index
//                  Default burst registers is from 0 to 11.
//                  To burst all registers, set SF_TUNE_BURST bit of REGA_CONFIG1 to 1.

`define SQUAL2_WIDTH                                          8
`define REGA_SQUAL2                                           13'h17
`define SQUAL2_DEFAULT                                        8'h0
`define SQUAL2_CHECK                                          8'h0
`define SQUAL2                                                `SQUAL2_WIDTH, `REGA_SQUAL2, `SQUAL2_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     SQUAL2
//                  Surface Quality.  Same implementation as Squal except that SQUAL2 uses a different threshold defined by either SURF_SQUAL_THRESH_FF or SURF_SQUAL_THRESH_PAF depending on filter type.

`define SPI_MODE_WIDTH                                        8
`define REGA_SPI_MODE                                         13'h18
`define SPI_MODE_DEFAULT                                      8'h0
`define SPI_MODE_CHECK                                        8'h0
`define SPI_MODE                                              `SPI_MODE_WIDTH, `REGA_SPI_MODE, `SPI_MODE_DEFAULT
//  access       wo
//  atype        AP
//  7:0  0x0     SPI_MODE_KEY
//                  4-wire SPI is selected by default
//                  Write 0x39 to enable 3-wire SPI mode
//                  Write 0x24 to enable 2-wire SPI mode
//                  Write any value other than 0x39 and 0x24 to enable 4-wire SPI
//                  SPI mode setting can be read out through observation register

`define OSC_TUNE_INSTR_WIDTH                                  8
`define REGA_OSC_TUNE_INSTR                                   13'h22
`define OSC_TUNE_INSTR_DEFAULT                                8'h0
`define OSC_TUNE_INSTR_CHECK                                  8'h0
`define OSC_TUNE_INSTR                                        `OSC_TUNE_INSTR_WIDTH, `REGA_OSC_TUNE_INSTR, `OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP
//  7:5  0x0     INSTR
//                  Instruction
//                  0x0: Reserved
//                  0x1: Reset Counter
//                  0x2: Start Fast Clock Measurement
//                  0x3: Stop Fast Clock Measurement
//                  0x4: Reserved
//                  0x5: Reset Counter
//                  0x6: Start Slow Clock Measurement
//                  0x7: Reserved
//  4:1  0x0     SLOW_CLK_CNT
//                  Number of slow clock (divided by 2) for the manual slow clock measurment
//    0  0x0     AUTO_CLK_TUNE_EN
//                  Start the Auto Clock Tuning

`define OSC_TUNE_INSTR_SLOW_WIDTH                             8
`define REGA_OSC_TUNE_INSTR_SLOW                              13'h23
`define OSC_TUNE_INSTR_SLOW_DEFAULT                           8'h0
`define OSC_TUNE_INSTR_SLOW_CHECK                             8'h0
`define OSC_TUNE_INSTR_SLOW                                   `OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_OSC_TUNE_INSTR_SLOW, `OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       rw
//  atype        AP
//    7  0x0     SCLK_2MS_SEL
//                  Set this bit if tester polling rate is 2ms, else tester polling rate need to be 1ms if this bit is 0
//    6  0x0     FAST_SELECT
//                  Fast mode is selected for auto-clock tuning
//    5  0x0     MED_SELECT
//                  Med mode is selected for auto-clock tuning
//    4  0x0     SLOW_SELECT
//                  Slow mode is selected for auto-clock tuning
//  3:2  0x0     OSC_TUNE_CLKSEL_FAST
//                  CLKSEL for OSC_FAST_CLK used in DIV clock generation
//                  0x00: TIED to LOW
//                  0x01: OSC_TUNE_CLK_68M
//                  0x02: OSC_TUNE_CLK_5k
//                  0x03: OSC_TUNE_CLK_1M
//  1:0  0x0     OSC_TUNE_CLKSEL_SLOW
//                  CLKSEL for OSC_SLOW_CLK in OSC_TUNE manual slow tuning
//                  0x00: SCLK_1MS_PULSE
//                  0x01: OSC_TUNE_CLK_68M
//                  0x02: OSC_TUNE_CLK_5k
//                  0x03: OSC_TUNE_CLK_1M

`define PRBS_MODE_WIDTH                                       8
`define REGA_PRBS_MODE                                        13'h30
`define PRBS_MODE_DEFAULT                                     8'h0
`define PRBS_MODE_CHECK                                       8'h0
`define PRBS_MODE                                             `PRBS_MODE_WIDTH, `REGA_PRBS_MODE, `PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP
//  7:0  0x0     PRBS_MODE
//                  PRBS mode
//                  Write 0xc3 to enable prbs mode.
//                  Power-cycle the chip to exit prbs mode and resume normal operation.

`define POWERDOWN_WIDTH                                       8
`define REGA_POWERDOWN                                        13'h32
`define POWERDOWN_DEFAULT                                     8'h0
`define POWERDOWN_CHECK                                       8'h0
`define POWERDOWN                                             `POWERDOWN_WIDTH, `REGA_POWERDOWN, `POWERDOWN_DEFAULT
//  access       wo
//  atype        AP
//    7  0x0     EFUSE_LOAD_INH
//                  1: EFUSE auto load inhibit.
//                  EFUSE auto load is inhibited when enabled.  After this bit is enabled, reset the chip for inhibit to take effect.  Power cycle the chip to exit inhibit.
//    6  0x0     FPCDIV2_SEL
//                  1: Select internal fpc clock /2 mode.
//                  Reset the chip to start normal operation with FPC clock divided by 2.  Power cycle the chip to exit FPC clock /2 mode.  FPC clock refers to the internal 1MHz FPC oscillator.
//    5  0x0     ALL_CLKS_OFF
//                  1: Enable all clocks off mode
//                  Turn all clocks off.  This is for debug purposes only.  This bit is only reset through the power-on reset signal.
//    4  0x0     ALL_CLKS_ON
//                  1: Enable all clocks on mode
//                  Turn all clocks on.  This is for debug purposes only.  This bit is only reset through the power-on reset signal.
//    3  0x0     SLOWDIV2_SEL
//                  1: Select internal slow clock /2 mode.
//                  Reset the chip to start normal operation with slow clock divided by 2.  Power cycle the chip to exit slow clock /2 mode.  Slow clock refers to the internal 5kHz hibernate oscillator.
//    2  0x0     FASTDIV2_SEL
//                  1: Select internal fast clock /2 mode.
//                  Reset the chip to start normal operation with fast clock divided by 2.  Power cycle the chip to exit fast clock /2 mode.  Fast clock refers to the internal 68MHz oscillator.
//    1  0x0     POWERDOWN
//                  1: Shutdown mode.  This is equivalent to writing 0xb6 to the SHUTDOWN (0x3b) register.
//                  Refer to instructions for the SHUTDOWN register.
//                  This bit is also tied to the PAD_FILT_EN port in the PADMUX block.  This is a bug and should be disconnected for new projects.  Analog team confirmed that the PAD_D_XCLK_TO_DIG_FILT signal is not used and shouldn't be connected, so this bug is left as is in Orca4.
//    0  0x0     EXTCLK_SEL
//                  1: Select external clock mode.  Internal oscillator needs to be powered off manually.
//                  Reset the chip to start normal operation with external clock mode.  Power cycle the chip to exit external clock mode.

`define CRC0_WIDTH                                            8
`define REGA_CRC0                                             13'h33
`define CRC0_DEFAULT                                          8'h0
`define CRC0_CHECK                                            8'h0
`define CRC0                                                  `CRC0_WIDTH, `REGA_CRC0, `CRC0_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     CRC0
//                  CRC0

`define CRC1_WIDTH                                            8
`define REGA_CRC1                                             13'h34
`define CRC1_DEFAULT                                          8'h0
`define CRC1_CHECK                                            8'h0
`define CRC1                                                  `CRC1_WIDTH, `REGA_CRC1, `CRC1_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     CRC1
//                  CRC1

`define CRC2_WIDTH                                            8
`define REGA_CRC2                                             13'h35
`define CRC2_DEFAULT                                          8'h0
`define CRC2_CHECK                                            8'h0
`define CRC2                                                  `CRC2_WIDTH, `REGA_CRC2, `CRC2_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     CRC2
//                  CRC2

`define CRC3_WIDTH                                            8
`define REGA_CRC3                                             13'h36
`define CRC3_DEFAULT                                          8'h0
`define CRC3_CHECK                                            8'h0
`define CRC3                                                  `CRC3_WIDTH, `REGA_CRC3, `CRC3_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     CRC3
//                  CRC3

`define IOSTATUS_WIDTH                                        8
`define REGA_IOSTATUS                                         13'h37
`define IOSTATUS_DEFAULT                                      8'h0
`define IOSTATUS_CHECK                                        8'h0
`define IOSTATUS                                              `IOSTATUS_WIDTH, `REGA_IOSTATUS, `IOSTATUS_DEFAULT
//  access       ro
//  atype        AP
//    7  0x0     WATCHDOG
//                  0: No watchdog timeout
//                  1: Watchdog timeout triggered
//                  Watchdog timeout = 2.5s @ 1kHz slow osc
//  6:2  0x0     RESERVED
//                  Reserved
//    1  0x0     TAP read status
//                  0: TAP read disabled
//                  1: TAP read enabled
//    0  0x0     TAP write status
//                  0: TAP write disabled
//                  1: TAP write enabled

`define TAP_KEY_WO_WIDTH                                      8
`define REGA_TAP_KEY_WO                                       13'h38
`define TAP_KEY_WO_DEFAULT                                    8'h0
`define TAP_KEY_WO_CHECK                                      8'h0
`define TAP_KEY_WO                                            `TAP_KEY_WO_WIDTH, `REGA_TAP_KEY_WO, `TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP
//  7:0  0x0     TAP_WO
//                  TAP registers write-only access.  Write 0x00 to enable.

`define TAP_KEY_WIDTH                                         8
`define REGA_TAP_KEY                                          13'h39
`define TAP_KEY_DEFAULT                                       8'hb9
`define TAP_KEY_CHECK                                         8'hb9
`define TAP_KEY                                               `TAP_KEY_WIDTH, `REGA_TAP_KEY, `TAP_KEY_DEFAULT
//  access       wo
//  atype        AP
//  7:0  0xb9    TAP_KEY
//                  TAP registers read/write access.  Write 0xb9 to enable.

`define POWER_UP_RESET_WIDTH                                  8
`define REGA_POWER_UP_RESET                                   13'h3a
`define POWER_UP_RESET_DEFAULT                                8'h0
`define POWER_UP_RESET_CHECK                                  8'h0
`define POWER_UP_RESET                                        `POWER_UP_RESET_WIDTH, `REGA_POWER_UP_RESET, `POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP
//  7:0  0x0     POWER_UP_RESET
//                  Power up reset
//                  Write 0x5a for full chip reset

`define SHUTDOWN_WIDTH                                        8
`define REGA_SHUTDOWN                                         13'h3b
`define SHUTDOWN_DEFAULT                                      8'h0
`define SHUTDOWN_CHECK                                        8'h0
`define SHUTDOWN                                              `SHUTDOWN_WIDTH, `REGA_SHUTDOWN, `SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP
//  7:0  0x0     SHUTDOWN
//                  Chip shutdown.  This is also used for IDDQ test.
//                  Write 0xb6 to power down the chip.
//                  Write 0x5a to register 0x3a (POWER_UP_RESET) to reset the chip in order to wake-up.

`define SCAN_MODE_WIDTH                                       8
`define REGA_SCAN_MODE                                        13'h3c
`define SCAN_MODE_DEFAULT                                     8'h0
`define SCAN_MODE_CHECK                                       8'h0
`define SCAN_MODE                                             `SCAN_MODE_WIDTH, `REGA_SCAN_MODE, `SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP
//  7:0  0x0     SCAN_MODE
//                  Scan mode
//                  Write 0xca to enable scan mode.
//                  Power-cycle the chip to exit scan mode and resume normal operation.

`define SPI_PAGE_WIDTH                                        8
`define REGA_SPI_PAGE                                         13'h7f
`define SPI_PAGE_DEFAULT                                      8'h0
`define SPI_PAGE_CHECK                                        8'h0
`define SPI_PAGE                                              `SPI_PAGE_WIDTH, `REGA_SPI_PAGE, `SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP
//  7:0  0x0     SPI_PAGE0
//                  0x0: SPI page 0
//                  0x1: SPI page 1
//                  0x2: SPI page 2
//                  0x3: SPI page 3

`define PERFORMANCE_WIDTH                                     8
`define REGA_PERFORMANCE                                      13'h40
`define PERFORMANCE_DEFAULT                                   8'h0
`define PERFORMANCE_CHECK                                     8'h0
`define PERFORMANCE                                           `PERFORMANCE_WIDTH, `REGA_PERFORMANCE, `PERFORMANCE_DEFAULT
//  access       rw
//  atype        S
//    7  0x0     FORCE_AWAKE
//                  1: force awake
//  6:5  0x0     FORCE_REST
//                  0x0: Normal mode
//                  0x1: Force REST 1
//                  0x2: Force REST 2
//                  0x3: Force REST 3
//  4:2  0x0     SPARE
//                  Spare bits
//  1:0  0x0     OPERATING_MODE
//                  0x3: Corded Mode
//                  0x0: High Performance Mode
//                  0x1: Low Performance Mode
//                  0x2: Office Mode

`define LIFT_SQ_SFT_TH_WIDTH                                  8
`define REGA_LIFT_SQ_SFT_TH                                   13'h41
`define LIFT_SQ_SFT_TH_DEFAULT                                8'h8
`define LIFT_SQ_SFT_TH_CHECK                                  8'h8
`define LIFT_SQ_SFT_TH                                        `LIFT_SQ_SFT_TH_WIDTH, `REGA_LIFT_SQ_SFT_TH, `LIFT_SQ_SFT_TH_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x8     LIFT_SQ_SFT_TH
//                  If surface tuning mode enabled, Lifted flag is asserted if 10b-SQ is lower than this threshold.

`define LIFT_SQ_SFT_TH_HYST_WIDTH                             8
`define REGA_LIFT_SQ_SFT_TH_HYST                              13'h42
`define LIFT_SQ_SFT_TH_HYST_DEFAULT                           8'h10
`define LIFT_SQ_SFT_TH_HYST_CHECK                             8'h10
`define LIFT_SQ_SFT_TH_HYST                                   `LIFT_SQ_SFT_TH_HYST_WIDTH, `REGA_LIFT_SQ_SFT_TH_HYST, `LIFT_SQ_SFT_TH_HYST_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x10    LIFT_SQ_SFT_TH_HYST
//                  If surface tuning mode enabled, Lifted flag is deasserted if 10b-SQ is higher than this threshold.

`define SQUAL_THRESH_FINAL_WIDTH                              8
`define REGA_SQUAL_THRESH_FINAL                               13'h43
`define SQUAL_THRESH_FINAL_DEFAULT                            8'ha
`define SQUAL_THRESH_FINAL_CHECK                              8'ha
`define SQUAL_THRESH_FINAL                                    `SQUAL_THRESH_FINAL_WIDTH, `REGA_SQUAL_THRESH_FINAL, `SQUAL_THRESH_FINAL_DEFAULT
//  access       ro
//  atype        S
//  7:0  0xa     SQUAL_THRESH_FINAL
//                  This register reads back the final squal threshold used by DCR

`define MISC_SETTINGS_WIDTH                                   8
`define REGA_MISC_SETTINGS                                    13'h46
`define MISC_SETTINGS_DEFAULT                                 8'hfa
`define MISC_SETTINGS_CHECK                                   8'hfa
`define MISC_SETTINGS                                         `MISC_SETTINGS_WIDTH, `REGA_MISC_SETTINGS, `MISC_SETTINGS_DEFAULT
//  access       rw
//  atype        S
//  7:3  0x1f    MSR
//                  Mininum number of features to wakeup from rest.
//                  Units in multiple of 2, comparing to internal Squal
//  2:0  0x2     MT
//                  Enter Rest if accumulated motion (abs x+y) < this threshold
//                  This register is write-only.

`define SET_RESOLUTION_WIDTH                                  8
`define REGA_SET_RESOLUTION                                   13'h47
`define SET_RESOLUTION_DEFAULT                                8'h0
`define SET_RESOLUTION_CHECK                                  8'h0
`define SET_RESOLUTION                                        `SET_RESOLUTION_WIDTH, `REGA_SET_RESOLUTION, `SET_RESOLUTION_DEFAULT
//  access       rw
//  atype        A
//  7:1  0x0     RESERVED
//                  Reserved
//    0  0x0     SET_RES_BUSY_FLAG
//                  Any write to SET_RESOLUTION register will set this flag
//                  1: Not allowed to write new resolution settings
//                  0: Allowed to write new resolution settings

`define RESOLUTION_X_L_WIDTH                                  8
`define REGA_RESOLUTION_X_L                                   13'h48
`define RESOLUTION_X_L_DEFAULT                                8'h63
`define RESOLUTION_X_L_CHECK                                  8'h63
`define RESOLUTION_X_L                                        `RESOLUTION_X_L_WIDTH, `REGA_RESOLUTION_X_L, `RESOLUTION_X_L_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x63    RESOLUTION_X_L
//                  Theoretical resolution is calculated by: ({RESOLUTION_X_H,RESOLUTION_X_L} + 1) * DPI step
//                  DPI step is set in STEP_DPI_X_H and STEP_DPI_X_L registers

`define RESOLUTION_X_H_WIDTH                                  8
`define REGA_RESOLUTION_X_H                                   13'h49
`define RESOLUTION_X_H_DEFAULT                                8'h0
`define RESOLUTION_X_H_CHECK                                  8'h0
`define RESOLUTION_X_H                                        `RESOLUTION_X_H_WIDTH, `REGA_RESOLUTION_X_H, `RESOLUTION_X_H_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     RESOLUTION_X_H
//                  Theoretical resolution is calculated by: ({RESOLUTION_X_H,RESOLUTION_X_L} + 1) * DPI step
//                  DPI step is set in STEP_DPI_X_H and STEP_DPI_X_L registers

`define RESOLUTION_Y_L_WIDTH                                  8
`define REGA_RESOLUTION_Y_L                                   13'h4a
`define RESOLUTION_Y_L_DEFAULT                                8'h63
`define RESOLUTION_Y_L_CHECK                                  8'h63
`define RESOLUTION_Y_L                                        `RESOLUTION_Y_L_WIDTH, `REGA_RESOLUTION_Y_L, `RESOLUTION_Y_L_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x63    RESOLUTION_Y_L
//                  Theoretical resolution is calculated by: ({RESOLUTION_Y_H,RESOLUTION_Y_L} + 1) * DPI step
//                  DPI step is set in STEP_DPI_Y_H and STEP_DPI_Y_L registers
//                  This register is only applicable if RESOLUTION_INDEPENDANT is set to 1

`define RESOLUTION_Y_H_WIDTH                                  8
`define REGA_RESOLUTION_Y_H                                   13'h4b
`define RESOLUTION_Y_H_DEFAULT                                8'h0
`define RESOLUTION_Y_H_CHECK                                  8'h0
`define RESOLUTION_Y_H                                        `RESOLUTION_Y_H_WIDTH, `REGA_RESOLUTION_Y_H, `RESOLUTION_Y_H_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     RESOLUTION_Y_H
//                  Theoretical resolution is calculated by: ({RESOLUTION_Y_H,RESOLUTION_Y_L} + 1) * DPI step
//                  DPI step is set in STEP_DPI_Y_H and STEP_DPI_Y_L registers
//                  This register is only applicable if RESOLUTION_INDEPENDANT is set to 1

`define MOTION_EXT_WIDTH                                      8
`define REGA_MOTION_EXT                                       13'h4c
`define MOTION_EXT_DEFAULT                                    8'h0
`define MOTION_EXT_CHECK                                      8'h0
`define MOTION_EXT                                            `MOTION_EXT_WIDTH, `REGA_MOTION_EXT, `MOTION_EXT_DEFAULT
//  access       ro
//  atype        A
//    7  0x0     MOTION_EXT
//                  1: motion occurred
//  6:5  0x0     RESERVED
//                  Reserved
//    4  0x0     Delta Y overflow
//                  1: DeltaY overflow
//    3  0x0     Delta X overflow
//                  1: Delta X overflow
//  2:0  0x0     RESERVED
//                  Reserved

`define CONFIG1_WIDTH                                         8
`define REGA_CONFIG1                                          13'h4d
`define CONFIG1_DEFAULT                                       8'h70
`define CONFIG1_CHECK                                         8'h70
`define CONFIG1                                               `CONFIG1_WIDTH, `REGA_CONFIG1, `CONFIG1_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     RESERVED
//                  Reserved
//    6  0x1     REST_CLR_ACC
//                  Clear accum during rest mode
//    5  0x1     SF_TUNE_BURST
//                  Surface Tune Burst Sequence
//                  0: BYTE[00] to BYTE[11] - Normal burst sequence
//                  1: BYTE[00] to BYTE[20] - Added with ledge_index and surface tuning squal thresh registers
//    4  0x1     ENABLE_WRITE_PULSE_FILTER
//                  Enable Write Pulse Filter
//                  0: Disable write pulse filter
//                  1: Enable write pulse filter to remove the second asynchronous write pulse
//    3  0x0     ZERO_MOTION_DISABLE
//                  Zero motion when there is a repeated read during clock off
//    2  0x0     CVFR_BURST_MODE
//                  0: SKIP FRAMES
//                  1: FRAME PERIOD
//    1  0x0     FORCE_CVFR_ON
//                  Force CVFR on for glass and non-glass mode
//    0  0x0     FORCE_CVFR_OFF
//                  Force CVFR off for glass and non-glass mode

`define RES_DOWNSHIFT_X_H_WIDTH                               8
`define REGA_RES_DOWNSHIFT_X_H                                13'h4e
`define RES_DOWNSHIFT_X_H_DEFAULT                             8'h1
`define RES_DOWNSHIFT_X_H_CHECK                               8'h1
`define RES_DOWNSHIFT_X_H                                     `RES_DOWNSHIFT_X_H_WIDTH, `REGA_RES_DOWNSHIFT_X_H, `RES_DOWNSHIFT_X_H_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x1     DOWNSHIFT_RESOLUTION_X_H
//                  Theoretical resolution is calculated by: ({RES_DOWNSHIFT_X_H,RES_DOWNSHIFT_X_L} + 1) * DPI step
//                  DPI step is set in STEP_DPI_X_DS_H and STEP_DPI_X_DS_L registers

`define RES_DOWNSHIFT_X_L_WIDTH                               8
`define REGA_RES_DOWNSHIFT_X_L                                13'h4f
`define RES_DOWNSHIFT_X_L_DEFAULT                             8'h40
`define RES_DOWNSHIFT_X_L_CHECK                               8'h40
`define RES_DOWNSHIFT_X_L                                     `RES_DOWNSHIFT_X_L_WIDTH, `REGA_RES_DOWNSHIFT_X_L, `RES_DOWNSHIFT_X_L_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x40    DOWNSHIFT_RESOLUTION_X_L
//                  Theoretical resolution is calculated by: ({RES_DOWNSHIFT_X_H,RES_DOWNSHIFT_X_L} + 1) * DPI step
//                  DPI step is set in STEP_DPI_X_DS_H and STEP_DPI_X_DS_L registers

`define PIX_GRAB_EN_WIDTH                                     1
`define REGA_PIX_GRAB_EN                                      13'h50
`define PIX_GRAB_EN_DEFAULT                                   1'h1
`define PIX_GRAB_EN_CHECK                                     1'h1
`define PIX_GRAB_EN                                           `PIX_GRAB_EN_WIDTH, `REGA_PIX_GRAB_EN, `PIX_GRAB_EN_DEFAULT
//  access       rw
//  atype        A
//    0  0x1     PIX_GRAB_EN
//                  Enable the PIX_GRAB block

`define RES_DOWNSHIFT_Y_H_WIDTH                               8
`define REGA_RES_DOWNSHIFT_Y_H                                13'h51
`define RES_DOWNSHIFT_Y_H_DEFAULT                             8'h1
`define RES_DOWNSHIFT_Y_H_CHECK                               8'h1
`define RES_DOWNSHIFT_Y_H                                     `RES_DOWNSHIFT_Y_H_WIDTH, `REGA_RES_DOWNSHIFT_Y_H, `RES_DOWNSHIFT_Y_H_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x1     DOWNSHIFT_RESOLUTION_Y_H
//                  Theoretical resolution is calculated by: ({RES_DOWNSHIFT_Y_H,RES_DOWNSHIFT_Y_L} + 1) * DPI step
//                  DPI step is set in STEP_DPI_Y_DS_H and STEP_DPI_Y_DS_L registers

`define RES_DOWNSHIFT_Y_L_WIDTH                               8
`define REGA_RES_DOWNSHIFT_Y_L                                13'h52
`define RES_DOWNSHIFT_Y_L_DEFAULT                             8'h40
`define RES_DOWNSHIFT_Y_L_CHECK                               8'h40
`define RES_DOWNSHIFT_Y_L                                     `RES_DOWNSHIFT_Y_L_WIDTH, `REGA_RES_DOWNSHIFT_Y_L, `RES_DOWNSHIFT_Y_L_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x40    DOWNSHIFT_RESOLUTION_Y_L
//                  Theoretical resolution is calculated by: ({RES_DOWNSHIFT_Y_H,RES_DOWNSHIFT_Y_L} + 1) * DPI step
//                  DPI step is set in STEP_DPI_Y_DS_H and STEP_DPI_Y_DS_L registers

`define MIN_SQUAL_RUN_FINAL_WIDTH                             8
`define REGA_MIN_SQUAL_RUN_FINAL                              13'h53
`define MIN_SQUAL_RUN_FINAL_DEFAULT                           8'h0
`define MIN_SQUAL_RUN_FINAL_CHECK                             8'h0
`define MIN_SQUAL_RUN_FINAL                                   `MIN_SQUAL_RUN_FINAL_WIDTH, `REGA_MIN_SQUAL_RUN_FINAL, `MIN_SQUAL_RUN_FINAL_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     MIN_SQUAL_RUN_FINAL
//                  This register reads back the final min squal run threshold used by DCR

`define LIFTED_FF_MOVAVG_WIDTH                                8
`define REGA_LIFTED_FF_MOVAVG                                 13'h54
`define LIFTED_FF_MOVAVG_DEFAULT                              8'h54
`define LIFTED_FF_MOVAVG_CHECK                                8'h54
`define LIFTED_FF_MOVAVG                                      `LIFTED_FF_MOVAVG_WIDTH, `REGA_LIFTED_FF_MOVAVG, `LIFTED_FF_MOVAVG_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     Reserved
//                  -
//  6:4  0x5     LIFTED_MOVAVG
//                  Moving Average Filter Selection for Lifted
//                  0x0: 1 tap
//                  0x1: 2 taps
//                  0x2: 4 taps
//                  0x3: 8 taps
//                  0x4: 16 taps
//                  0x5: 32 taps
//    3  0x0     Reserved
//                  -
//  2:0  0x4     FF_MOVAVG
//                  Moving Average Filter Selection for Lifted
//                  0x0: 1 tap
//                  0x1: 2 taps
//                  0x2: 4 taps
//                  0x3: 8 taps
//                  0x4: 16 taps
//                  0x5: 32 taps

`define CLKSEQ_CTRL1_WIDTH                                    8
`define REGA_CLKSEQ_CTRL1                                     13'h55
`define CLKSEQ_CTRL1_DEFAULT                                  8'h0
`define CLKSEQ_CTRL1_CHECK                                    8'h0
`define CLKSEQ_CTRL1                                          `CLKSEQ_CTRL1_WIDTH, `REGA_CLKSEQ_CTRL1, `CLKSEQ_CTRL1_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     force_osc_tune_always_on
//                  1: Force oscillator tuning clock always on.
//    6  0x0     force_sft_always_on
//                  1: Force SFT clock always on.
//    5  0x0     crc_clken
//                  1: Enable CRC clock.
//    4  0x0     prbs_clken
//                  1: Enable PRBS clock.
//    3  0x0     vid_clken
//                  1: Enable fast video dump clock.
//    2  0x0     pix_grab_clken
//                  1: Enable pixel grabber clock.
//    1  0x0     osc_tune_clken
//                  1: Enable osc tune clock.
//    0  0x0     efuse_clken
//                  1: Enable EFUSE clock.

`define ANGLE_SNAP1_WIDTH                                     8
`define REGA_ANGLE_SNAP1                                      13'h56
`define ANGLE_SNAP1_DEFAULT                                   8'hd
`define ANGLE_SNAP1_CHECK                                     8'hd
`define ANGLE_SNAP1                                           `ANGLE_SNAP1_WIDTH, `REGA_ANGLE_SNAP1, `ANGLE_SNAP1_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     ANGLE_SNAP_EN
//                  0: angle snap disable
//                  1: angle snap enable
//  6:0  0xd     ANGLE_SNAP_THRESH
//                  Angle Snap Threshold
//                  Snapping angle = Tan-1((ANGLE_SNAP_THRESH - 1) / (ANGLE_SNAP_REREF_THRESH x 64))
//                  = Tan-1(12/128) = 5.35 degree (default)

`define ANGLE_SNAP2_WIDTH                                     8
`define REGA_ANGLE_SNAP2                                      13'h57
`define ANGLE_SNAP2_DEFAULT                                   8'ha0
`define ANGLE_SNAP2_CHECK                                     8'ha0
`define ANGLE_SNAP2                                           `ANGLE_SNAP2_WIDTH, `REGA_ANGLE_SNAP2, `ANGLE_SNAP2_DEFAULT
//  access       rw
//  atype        A
//  7:5  0x5     ANGLE_SNAP_MOVAVG
//                  Moving Average Filter Selection for Angle Snap
//                  0x0: 1 tap
//                  0x1: 2 taps
//                  0x2: 4 taps
//                  0x3: 8 taps
//                  0x4: 16 taps
//                  0x5: 32 taps
//  4:0  0x0     RESERVED
//                  Reserved

`define PIX_GRAB_WIDTH                                        8
`define REGA_PIX_GRAB                                         13'h58
`define PIX_GRAB_DEFAULT                                      8'h0
`define PIX_GRAB_CHECK                                        8'h0
`define PIX_GRAB                                              `PIX_GRAB_WIDTH, `REGA_PIX_GRAB, `PIX_GRAB_DEFAULT
//  access       rw
//  atype        A,w2r
//  7:0  0x0     PIX_ADC
//                  Pixel ADC data

`define PIX_GRAB_STATUS_WIDTH                                 8
`define REGA_PIX_GRAB_STATUS                                  13'h59
`define PIX_GRAB_STATUS_DEFAULT                               8'h0
`define PIX_GRAB_STATUS_CHECK                                 8'h0
`define PIX_GRAB_STATUS                                       `PIX_GRAB_STATUS_WIDTH, `REGA_PIX_GRAB_STATUS, `PIX_GRAB_STATUS_DEFAULT
//  access       ro
//  atype        A
//    7  0x0     PG_VALID
//                  1: Pixel Grabber Valid
//    6  0x0     PG_FIRST
//                  1: Pixel Grabber First
//  5:0  0x0     RESERVED
//                  Reserved

`define FUNC_CTRL_WIDTH                                       8
`define REGA_FUNC_CTRL                                        13'h5a
`define FUNC_CTRL_DEFAULT                                     8'h80
`define FUNC_CTRL_CHECK                                       8'h80
`define FUNC_CTRL                                             `FUNC_CTRL_WIDTH, `REGA_FUNC_CTRL, `FUNC_CTRL_DEFAULT
//  access       rw
//  atype        S
//    7  0x1     MA_TABLE_SEL_ENABLE
//                  0: Disable.  Use moving average defined in bit[6:4]
//                  1: Enable.  Use moving average from MA_TABLE1, 2, 3 or 4
//                  defined in register d51~d58
//  6:4  0x0     MOVAVG_CTL_SEL
//                  Moving Average Filter Selection
//                  0: 1 tap
//                  1: 2 taps
//                  2: 4 taps
//                  3: 8 taps
//                  4: 16 taps
//                  5: 32 taps
//  3:2  0x0     RESERVED
//                  Reserved
//    1  0x0     SHUT_ADAPT_REST_SEL
//                  Added for FPGA only
//                  0: Add 1/4 of the shutter
//                  1: Add 1/8 9f the shutter
//    0  0x0     SHUT_ADAPT_REST
//                  Shutter increase 25% when downshifting in REST modes
//                  Added for FPGA only
//                  0: Disable
//                  1: Enable

`define AXIS_CONTROL_WIDTH                                    8
`define REGA_AXIS_CONTROL                                     13'h5b
`define AXIS_CONTROL_DEFAULT                                  8'h60
`define AXIS_CONTROL_CHECK                                    8'h60
`define AXIS_CONTROL                                          `AXIS_CONTROL_WIDTH, `REGA_AXIS_CONTROL, `AXIS_CONTROL_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     SWAP_XY
//                  1: swap X,Y directions
//    6  0x1     INV_Y
//                  1: invert Y direction
//    5  0x1     INV_X
//                  1: invert X direction
//  4:0  0x0     RESERVED
//                  Reserved

`define MOTION_CTRL_WIDTH                                     8
`define REGA_MOTION_CTRL                                      13'h5c
`define MOTION_CTRL_DEFAULT                                   8'h2
`define MOTION_CTRL_CHECK                                     8'h2
`define MOTION_CTRL                                           `MOTION_CTRL_WIDTH, `REGA_MOTION_CTRL, `MOTION_CTRL_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     MOTION_ACTIVE_HI
//                  0: motion active low
//                  1: motion active high
//  6:3  0x0     RESERVED
//                  Reserved
//    2  0x0     BYPASS_SET_RESOLUTION
//                  set to bypass SET_RESOLUTION
//    1  0x1     RESOLUTION_INDEPENDENT
//                  Independent Axis Resolution Mode
//                  0: RESOLUTION_Y take the value from RESOLUTION_Y_[H|L]
//                  1: RESOLUTION_Y take the value from RESOLUTION_X_[H|L]
//    0  0x0     REP_MREAD_FLAG_EN
//                  Replace XY overflow bit in motion register with repeat motion read flag

`define ANA_PD_CTRL0_WIDTH                                    8
`define REGA_ANA_PD_CTRL0                                     13'h5d
`define ANA_PD_CTRL0_DEFAULT                                  8'h0
`define ANA_PD_CTRL0_CHECK                                    8'h0
`define ANA_PD_CTRL0                                          `ANA_PD_CTRL0_WIDTH, `REGA_ANA_PD_CTRL0, `ANA_PD_CTRL0_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     LDO_ACTIVE_OPT
//    6  0x0     LDO_BOOST_EN
//    5  0x0     LDO_S_1P6V_SEL_BOOST
//  4:0  0x0     LDO_S_TRIM_BOOST

`define INV_REV_ID_WIDTH                                      8
`define REGA_INV_REV_ID                                       13'h5e
`define INV_REV_ID_DEFAULT                                    8'hff
`define INV_REV_ID_CHECK                                      8'hff
`define INV_REV_ID                                            `INV_REV_ID_WIDTH, `REGA_INV_REV_ID, `INV_REV_ID_DEFAULT
//  access       ro
//  atype        A
//  7:0  0xff    INV_REV_ID
//                  Inverse revision ID

`define INV_PROD_ID_WIDTH                                     8
`define REGA_INV_PROD_ID                                      13'h5f
`define INV_PROD_ID_DEFAULT                                   8'hb0
`define INV_PROD_ID_CHECK                                     8'hb0
`define INV_PROD_ID                                           `INV_PROD_ID_WIDTH, `REGA_INV_PROD_ID, `INV_PROD_ID_DEFAULT
//  access       ro
//  atype        A
//  7:0  0xb0    INV_PROD_ID
//                  Inverse product ID.  Used for SPI port test.
//                  0xb0: High Performance Gaming Mouse Sensor

`define TAP_KEY_LT_WIDTH                                      8
`define REGA_TAP_KEY_LT                                       13'h61
`define TAP_KEY_LT_DEFAULT                                    8'had
`define TAP_KEY_LT_CHECK                                      8'had
`define TAP_KEY_LT                                            `TAP_KEY_LT_WIDTH, `REGA_TAP_KEY_LT, `TAP_KEY_LT_DEFAULT
//  access       rw
//  atype        A,L
//  7:0  0xad    TAP_KEY_LT
//                  Logitech only features tap key.  Write 0xad to unlock.

`define SHUT_MAX_LO_WIDTH                                     8
`define REGA_SHUT_MAX_LO                                      13'h64
`define SHUT_MAX_LO_DEFAULT                                   8'h30
`define SHUT_MAX_LO_CHECK                                     8'h30
`define SHUT_MAX_LO                                           `SHUT_MAX_LO_WIDTH, `REGA_SHUT_MAX_LO, `SHUT_MAX_LO_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x30    SHUT_MAX_LO
//                  Lower 8-bit of maximum shutter open time [7:0].

`define SHUT_MAX_HI_WIDTH                                     8
`define REGA_SHUT_MAX_HI                                      13'h65
`define SHUT_MAX_HI_DEFAULT                                   8'h3
`define SHUT_MAX_HI_CHECK                                     8'h3
`define SHUT_MAX_HI                                           `SHUT_MAX_HI_WIDTH, `REGA_SHUT_MAX_HI, `SHUT_MAX_HI_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x3     SHUT_MAX_HI
//                  Upper 5-bit of Maximum shutter open time [12:8].
//                  Shutter maximum can be set to maximum of 0x1fff (8191) clocks.
//                  Default maximum shutter is 0x0330 (816) clocks for 12us@68MHz.

`define DCR_CONFIG2_WIDTH                                     8
`define REGA_DCR_CONFIG2                                      13'h66
`define DCR_CONFIG2_DEFAULT                                   8'h1b
`define DCR_CONFIG2_CHECK                                     8'h1b
`define DCR_CONFIG2                                           `DCR_CONFIG2_WIDTH, `REGA_DCR_CONFIG2, `DCR_CONFIG2_DEFAULT
//  access       rw
//  atype        A
//  7:6  0x0     DFLAT_FILTER
//                  PAF filter selection for tracking squal and DCR out
//                  0: dyx + dxy
//                  1: dxx + dyy + dyx + dxy
//                  2: dxx + dyy
//                  3: Min{(dyx+dxy) | (dxx+dyy)}
//                  default: dxx + dyy + dyx + dxy
//    5  0x0     RESERVED
//                  Reserved
//    4  0x1     FF_FILTER_ALLOW_1MM
//                  Need to enable DCR_CONFIG2[3] to use this option
//                  1: Enable 1mm lift to use real Fixed filter
//                  0: Disable 1mm lift to use real Fixed filter
//    3  0x1     FF_FILTER_FAKE
//                  Fake filter switching
//                  If FIX_FILTER_CTRL enables automatic filter switching and this bit is high, then the DCR will be forced to use PAF for tracking and Squal output only even though FF was requested.  However, everything else that FF does like MA taps, gain, preflash, decor wakeup, bigcor trigger, locus search, reref distance and fast upshift can continue to enjoy using FF related thresholds.
//                  If this bit is low, normal automatic image filter switching will be performed by the DCR.
//    2  0x0     RESERVED
//                  Reserved
//    1  0x1     LOG_CLIP
//                  1: Use log2 threshold clip to +/-7
//                  0: Use standard linear threshold clip to +/-7
//    0  0x1     TRACK_PAF_SQ_CNT
//                  1: Enables PAF squal count regardless of filter used for COR input
//                  0: Allows filter switching for squal count according to filter used for COR input

`define DCR_CONFIG_WIDTH                                      8
`define REGA_DCR_CONFIG                                       13'h67
`define DCR_CONFIG_DEFAULT                                    8'h7
`define DCR_CONFIG_CHECK                                      8'h7
`define DCR_CONFIG                                            `DCR_CONFIG_WIDTH, `REGA_DCR_CONFIG, `DCR_CONFIG_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     FF filter DCR output flooring
//                  1: Enables Flooring of DCR output to filter out value less than defined Threshold in Bit[6:5]
//                  0: DCR output without flooring
//  6:5  0x0     FF_Flooring_Threshold
//                  This threshold value will filter out +/- of defined value for PAF filter
//    4  0x0     SQ_FLAT_EN
//                  1: Squal count in PAF based on Dflat only
//                  0: Squal count in PAF based on Dflat and Dmin
//    3  0x0     BLUR FILTER round up
//                  1: Enables Rounding up of 4x4 blur filter division.
//                  0: Blur Filter divided by 4 without rounding up
//    2  0x1     PAF filter DCR output flooring
//                  1: Enables Flooring of DCR output to filter out value less than defined Threshold in Bit[1:0]
//                  0: DCR output without flooring
//  1:0  0x3     PAF_Flooring Threshold
//                  This threshold value will filter out +/- of defined value for PAF filter

`define RESET_POR_FLAG_WIDTH                                  8
`define REGA_RESET_POR_FLAG                                   13'h68
`define RESET_POR_FLAG_DEFAULT                                8'h0
`define RESET_POR_FLAG_CHECK                                  8'h0
`define RESET_POR_FLAG                                        `RESET_POR_FLAG_WIDTH, `REGA_RESET_POR_FLAG, `RESET_POR_FLAG_DEFAULT
//  access       rw
//  atype        A
//  7:1  0x0     RESERVED
//                  Reserved
//    0  0x0     RESET_POR_FLAG
//                  Write 0x1 to reset POR flag

`define STATUS_FLAGS_WIDTH                                    8
`define REGA_STATUS_FLAGS                                     13'h6a
`define STATUS_FLAGS_DEFAULT                                  8'h0
`define STATUS_FLAGS_CHECK                                    8'h0
`define STATUS_FLAGS                                          `STATUS_FLAGS_WIDTH, `REGA_STATUS_FLAGS, `STATUS_FLAGS_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     Status Flags
//                  Refer to reg0x542 NAV_CTRL2[7:5] to select flags
//                  Page 0
//                  7: bigcor
//                  6: skating
//                  5: filt_sw_frame
//                  4: bad_bowl
//                  3: ac_runaway
//                  2: runaway
//                  1: lifted
//                  0: low_squal
//                  Page 1
//                  7: Big shutter flag (for Turtle Sq)
//                  6: Runaway
//                  5: RESERVED
//                  4: RESERVED
//                  3: Low Squal
//                  2: Lifted Squal
//                  1: Lifted Delayed
//                  0: Lifted
//                  Page 2
//                  7: skating
//                  6: low_speed_reref_flag
//                  5: bigcor
//                  4: DPI_DOWNSHIFT_FLAG
//                  3: reref
//                  2: f_upshift_reg
//                  1: reref_periodic_flag
//                  0: FPC_OVERLAP
//                  Page 3
//                  7: cvfr_pix_reref_sw_flag
//                  6: vel_gte_max_speed_th
//                  5: SCC_FLAG
//                  4: MAX_SFT_VEL
//                  3: HI_SPEED_DCR
//                  2: HI_SPEED_DCR2
//                  1: HI_SPEED_LIFT
//                  0: HI_SPEED_COR

`define OSC_TUNE_STATUS_AUTO_WIDTH                            8
`define REGA_OSC_TUNE_STATUS_AUTO                             13'h6b
`define OSC_TUNE_STATUS_AUTO_DEFAULT                          8'h0
`define OSC_TUNE_STATUS_AUTO_CHECK                            8'h0
`define OSC_TUNE_STATUS_AUTO                                  `OSC_TUNE_STATUS_AUTO_WIDTH, `REGA_OSC_TUNE_STATUS_AUTO, `OSC_TUNE_STATUS_AUTO_DEFAULT
//  access       ro
//  atype        A
//    7  0x0     TAP_LT_OK
//                  0: TAP Key is incorrect
//                  1: TAP Key is correct
//    6  0x0     OSC_TUNE_CLK_NEN
//                  0: Not Running
//                  1: Running
//    5  0x0     OSC_TUNE_FAST_RUNNING
//                  0: Not Running
//                  1: Running
//    4  0x0     OSC_TUNE_SLOW_RUNNING
//                  0: Not Running
//                  1: Running
//    3  0x0     FAST_TRIM_OVERRIDE
//                  0: Not Override, default to register or EFUSE value
//                  1: Override to use OSC_TUNE_AUTO value
//    2  0x0     MED_TRIM_OVERRIDE
//                  0: Not Override, default to register or EFUSE value
//                  1: Override to use OSC_TUNE_AUTO value
//    1  0x0     SLOW_TRIM_OVERRIDE
//                  0: Not Override, default to register or EFUSE value
//                  1: Override to use OSC_TUNE_AUTO value
//    0  0x0     SLOW_FINE_TRIM_OVERRIDE
//                  0: Not Override, default to register or EFUSE value
//                  1: Override to use OSC_TUNE_AUTO value

`define OSC_TUNE_STATUS_WIDTH                                 8
`define REGA_OSC_TUNE_STATUS                                  13'h6c
`define OSC_TUNE_STATUS_DEFAULT                               8'h0
`define OSC_TUNE_STATUS_CHECK                                 8'h0
`define OSC_TUNE_STATUS                                       `OSC_TUNE_STATUS_WIDTH, `REGA_OSC_TUNE_STATUS, `OSC_TUNE_STATUS_DEFAULT
//  access       ro
//  atype        A
//    7  0x0     Global DONE
//                  0: OSC_TUNE operation is not done
//                  1: OSC_TUNE operation is done
//    6  0x0     Global ERROR
//                  0: OSC_TUNE operation is normal
//                  1: OSC_TUNE operation is in error
//    5  0x0     Global Running
//                  1: OSC_TUNE operation is runnnig
//                  0: OSC_TUNE operation is not running
//  4:0  0x0     RESERVED
//                  Reserved

`define OSC_TUNE_STATUS_CTRL_WIDTH                            8
`define REGA_OSC_TUNE_STATUS_CTRL                             13'h6d
`define OSC_TUNE_STATUS_CTRL_DEFAULT                          8'h0
`define OSC_TUNE_STATUS_CTRL_CHECK                            8'h0
`define OSC_TUNE_STATUS_CTRL                                  `OSC_TUNE_STATUS_CTRL_WIDTH, `REGA_OSC_TUNE_STATUS_CTRL, `OSC_TUNE_STATUS_CTRL_DEFAULT
//  access       ro
//  atype        A
//  7:6  0x0     RUN_MODE
//                  00: NULL_MODE
//                  01: FAST_MODE
//                  01: MED_MODE
//                  01: SLOW_MODE
//    5  0x0     FAST_SELECTED
//                  0: FAST clock tuning is not selected
//                  1: FAST clock tuning is selected
//    4  0x0     MED_SELECTED
//                  0: MED clock tuning is not selected
//                  1: MED clock tuning is selected
//    3  0x0     SLOW_SELECTED
//                  0: SLOW clock tuning is not selected
//                  1: SLOW clock tuning is selected
//    2  0x0     FAST_DONE
//                  0: FAST clock tuning is not done
//                  1: FAST clock tuning is done
//    1  0x0     MED_DONE
//                  0: MED clock tuning is not done
//                  1: MED clock tuning is done
//    0  0x0     SLOW_DONE
//                  0: SLOW clock tuning is not done
//                  1: SLOW clock tuning is done

`define OSC_COUNT0_WIDTH                                      8
`define REGA_OSC_COUNT0                                       13'h6e
`define OSC_COUNT0_DEFAULT                                    8'h0
`define OSC_COUNT0_CHECK                                      8'h0
`define OSC_COUNT0                                            `OSC_COUNT0_WIDTH, `REGA_OSC_COUNT0, `OSC_COUNT0_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     COUNT
//                  OSC_COUNT[7:0]

`define OSC_COUNT1_WIDTH                                      8
`define REGA_OSC_COUNT1                                       13'h6f
`define OSC_COUNT1_DEFAULT                                    8'h0
`define OSC_COUNT1_CHECK                                      8'h0
`define OSC_COUNT1                                            `OSC_COUNT1_WIDTH, `REGA_OSC_COUNT1, `OSC_COUNT1_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     COUNT
//                  OSC_COUNT[15:8]

`define OSC_COUNT2_WIDTH                                      8
`define REGA_OSC_COUNT2                                       13'h70
`define OSC_COUNT2_DEFAULT                                    8'h0
`define OSC_COUNT2_CHECK                                      8'h0
`define OSC_COUNT2                                            `OSC_COUNT2_WIDTH, `REGA_OSC_COUNT2, `OSC_COUNT2_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     COUNT
//                  OSC_COUNT[20:16]

`define OSC_TUNE_STATUS_ERR_WIDTH                             8
`define REGA_OSC_TUNE_STATUS_ERR                              13'h71
`define OSC_TUNE_STATUS_ERR_DEFAULT                           8'h0
`define OSC_TUNE_STATUS_ERR_CHECK                             8'h0
`define OSC_TUNE_STATUS_ERR                                   `OSC_TUNE_STATUS_ERR_WIDTH, `REGA_OSC_TUNE_STATUS_ERR, `OSC_TUNE_STATUS_ERR_DEFAULT
//  access       ro
//  atype        A
//    7  0x0     TRIM_OVERFLOW
//                  0: Not Overflow, trim value within allowable range
//                  1: Overflow, trim value out of allowable range
//    6  0x0     TRIM_OVERATTEMPT
//                  0: Not Overattempt, number of attempt to find the trim value is within allowable range
//                  1: Overattempt, number of attempt to find the trim value is out of allowable range
//    5  0x0     CNT_OVERFLOW
//                  0: Not Overflow, counter value within allowable range
//                  1: Overflow, counter value out of allowable range
//  4:0  0x0     RESERVED
//                  Reserved

`define SHUT_MIN_LO_WIDTH                                     8
`define REGA_SHUT_MIN_LO                                      13'h72
`define SHUT_MIN_LO_DEFAULT                                   8'h12
`define SHUT_MIN_LO_CHECK                                     8'h12
`define SHUT_MIN_LO                                           `SHUT_MIN_LO_WIDTH, `REGA_SHUT_MIN_LO, `SHUT_MIN_LO_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x12    SHUT_MIN_LO
//                  Lower 8-bit of minimum shutter open time [7:0].

`define SHUT_MIN_HI_WIDTH                                     8
`define REGA_SHUT_MIN_HI                                      13'h73
`define SHUT_MIN_HI_DEFAULT                                   8'h0
`define SHUT_MIN_HI_CHECK                                     8'h0
`define SHUT_MIN_HI                                           `SHUT_MIN_HI_WIDTH, `REGA_SHUT_MIN_HI, `SHUT_MIN_HI_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x0     SHUT_MIN_HI
//                  Upper 5-bit of minimum shutter open time [12:8].

`define SQUAL_RUN_WIDTH                                       8
`define REGA_SQUAL_RUN                                        13'h76
`define SQUAL_RUN_DEFAULT                                     8'h25
`define SQUAL_RUN_CHECK                                       8'h25
`define SQUAL_RUN                                             `SQUAL_RUN_WIDTH, `REGA_SQUAL_RUN, `SQUAL_RUN_DEFAULT
//  access       rw
//  atype        S
//  7:4  0x2     GSR
//                  run of good images to navigate.
//  3:0  0x5     BSR
//                  run of bad images to not navigate.

`define RUN_DOWNSHIFT_WIDTH                                   8
`define REGA_RUN_DOWNSHIFT                                    13'h77
`define RUN_DOWNSHIFT_DEFAULT                                 8'h14
`define RUN_DOWNSHIFT_CHECK                                   8'h14
`define RUN_DOWNSHIFT                                         `RUN_DOWNSHIFT_WIDTH, `REGA_RUN_DOWNSHIFT, `RUN_DOWNSHIFT_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x14    RUN_DOWNSHIFT
//                  Run to rest1 downshift
//                  Max setting is limited to 0xf0 when RUN_DOWNSHIFT x 256 is selected.

`define REST1_PERIOD_WIDTH                                    8
`define REGA_REST1_PERIOD                                     13'h78
`define REST1_PERIOD_DEFAULT                                  8'h1
`define REST1_PERIOD_CHECK                                    8'h1
`define REST1_PERIOD                                          `REST1_PERIOD_WIDTH, `REGA_REST1_PERIOD, `REST1_PERIOD_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x1     REST1_PERIOD
//                  Rest1 period

`define REST1_DOWNSHIFT_WIDTH                                 8
`define REGA_REST1_DOWNSHIFT                                  13'h79
`define REST1_DOWNSHIFT_DEFAULT                               8'h90
`define REST1_DOWNSHIFT_CHECK                                 8'h90
`define REST1_DOWNSHIFT                                       `REST1_DOWNSHIFT_WIDTH, `REGA_REST1_DOWNSHIFT, `REST1_DOWNSHIFT_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x90    REST1_DOWNSHIFT
//                  Rest1 to rest2 downshift

`define REST2_PERIOD_WIDTH                                    8
`define REGA_REST2_PERIOD                                     13'h7a
`define REST2_PERIOD_DEFAULT                                  8'h19
`define REST2_PERIOD_CHECK                                    8'h19
`define REST2_PERIOD                                          `REST2_PERIOD_WIDTH, `REGA_REST2_PERIOD, `REST2_PERIOD_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x19    REST2_PERIOD
//                  Rest2 period

`define REST2_DOWNSHIFT_WIDTH                                 8
`define REGA_REST2_DOWNSHIFT                                  13'h7b
`define REST2_DOWNSHIFT_DEFAULT                               8'h5e
`define REST2_DOWNSHIFT_CHECK                                 8'h5e
`define REST2_DOWNSHIFT                                       `REST2_DOWNSHIFT_WIDTH, `REGA_REST2_DOWNSHIFT, `REST2_DOWNSHIFT_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x5e    REST2_DOWNSHIFT
//                  Rest2 to rest3 downshift

`define REST3_PERIOD_WIDTH                                    8
`define REGA_REST3_PERIOD                                     13'h7c
`define REST3_PERIOD_DEFAULT                                  8'h3f
`define REST3_PERIOD_CHECK                                    8'h3f
`define REST3_PERIOD                                          `REST3_PERIOD_WIDTH, `REGA_REST3_PERIOD, `REST3_PERIOD_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x3f    REST3_PERIOD
//                  Rest3 period

`define RUN_DOWNSHIFT_MULT_WIDTH                              8
`define REGA_RUN_DOWNSHIFT_MULT                               13'h7d
`define RUN_DOWNSHIFT_MULT_DEFAULT                            8'h7
`define RUN_DOWNSHIFT_MULT_CHECK                              8'h7
`define RUN_DOWNSHIFT_MULT                                    `RUN_DOWNSHIFT_MULT_WIDTH, `REGA_RUN_DOWNSHIFT_MULT, `RUN_DOWNSHIFT_MULT_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x0     RESERVED
//                  Reserved
//  3:0  0x7     RUN_DOWNSHIFT_MULT
//                  Run downshift multiplier
//                  0x00: RUN_DOWNSHIFT x 2
//                  0x01: RUN_DOWNSHIFT x 4
//                  0x02: RUN_DOWNSHIFT x 8
//                  0x03: RUN_DOWNSHIFT x 16
//                  0x04: RUN_DOWNSHIFT x 32
//                  0x05: RUN_DOWNSHIFT x 64
//                  0x06: RUN_DOWNSHIFT x 128
//                  0x07: RUN_DOWNSHIFT x 256
//                  0x08: RUN_DOWNSHIFT x 512
//                  0x09: RUN_DOWNSHIFT x 1024
//                  0x0a: RUN_DOWNSHIFT x 2048

`define REST_DOWNSHIFT_MULT_WIDTH                             8
`define REGA_REST_DOWNSHIFT_MULT                              13'h7e
`define REST_DOWNSHIFT_MULT_DEFAULT                           8'h55
`define REST_DOWNSHIFT_MULT_CHECK                             8'h55
`define REST_DOWNSHIFT_MULT                                   `REST_DOWNSHIFT_MULT_WIDTH, `REGA_REST_DOWNSHIFT_MULT, `REST_DOWNSHIFT_MULT_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     SPARE
//                  Spare
//  6:4  0x5     REST2_DOWNSHIFT_MULT
//                  Rest2 downshift multiplier
//                  0x00: REST2_DOWNSHIFT x 2
//                  0x01: REST2_DOWNSHIFT x 4
//                  0x02: REST2_DOWNSHIFT x 8
//                  0x03: REST2_DOWNSHIFT x 16
//                  0x04: REST2_DOWNSHIFT x 32
//                  0x05: REST2_DOWNSHIFT x 64
//                  0x06: REST2_DOWNSHIFT x 128
//                  0x07: REST2_DOWNSHIFT x 256
//    3  0x0     RESERVED
//                  Reserved
//  2:0  0x5     REST1_DOWNSHIFT_MULT
//                  Rest1 downshift multiplier
//                  0x00: REST1_DOWNSHIFT x 2
//                  0x01: REST1_DOWNSHIFT x 4
//                  0x02: REST1_DOWNSHIFT x 8
//                  0x03: REST1_DOWNSHIFT x 16
//                  0x04: REST1_DOWNSHIFT x 32
//                  0x05: REST1_DOWNSHIFT x 64
//                  0x06: REST1_DOWNSHIFT x 128
//                  0x07: REST1_DOWNSHIFT x 256


`define P1_PROD_ID_WIDTH                                      0
`define REGA_P1_PROD_ID                                       13'h100
`define P1_PROD_ID                                            `P1_PROD_ID_WIDTH, `REGA_P1_PROD_ID, `P1_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P1_REV_ID_WIDTH                                       0
`define REGA_P1_REV_ID                                        13'h101
`define P1_REV_ID                                             `P1_REV_ID_WIDTH, `REGA_P1_REV_ID, `P1_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P1_MOTION_WIDTH                                       0
`define REGA_P1_MOTION                                        13'h102
`define P1_MOTION                                             `P1_MOTION_WIDTH, `REGA_P1_MOTION, `P1_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P1_DELTA_X_LO_WIDTH                                   0
`define REGA_P1_DELTA_X_LO                                    13'h103
`define P1_DELTA_X_LO                                         `P1_DELTA_X_LO_WIDTH, `REGA_P1_DELTA_X_LO, `P1_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P1_DELTA_X_HI_WIDTH                                   0
`define REGA_P1_DELTA_X_HI                                    13'h104
`define P1_DELTA_X_HI                                         `P1_DELTA_X_HI_WIDTH, `REGA_P1_DELTA_X_HI, `P1_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P1_DELTA_Y_LO_WIDTH                                   0
`define REGA_P1_DELTA_Y_LO                                    13'h105
`define P1_DELTA_Y_LO                                         `P1_DELTA_Y_LO_WIDTH, `REGA_P1_DELTA_Y_LO, `P1_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P1_DELTA_Y_HI_WIDTH                                   0
`define REGA_P1_DELTA_Y_HI                                    13'h106
`define P1_DELTA_Y_HI                                         `P1_DELTA_Y_HI_WIDTH, `REGA_P1_DELTA_Y_HI, `P1_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P1_SQUAL_WIDTH                                        0
`define REGA_P1_SQUAL                                         13'h107
`define P1_SQUAL                                              `P1_SQUAL_WIDTH, `REGA_P1_SQUAL, `P1_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P1_PIX_ACCUM_WIDTH                                    0
`define REGA_P1_PIX_ACCUM                                     13'h108
`define P1_PIX_ACCUM                                          `P1_PIX_ACCUM_WIDTH, `REGA_P1_PIX_ACCUM, `P1_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P1_PIX_MAX_WIDTH                                      0
`define REGA_P1_PIX_MAX                                       13'h109
`define P1_PIX_MAX                                            `P1_PIX_MAX_WIDTH, `REGA_P1_PIX_MAX, `P1_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P1_PIX_MIN_WIDTH                                      0
`define REGA_P1_PIX_MIN                                       13'h10a
`define P1_PIX_MIN                                            `P1_PIX_MIN_WIDTH, `REGA_P1_PIX_MIN, `P1_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P1_SHUT_LO_WIDTH                                      0
`define REGA_P1_SHUT_LO                                       13'h10b
`define P1_SHUT_LO                                            `P1_SHUT_LO_WIDTH, `REGA_P1_SHUT_LO, `P1_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P1_SHUT_HI_WIDTH                                      0
`define REGA_P1_SHUT_HI                                       13'h10c
`define P1_SHUT_HI                                            `P1_SHUT_HI_WIDTH, `REGA_P1_SHUT_HI, `P1_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P1_EXT_WAKEUP_WIDTH                                   0
`define REGA_P1_EXT_WAKEUP                                    13'h10d
`define P1_EXT_WAKEUP                                         `P1_EXT_WAKEUP_WIDTH, `REGA_P1_EXT_WAKEUP, `P1_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P1_RESERVED_E_WIDTH                                   0
`define REGA_P1_RESERVED_E                                    13'h10e
`define P1_RESERVED_E                                         `P1_RESERVED_E_WIDTH, `REGA_P1_RESERVED_E, `P1_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P1_SKIP_FRAMES_CNT_LO_WIDTH                           0
`define REGA_P1_SKIP_FRAMES_CNT_LO                            13'h10f
`define P1_SKIP_FRAMES_CNT_LO                                 `P1_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P1_SKIP_FRAMES_CNT_LO, `P1_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P1_SKIP_FRAMES_CNT_HI_WIDTH                           0
`define REGA_P1_SKIP_FRAMES_CNT_HI                            13'h110
`define P1_SKIP_FRAMES_CNT_HI                                 `P1_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P1_SKIP_FRAMES_CNT_HI, `P1_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P1_CVFR_PERIOD_LO_WIDTH                               0
`define REGA_P1_CVFR_PERIOD_LO                                13'h111
`define P1_CVFR_PERIOD_LO                                     `P1_CVFR_PERIOD_LO_WIDTH, `REGA_P1_CVFR_PERIOD_LO, `P1_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P1_CVFR_PERIOD_HI_WIDTH                               0
`define REGA_P1_CVFR_PERIOD_HI                                13'h112
`define P1_CVFR_PERIOD_HI                                     `P1_CVFR_PERIOD_HI_WIDTH, `REGA_P1_CVFR_PERIOD_HI, `P1_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P1_OBSERVATION_WIDTH                                  0
`define REGA_P1_OBSERVATION                                   13'h115
`define P1_OBSERVATION                                        `P1_OBSERVATION_WIDTH, `REGA_P1_OBSERVATION, `P1_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P1_BURST_MOTION_WIDTH                                 0
`define REGA_P1_BURST_MOTION                                  13'h116
`define P1_BURST_MOTION                                       `P1_BURST_MOTION_WIDTH, `REGA_P1_BURST_MOTION, `P1_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P1_SQUAL2_WIDTH                                       0
`define REGA_P1_SQUAL2                                        13'h117
`define P1_SQUAL2                                             `P1_SQUAL2_WIDTH, `REGA_P1_SQUAL2, `P1_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P1_SPI_MODE_WIDTH                                     0
`define REGA_P1_SPI_MODE                                      13'h118
`define P1_SPI_MODE                                           `P1_SPI_MODE_WIDTH, `REGA_P1_SPI_MODE, `P1_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P1_OSC_TUNE_INSTR_WIDTH                               0
`define REGA_P1_OSC_TUNE_INSTR                                13'h122
`define P1_OSC_TUNE_INSTR                                     `P1_OSC_TUNE_INSTR_WIDTH, `REGA_P1_OSC_TUNE_INSTR, `P1_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P1_OSC_TUNE_INSTR_SLOW_WIDTH                          0
`define REGA_P1_OSC_TUNE_INSTR_SLOW                           13'h123
`define P1_OSC_TUNE_INSTR_SLOW                                `P1_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P1_OSC_TUNE_INSTR_SLOW, `P1_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P1_PRBS_MODE_WIDTH                                    0
`define REGA_P1_PRBS_MODE                                     13'h130
`define P1_PRBS_MODE                                          `P1_PRBS_MODE_WIDTH, `REGA_P1_PRBS_MODE, `P1_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P1_POWERDOWN_WIDTH                                    0
`define REGA_P1_POWERDOWN                                     13'h132
`define P1_POWERDOWN                                          `P1_POWERDOWN_WIDTH, `REGA_P1_POWERDOWN, `P1_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P1_CRC0_WIDTH                                         0
`define REGA_P1_CRC0                                          13'h133
`define P1_CRC0                                               `P1_CRC0_WIDTH, `REGA_P1_CRC0, `P1_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P1_CRC1_WIDTH                                         0
`define REGA_P1_CRC1                                          13'h134
`define P1_CRC1                                               `P1_CRC1_WIDTH, `REGA_P1_CRC1, `P1_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P1_CRC2_WIDTH                                         0
`define REGA_P1_CRC2                                          13'h135
`define P1_CRC2                                               `P1_CRC2_WIDTH, `REGA_P1_CRC2, `P1_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P1_CRC3_WIDTH                                         0
`define REGA_P1_CRC3                                          13'h136
`define P1_CRC3                                               `P1_CRC3_WIDTH, `REGA_P1_CRC3, `P1_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P1_IOSTATUS_WIDTH                                     0
`define REGA_P1_IOSTATUS                                      13'h137
`define P1_IOSTATUS                                           `P1_IOSTATUS_WIDTH, `REGA_P1_IOSTATUS, `P1_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P1_TAP_KEY_WO_WIDTH                                   0
`define REGA_P1_TAP_KEY_WO                                    13'h138
`define P1_TAP_KEY_WO                                         `P1_TAP_KEY_WO_WIDTH, `REGA_P1_TAP_KEY_WO, `P1_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P1_TAP_KEY_WIDTH                                      0
`define REGA_P1_TAP_KEY                                       13'h139
`define P1_TAP_KEY                                            `P1_TAP_KEY_WIDTH, `REGA_P1_TAP_KEY, `P1_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P1_POWER_UP_RESET_WIDTH                               0
`define REGA_P1_POWER_UP_RESET                                13'h13a
`define P1_POWER_UP_RESET                                     `P1_POWER_UP_RESET_WIDTH, `REGA_P1_POWER_UP_RESET, `P1_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P1_SHUTDOWN_WIDTH                                     0
`define REGA_P1_SHUTDOWN                                      13'h13b
`define P1_SHUTDOWN                                           `P1_SHUTDOWN_WIDTH, `REGA_P1_SHUTDOWN, `P1_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P1_SCAN_MODE_WIDTH                                    0
`define REGA_P1_SCAN_MODE                                     13'h13c
`define P1_SCAN_MODE                                          `P1_SCAN_MODE_WIDTH, `REGA_P1_SCAN_MODE, `P1_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P1_SPI_PAGE_WIDTH                                     0
`define REGA_P1_SPI_PAGE                                      13'h17f
`define P1_SPI_PAGE                                           `P1_SPI_PAGE_WIDTH, `REGA_P1_SPI_PAGE, `P1_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define START_FLAG_WIDTH                                      8
`define REGA_START_FLAG                                       13'h141
`define START_FLAG_DEFAULT                                    8'h0
`define START_FLAG_CHECK                                      8'h0
`define START_FLAG                                            `START_FLAG_WIDTH, `REGA_START_FLAG, `START_FLAG_DEFAULT
//  access       ro
//  atype        S
//  7:5  0x0     START_MODE_OUT
//                  0: Initialized state
//                  1: First Frame
//                  2: Normal Sequence
//                  3: Entering into FPC Overlap
//                  4: In the FPC Overlap Mode
//                  5: Exit from FPC Mode
//                  6: Unknown
//                  7: Unknown
//                  8: Unknown
//  4:0  0x0     START_MODE_STATUS
//                  bit4: NAV_START detected
//                  bit3: COR_START detected
//                  bit2: DCR_START detected
//                  bit1: XFER_START detected
//                  bit0: FPC_START detected

`define DONE_FLAG_WIDTH                                       8
`define REGA_DONE_FLAG                                        13'h142
`define DONE_FLAG_DEFAULT                                     8'h0
`define DONE_FLAG_CHECK                                       8'h0
`define DONE_FLAG                                             `DONE_FLAG_WIDTH, `REGA_DONE_FLAG, `DONE_FLAG_DEFAULT
//  access       ro
//  atype        S
//  7:5  0x0     DONE_MODE_OUT
//                  0: Initialized state
//                  1: First Frame
//                  2: Normal Sequence
//                  3: Entering into FPC Overlap
//                  4: Unknown
//                  5: Unknown
//                  6: Unknown
//                  7: Unknown
//                  8: Unknown
//  4:0  0x0     DONE_MODE_STATUS
//                  bit4: NAV_DONE detected
//                  bit3: COR_DONE detected
//                  bit2: DCR_DONE detected
//                  bit1: XFER_DONE detected
//                  bit0: FPC_DONE detected


`define P2_PROD_ID_WIDTH                                      0
`define REGA_P2_PROD_ID                                       13'h200
`define P2_PROD_ID                                            `P2_PROD_ID_WIDTH, `REGA_P2_PROD_ID, `P2_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P2_REV_ID_WIDTH                                       0
`define REGA_P2_REV_ID                                        13'h201
`define P2_REV_ID                                             `P2_REV_ID_WIDTH, `REGA_P2_REV_ID, `P2_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P2_MOTION_WIDTH                                       0
`define REGA_P2_MOTION                                        13'h202
`define P2_MOTION                                             `P2_MOTION_WIDTH, `REGA_P2_MOTION, `P2_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P2_DELTA_X_LO_WIDTH                                   0
`define REGA_P2_DELTA_X_LO                                    13'h203
`define P2_DELTA_X_LO                                         `P2_DELTA_X_LO_WIDTH, `REGA_P2_DELTA_X_LO, `P2_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P2_DELTA_X_HI_WIDTH                                   0
`define REGA_P2_DELTA_X_HI                                    13'h204
`define P2_DELTA_X_HI                                         `P2_DELTA_X_HI_WIDTH, `REGA_P2_DELTA_X_HI, `P2_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P2_DELTA_Y_LO_WIDTH                                   0
`define REGA_P2_DELTA_Y_LO                                    13'h205
`define P2_DELTA_Y_LO                                         `P2_DELTA_Y_LO_WIDTH, `REGA_P2_DELTA_Y_LO, `P2_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P2_DELTA_Y_HI_WIDTH                                   0
`define REGA_P2_DELTA_Y_HI                                    13'h206
`define P2_DELTA_Y_HI                                         `P2_DELTA_Y_HI_WIDTH, `REGA_P2_DELTA_Y_HI, `P2_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P2_SQUAL_WIDTH                                        0
`define REGA_P2_SQUAL                                         13'h207
`define P2_SQUAL                                              `P2_SQUAL_WIDTH, `REGA_P2_SQUAL, `P2_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P2_PIX_ACCUM_WIDTH                                    0
`define REGA_P2_PIX_ACCUM                                     13'h208
`define P2_PIX_ACCUM                                          `P2_PIX_ACCUM_WIDTH, `REGA_P2_PIX_ACCUM, `P2_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P2_PIX_MAX_WIDTH                                      0
`define REGA_P2_PIX_MAX                                       13'h209
`define P2_PIX_MAX                                            `P2_PIX_MAX_WIDTH, `REGA_P2_PIX_MAX, `P2_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P2_PIX_MIN_WIDTH                                      0
`define REGA_P2_PIX_MIN                                       13'h20a
`define P2_PIX_MIN                                            `P2_PIX_MIN_WIDTH, `REGA_P2_PIX_MIN, `P2_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P2_SHUT_LO_WIDTH                                      0
`define REGA_P2_SHUT_LO                                       13'h20b
`define P2_SHUT_LO                                            `P2_SHUT_LO_WIDTH, `REGA_P2_SHUT_LO, `P2_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P2_SHUT_HI_WIDTH                                      0
`define REGA_P2_SHUT_HI                                       13'h20c
`define P2_SHUT_HI                                            `P2_SHUT_HI_WIDTH, `REGA_P2_SHUT_HI, `P2_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P2_EXT_WAKEUP_WIDTH                                   0
`define REGA_P2_EXT_WAKEUP                                    13'h20d
`define P2_EXT_WAKEUP                                         `P2_EXT_WAKEUP_WIDTH, `REGA_P2_EXT_WAKEUP, `P2_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P2_RESERVED_E_WIDTH                                   0
`define REGA_P2_RESERVED_E                                    13'h20e
`define P2_RESERVED_E                                         `P2_RESERVED_E_WIDTH, `REGA_P2_RESERVED_E, `P2_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P2_SKIP_FRAMES_CNT_LO_WIDTH                           0
`define REGA_P2_SKIP_FRAMES_CNT_LO                            13'h20f
`define P2_SKIP_FRAMES_CNT_LO                                 `P2_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P2_SKIP_FRAMES_CNT_LO, `P2_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P2_SKIP_FRAMES_CNT_HI_WIDTH                           0
`define REGA_P2_SKIP_FRAMES_CNT_HI                            13'h210
`define P2_SKIP_FRAMES_CNT_HI                                 `P2_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P2_SKIP_FRAMES_CNT_HI, `P2_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P2_CVFR_PERIOD_LO_WIDTH                               0
`define REGA_P2_CVFR_PERIOD_LO                                13'h211
`define P2_CVFR_PERIOD_LO                                     `P2_CVFR_PERIOD_LO_WIDTH, `REGA_P2_CVFR_PERIOD_LO, `P2_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P2_CVFR_PERIOD_HI_WIDTH                               0
`define REGA_P2_CVFR_PERIOD_HI                                13'h212
`define P2_CVFR_PERIOD_HI                                     `P2_CVFR_PERIOD_HI_WIDTH, `REGA_P2_CVFR_PERIOD_HI, `P2_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P2_OBSERVATION_WIDTH                                  0
`define REGA_P2_OBSERVATION                                   13'h215
`define P2_OBSERVATION                                        `P2_OBSERVATION_WIDTH, `REGA_P2_OBSERVATION, `P2_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P2_BURST_MOTION_WIDTH                                 0
`define REGA_P2_BURST_MOTION                                  13'h216
`define P2_BURST_MOTION                                       `P2_BURST_MOTION_WIDTH, `REGA_P2_BURST_MOTION, `P2_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P2_SQUAL2_WIDTH                                       0
`define REGA_P2_SQUAL2                                        13'h217
`define P2_SQUAL2                                             `P2_SQUAL2_WIDTH, `REGA_P2_SQUAL2, `P2_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P2_SPI_MODE_WIDTH                                     0
`define REGA_P2_SPI_MODE                                      13'h218
`define P2_SPI_MODE                                           `P2_SPI_MODE_WIDTH, `REGA_P2_SPI_MODE, `P2_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P2_OSC_TUNE_INSTR_WIDTH                               0
`define REGA_P2_OSC_TUNE_INSTR                                13'h222
`define P2_OSC_TUNE_INSTR                                     `P2_OSC_TUNE_INSTR_WIDTH, `REGA_P2_OSC_TUNE_INSTR, `P2_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P2_OSC_TUNE_INSTR_SLOW_WIDTH                          0
`define REGA_P2_OSC_TUNE_INSTR_SLOW                           13'h223
`define P2_OSC_TUNE_INSTR_SLOW                                `P2_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P2_OSC_TUNE_INSTR_SLOW, `P2_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P2_PRBS_MODE_WIDTH                                    0
`define REGA_P2_PRBS_MODE                                     13'h230
`define P2_PRBS_MODE                                          `P2_PRBS_MODE_WIDTH, `REGA_P2_PRBS_MODE, `P2_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P2_POWERDOWN_WIDTH                                    0
`define REGA_P2_POWERDOWN                                     13'h232
`define P2_POWERDOWN                                          `P2_POWERDOWN_WIDTH, `REGA_P2_POWERDOWN, `P2_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P2_CRC0_WIDTH                                         0
`define REGA_P2_CRC0                                          13'h233
`define P2_CRC0                                               `P2_CRC0_WIDTH, `REGA_P2_CRC0, `P2_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P2_CRC1_WIDTH                                         0
`define REGA_P2_CRC1                                          13'h234
`define P2_CRC1                                               `P2_CRC1_WIDTH, `REGA_P2_CRC1, `P2_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P2_CRC2_WIDTH                                         0
`define REGA_P2_CRC2                                          13'h235
`define P2_CRC2                                               `P2_CRC2_WIDTH, `REGA_P2_CRC2, `P2_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P2_CRC3_WIDTH                                         0
`define REGA_P2_CRC3                                          13'h236
`define P2_CRC3                                               `P2_CRC3_WIDTH, `REGA_P2_CRC3, `P2_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P2_IOSTATUS_WIDTH                                     0
`define REGA_P2_IOSTATUS                                      13'h237
`define P2_IOSTATUS                                           `P2_IOSTATUS_WIDTH, `REGA_P2_IOSTATUS, `P2_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P2_TAP_KEY_WO_WIDTH                                   0
`define REGA_P2_TAP_KEY_WO                                    13'h238
`define P2_TAP_KEY_WO                                         `P2_TAP_KEY_WO_WIDTH, `REGA_P2_TAP_KEY_WO, `P2_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P2_TAP_KEY_WIDTH                                      0
`define REGA_P2_TAP_KEY                                       13'h239
`define P2_TAP_KEY                                            `P2_TAP_KEY_WIDTH, `REGA_P2_TAP_KEY, `P2_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P2_POWER_UP_RESET_WIDTH                               0
`define REGA_P2_POWER_UP_RESET                                13'h23a
`define P2_POWER_UP_RESET                                     `P2_POWER_UP_RESET_WIDTH, `REGA_P2_POWER_UP_RESET, `P2_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P2_SHUTDOWN_WIDTH                                     0
`define REGA_P2_SHUTDOWN                                      13'h23b
`define P2_SHUTDOWN                                           `P2_SHUTDOWN_WIDTH, `REGA_P2_SHUTDOWN, `P2_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P2_SCAN_MODE_WIDTH                                    0
`define REGA_P2_SCAN_MODE                                     13'h23c
`define P2_SCAN_MODE                                          `P2_SCAN_MODE_WIDTH, `REGA_P2_SCAN_MODE, `P2_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P2_SPI_PAGE_WIDTH                                     0
`define REGA_P2_SPI_PAGE                                      13'h27f
`define P2_SPI_PAGE                                           `P2_SPI_PAGE_WIDTH, `REGA_P2_SPI_PAGE, `P2_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP


`define P3_PROD_ID_WIDTH                                      0
`define REGA_P3_PROD_ID                                       13'h300
`define P3_PROD_ID                                            `P3_PROD_ID_WIDTH, `REGA_P3_PROD_ID, `P3_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P3_REV_ID_WIDTH                                       0
`define REGA_P3_REV_ID                                        13'h301
`define P3_REV_ID                                             `P3_REV_ID_WIDTH, `REGA_P3_REV_ID, `P3_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P3_MOTION_WIDTH                                       0
`define REGA_P3_MOTION                                        13'h302
`define P3_MOTION                                             `P3_MOTION_WIDTH, `REGA_P3_MOTION, `P3_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P3_DELTA_X_LO_WIDTH                                   0
`define REGA_P3_DELTA_X_LO                                    13'h303
`define P3_DELTA_X_LO                                         `P3_DELTA_X_LO_WIDTH, `REGA_P3_DELTA_X_LO, `P3_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P3_DELTA_X_HI_WIDTH                                   0
`define REGA_P3_DELTA_X_HI                                    13'h304
`define P3_DELTA_X_HI                                         `P3_DELTA_X_HI_WIDTH, `REGA_P3_DELTA_X_HI, `P3_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P3_DELTA_Y_LO_WIDTH                                   0
`define REGA_P3_DELTA_Y_LO                                    13'h305
`define P3_DELTA_Y_LO                                         `P3_DELTA_Y_LO_WIDTH, `REGA_P3_DELTA_Y_LO, `P3_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P3_DELTA_Y_HI_WIDTH                                   0
`define REGA_P3_DELTA_Y_HI                                    13'h306
`define P3_DELTA_Y_HI                                         `P3_DELTA_Y_HI_WIDTH, `REGA_P3_DELTA_Y_HI, `P3_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P3_SQUAL_WIDTH                                        0
`define REGA_P3_SQUAL                                         13'h307
`define P3_SQUAL                                              `P3_SQUAL_WIDTH, `REGA_P3_SQUAL, `P3_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P3_PIX_ACCUM_WIDTH                                    0
`define REGA_P3_PIX_ACCUM                                     13'h308
`define P3_PIX_ACCUM                                          `P3_PIX_ACCUM_WIDTH, `REGA_P3_PIX_ACCUM, `P3_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P3_PIX_MAX_WIDTH                                      0
`define REGA_P3_PIX_MAX                                       13'h309
`define P3_PIX_MAX                                            `P3_PIX_MAX_WIDTH, `REGA_P3_PIX_MAX, `P3_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P3_PIX_MIN_WIDTH                                      0
`define REGA_P3_PIX_MIN                                       13'h30a
`define P3_PIX_MIN                                            `P3_PIX_MIN_WIDTH, `REGA_P3_PIX_MIN, `P3_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P3_SHUT_LO_WIDTH                                      0
`define REGA_P3_SHUT_LO                                       13'h30b
`define P3_SHUT_LO                                            `P3_SHUT_LO_WIDTH, `REGA_P3_SHUT_LO, `P3_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P3_SHUT_HI_WIDTH                                      0
`define REGA_P3_SHUT_HI                                       13'h30c
`define P3_SHUT_HI                                            `P3_SHUT_HI_WIDTH, `REGA_P3_SHUT_HI, `P3_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P3_EXT_WAKEUP_WIDTH                                   0
`define REGA_P3_EXT_WAKEUP                                    13'h30d
`define P3_EXT_WAKEUP                                         `P3_EXT_WAKEUP_WIDTH, `REGA_P3_EXT_WAKEUP, `P3_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P3_RESERVED_E_WIDTH                                   0
`define REGA_P3_RESERVED_E                                    13'h30e
`define P3_RESERVED_E                                         `P3_RESERVED_E_WIDTH, `REGA_P3_RESERVED_E, `P3_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P3_SKIP_FRAMES_CNT_LO_WIDTH                           0
`define REGA_P3_SKIP_FRAMES_CNT_LO                            13'h30f
`define P3_SKIP_FRAMES_CNT_LO                                 `P3_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P3_SKIP_FRAMES_CNT_LO, `P3_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P3_SKIP_FRAMES_CNT_HI_WIDTH                           0
`define REGA_P3_SKIP_FRAMES_CNT_HI                            13'h310
`define P3_SKIP_FRAMES_CNT_HI                                 `P3_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P3_SKIP_FRAMES_CNT_HI, `P3_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P3_CVFR_PERIOD_LO_WIDTH                               0
`define REGA_P3_CVFR_PERIOD_LO                                13'h311
`define P3_CVFR_PERIOD_LO                                     `P3_CVFR_PERIOD_LO_WIDTH, `REGA_P3_CVFR_PERIOD_LO, `P3_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P3_CVFR_PERIOD_HI_WIDTH                               0
`define REGA_P3_CVFR_PERIOD_HI                                13'h312
`define P3_CVFR_PERIOD_HI                                     `P3_CVFR_PERIOD_HI_WIDTH, `REGA_P3_CVFR_PERIOD_HI, `P3_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P3_OBSERVATION_WIDTH                                  0
`define REGA_P3_OBSERVATION                                   13'h315
`define P3_OBSERVATION                                        `P3_OBSERVATION_WIDTH, `REGA_P3_OBSERVATION, `P3_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P3_BURST_MOTION_WIDTH                                 0
`define REGA_P3_BURST_MOTION                                  13'h316
`define P3_BURST_MOTION                                       `P3_BURST_MOTION_WIDTH, `REGA_P3_BURST_MOTION, `P3_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P3_SQUAL2_WIDTH                                       0
`define REGA_P3_SQUAL2                                        13'h317
`define P3_SQUAL2                                             `P3_SQUAL2_WIDTH, `REGA_P3_SQUAL2, `P3_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P3_SPI_MODE_WIDTH                                     0
`define REGA_P3_SPI_MODE                                      13'h318
`define P3_SPI_MODE                                           `P3_SPI_MODE_WIDTH, `REGA_P3_SPI_MODE, `P3_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P3_OSC_TUNE_INSTR_WIDTH                               0
`define REGA_P3_OSC_TUNE_INSTR                                13'h322
`define P3_OSC_TUNE_INSTR                                     `P3_OSC_TUNE_INSTR_WIDTH, `REGA_P3_OSC_TUNE_INSTR, `P3_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P3_OSC_TUNE_INSTR_SLOW_WIDTH                          0
`define REGA_P3_OSC_TUNE_INSTR_SLOW                           13'h323
`define P3_OSC_TUNE_INSTR_SLOW                                `P3_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P3_OSC_TUNE_INSTR_SLOW, `P3_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P3_PRBS_MODE_WIDTH                                    0
`define REGA_P3_PRBS_MODE                                     13'h330
`define P3_PRBS_MODE                                          `P3_PRBS_MODE_WIDTH, `REGA_P3_PRBS_MODE, `P3_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P3_POWERDOWN_WIDTH                                    0
`define REGA_P3_POWERDOWN                                     13'h332
`define P3_POWERDOWN                                          `P3_POWERDOWN_WIDTH, `REGA_P3_POWERDOWN, `P3_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P3_CRC0_WIDTH                                         0
`define REGA_P3_CRC0                                          13'h333
`define P3_CRC0                                               `P3_CRC0_WIDTH, `REGA_P3_CRC0, `P3_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P3_CRC1_WIDTH                                         0
`define REGA_P3_CRC1                                          13'h334
`define P3_CRC1                                               `P3_CRC1_WIDTH, `REGA_P3_CRC1, `P3_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P3_CRC2_WIDTH                                         0
`define REGA_P3_CRC2                                          13'h335
`define P3_CRC2                                               `P3_CRC2_WIDTH, `REGA_P3_CRC2, `P3_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P3_CRC3_WIDTH                                         0
`define REGA_P3_CRC3                                          13'h336
`define P3_CRC3                                               `P3_CRC3_WIDTH, `REGA_P3_CRC3, `P3_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P3_IOSTATUS_WIDTH                                     0
`define REGA_P3_IOSTATUS                                      13'h337
`define P3_IOSTATUS                                           `P3_IOSTATUS_WIDTH, `REGA_P3_IOSTATUS, `P3_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P3_TAP_KEY_WO_WIDTH                                   0
`define REGA_P3_TAP_KEY_WO                                    13'h338
`define P3_TAP_KEY_WO                                         `P3_TAP_KEY_WO_WIDTH, `REGA_P3_TAP_KEY_WO, `P3_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P3_TAP_KEY_WIDTH                                      0
`define REGA_P3_TAP_KEY                                       13'h339
`define P3_TAP_KEY                                            `P3_TAP_KEY_WIDTH, `REGA_P3_TAP_KEY, `P3_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P3_POWER_UP_RESET_WIDTH                               0
`define REGA_P3_POWER_UP_RESET                                13'h33a
`define P3_POWER_UP_RESET                                     `P3_POWER_UP_RESET_WIDTH, `REGA_P3_POWER_UP_RESET, `P3_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P3_SHUTDOWN_WIDTH                                     0
`define REGA_P3_SHUTDOWN                                      13'h33b
`define P3_SHUTDOWN                                           `P3_SHUTDOWN_WIDTH, `REGA_P3_SHUTDOWN, `P3_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P3_SCAN_MODE_WIDTH                                    0
`define REGA_P3_SCAN_MODE                                     13'h33c
`define P3_SCAN_MODE                                          `P3_SCAN_MODE_WIDTH, `REGA_P3_SCAN_MODE, `P3_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P3_SPI_PAGE_WIDTH                                     0
`define REGA_P3_SPI_PAGE                                      13'h37f
`define P3_SPI_PAGE                                           `P3_SPI_PAGE_WIDTH, `REGA_P3_SPI_PAGE, `P3_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define BURST_TEST_WIDTH                                      8
`define REGA_BURST_TEST                                       13'h342
`define BURST_TEST_DEFAULT                                    8'h0
`define BURST_TEST_CHECK                                      8'h0
`define BURST_TEST                                            `BURST_TEST_WIDTH, `REGA_BURST_TEST, `BURST_TEST_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     BURST_TEST_EN
//                  Test burst mode with sequence of 0x55 and 0xaa
//  6:2  0x0     RESERVED
//                  Reserved
//    1  0x0     CHANNEL_SEL
//                  Select Channel for offset test
//                  0 = CH0, 1 = CH1
//    0  0x0     ENABLE AFFSET ACC
//                  0 = Disable Channel Offset Acc Function
//                  1 = Enable Channel Offset Acc Function

`define PIX_MAX_HI_WIDTH                                      8
`define REGA_PIX_MAX_HI                                       13'h362
`define PIX_MAX_HI_DEFAULT                                    8'h0
`define PIX_MAX_HI_CHECK                                      8'h0
`define PIX_MAX_HI                                            `PIX_MAX_HI_WIDTH, `REGA_PIX_MAX_HI, `PIX_MAX_HI_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     PIX_MAX_LO
//                  PIX_MAX high byte.

`define PIX_MAX_LO_WIDTH                                      8
`define REGA_PIX_MAX_LO                                       13'h363
`define PIX_MAX_LO_DEFAULT                                    8'h0
`define PIX_MAX_LO_CHECK                                      8'h0
`define PIX_MAX_LO                                            `PIX_MAX_LO_WIDTH, `REGA_PIX_MAX_LO, `PIX_MAX_LO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     PIX_MAX_HI
//                  PIX_MAX low byte.

`define PIX_AVG_HI_WIDTH                                      8
`define REGA_PIX_AVG_HI                                       13'h36c
`define PIX_AVG_HI_DEFAULT                                    8'h0
`define PIX_AVG_HI_CHECK                                      8'h0
`define PIX_AVG_HI                                            `PIX_AVG_HI_WIDTH, `REGA_PIX_AVG_HI, `PIX_AVG_HI_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     PIX_AVG_HI
//                  PIX_AVG high byte.

`define PIX_AVG_MID_WIDTH                                     8
`define REGA_PIX_AVG_MID                                      13'h36d
`define PIX_AVG_MID_DEFAULT                                   8'h0
`define PIX_AVG_MID_CHECK                                     8'h0
`define PIX_AVG_MID                                           `PIX_AVG_MID_WIDTH, `REGA_PIX_AVG_MID, `PIX_AVG_MID_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     PIX_AVG_MID
//                  PIX_AVG middle byte.

`define PIX_AVG_LO_WIDTH                                      8
`define REGA_PIX_AVG_LO                                       13'h36e
`define PIX_AVG_LO_DEFAULT                                    8'h0
`define PIX_AVG_LO_CHECK                                      8'h0
`define PIX_AVG_LO                                            `PIX_AVG_LO_WIDTH, `REGA_PIX_AVG_LO, `PIX_AVG_LO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     PIX_AVG_LO
//                  PIX_AVG low byte.

`define PIX_MIN_HI_WIDTH                                      8
`define REGA_PIX_MIN_HI                                       13'h36f
`define PIX_MIN_HI_DEFAULT                                    8'h0
`define PIX_MIN_HI_CHECK                                      8'h0
`define PIX_MIN_HI                                            `PIX_MIN_HI_WIDTH, `REGA_PIX_MIN_HI, `PIX_MIN_HI_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     PIX_MIN_HI
//                  PIX_MIN high byte.

`define PIX_MIN_LO_WIDTH                                      8
`define REGA_PIX_MIN_LO                                       13'h370
`define PIX_MIN_LO_DEFAULT                                    8'h0
`define PIX_MIN_LO_CHECK                                      8'h0
`define PIX_MIN_LO                                            `PIX_MIN_LO_WIDTH, `REGA_PIX_MIN_LO, `PIX_MIN_LO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     PIX_MIN_LO
//                  PIX_MIN low byte.


`define P4_PROD_ID_WIDTH                                      0
`define REGA_P4_PROD_ID                                       13'h400
`define P4_PROD_ID                                            `P4_PROD_ID_WIDTH, `REGA_P4_PROD_ID, `P4_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P4_REV_ID_WIDTH                                       0
`define REGA_P4_REV_ID                                        13'h401
`define P4_REV_ID                                             `P4_REV_ID_WIDTH, `REGA_P4_REV_ID, `P4_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P4_MOTION_WIDTH                                       0
`define REGA_P4_MOTION                                        13'h402
`define P4_MOTION                                             `P4_MOTION_WIDTH, `REGA_P4_MOTION, `P4_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P4_DELTA_X_LO_WIDTH                                   0
`define REGA_P4_DELTA_X_LO                                    13'h403
`define P4_DELTA_X_LO                                         `P4_DELTA_X_LO_WIDTH, `REGA_P4_DELTA_X_LO, `P4_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P4_DELTA_X_HI_WIDTH                                   0
`define REGA_P4_DELTA_X_HI                                    13'h404
`define P4_DELTA_X_HI                                         `P4_DELTA_X_HI_WIDTH, `REGA_P4_DELTA_X_HI, `P4_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P4_DELTA_Y_LO_WIDTH                                   0
`define REGA_P4_DELTA_Y_LO                                    13'h405
`define P4_DELTA_Y_LO                                         `P4_DELTA_Y_LO_WIDTH, `REGA_P4_DELTA_Y_LO, `P4_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P4_DELTA_Y_HI_WIDTH                                   0
`define REGA_P4_DELTA_Y_HI                                    13'h406
`define P4_DELTA_Y_HI                                         `P4_DELTA_Y_HI_WIDTH, `REGA_P4_DELTA_Y_HI, `P4_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P4_SQUAL_WIDTH                                        0
`define REGA_P4_SQUAL                                         13'h407
`define P4_SQUAL                                              `P4_SQUAL_WIDTH, `REGA_P4_SQUAL, `P4_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P4_PIX_ACCUM_WIDTH                                    0
`define REGA_P4_PIX_ACCUM                                     13'h408
`define P4_PIX_ACCUM                                          `P4_PIX_ACCUM_WIDTH, `REGA_P4_PIX_ACCUM, `P4_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P4_PIX_MAX_WIDTH                                      0
`define REGA_P4_PIX_MAX                                       13'h409
`define P4_PIX_MAX                                            `P4_PIX_MAX_WIDTH, `REGA_P4_PIX_MAX, `P4_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P4_PIX_MIN_WIDTH                                      0
`define REGA_P4_PIX_MIN                                       13'h40a
`define P4_PIX_MIN                                            `P4_PIX_MIN_WIDTH, `REGA_P4_PIX_MIN, `P4_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P4_SHUT_LO_WIDTH                                      0
`define REGA_P4_SHUT_LO                                       13'h40b
`define P4_SHUT_LO                                            `P4_SHUT_LO_WIDTH, `REGA_P4_SHUT_LO, `P4_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P4_SHUT_HI_WIDTH                                      0
`define REGA_P4_SHUT_HI                                       13'h40c
`define P4_SHUT_HI                                            `P4_SHUT_HI_WIDTH, `REGA_P4_SHUT_HI, `P4_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P4_EXT_WAKEUP_WIDTH                                   0
`define REGA_P4_EXT_WAKEUP                                    13'h40d
`define P4_EXT_WAKEUP                                         `P4_EXT_WAKEUP_WIDTH, `REGA_P4_EXT_WAKEUP, `P4_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P4_RESERVED_E_WIDTH                                   0
`define REGA_P4_RESERVED_E                                    13'h40e
`define P4_RESERVED_E                                         `P4_RESERVED_E_WIDTH, `REGA_P4_RESERVED_E, `P4_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P4_SKIP_FRAMES_CNT_LO_WIDTH                           0
`define REGA_P4_SKIP_FRAMES_CNT_LO                            13'h40f
`define P4_SKIP_FRAMES_CNT_LO                                 `P4_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P4_SKIP_FRAMES_CNT_LO, `P4_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P4_SKIP_FRAMES_CNT_HI_WIDTH                           0
`define REGA_P4_SKIP_FRAMES_CNT_HI                            13'h410
`define P4_SKIP_FRAMES_CNT_HI                                 `P4_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P4_SKIP_FRAMES_CNT_HI, `P4_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P4_CVFR_PERIOD_LO_WIDTH                               0
`define REGA_P4_CVFR_PERIOD_LO                                13'h411
`define P4_CVFR_PERIOD_LO                                     `P4_CVFR_PERIOD_LO_WIDTH, `REGA_P4_CVFR_PERIOD_LO, `P4_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P4_CVFR_PERIOD_HI_WIDTH                               0
`define REGA_P4_CVFR_PERIOD_HI                                13'h412
`define P4_CVFR_PERIOD_HI                                     `P4_CVFR_PERIOD_HI_WIDTH, `REGA_P4_CVFR_PERIOD_HI, `P4_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P4_OBSERVATION_WIDTH                                  0
`define REGA_P4_OBSERVATION                                   13'h415
`define P4_OBSERVATION                                        `P4_OBSERVATION_WIDTH, `REGA_P4_OBSERVATION, `P4_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P4_BURST_MOTION_WIDTH                                 0
`define REGA_P4_BURST_MOTION                                  13'h416
`define P4_BURST_MOTION                                       `P4_BURST_MOTION_WIDTH, `REGA_P4_BURST_MOTION, `P4_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P4_SQUAL2_WIDTH                                       0
`define REGA_P4_SQUAL2                                        13'h417
`define P4_SQUAL2                                             `P4_SQUAL2_WIDTH, `REGA_P4_SQUAL2, `P4_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P4_SPI_MODE_WIDTH                                     0
`define REGA_P4_SPI_MODE                                      13'h418
`define P4_SPI_MODE                                           `P4_SPI_MODE_WIDTH, `REGA_P4_SPI_MODE, `P4_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P4_OSC_TUNE_INSTR_WIDTH                               0
`define REGA_P4_OSC_TUNE_INSTR                                13'h422
`define P4_OSC_TUNE_INSTR                                     `P4_OSC_TUNE_INSTR_WIDTH, `REGA_P4_OSC_TUNE_INSTR, `P4_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P4_OSC_TUNE_INSTR_SLOW_WIDTH                          0
`define REGA_P4_OSC_TUNE_INSTR_SLOW                           13'h423
`define P4_OSC_TUNE_INSTR_SLOW                                `P4_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P4_OSC_TUNE_INSTR_SLOW, `P4_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P4_PRBS_MODE_WIDTH                                    0
`define REGA_P4_PRBS_MODE                                     13'h430
`define P4_PRBS_MODE                                          `P4_PRBS_MODE_WIDTH, `REGA_P4_PRBS_MODE, `P4_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P4_POWERDOWN_WIDTH                                    0
`define REGA_P4_POWERDOWN                                     13'h432
`define P4_POWERDOWN                                          `P4_POWERDOWN_WIDTH, `REGA_P4_POWERDOWN, `P4_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P4_CRC0_WIDTH                                         0
`define REGA_P4_CRC0                                          13'h433
`define P4_CRC0                                               `P4_CRC0_WIDTH, `REGA_P4_CRC0, `P4_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P4_CRC1_WIDTH                                         0
`define REGA_P4_CRC1                                          13'h434
`define P4_CRC1                                               `P4_CRC1_WIDTH, `REGA_P4_CRC1, `P4_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P4_CRC2_WIDTH                                         0
`define REGA_P4_CRC2                                          13'h435
`define P4_CRC2                                               `P4_CRC2_WIDTH, `REGA_P4_CRC2, `P4_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P4_CRC3_WIDTH                                         0
`define REGA_P4_CRC3                                          13'h436
`define P4_CRC3                                               `P4_CRC3_WIDTH, `REGA_P4_CRC3, `P4_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P4_IOSTATUS_WIDTH                                     0
`define REGA_P4_IOSTATUS                                      13'h437
`define P4_IOSTATUS                                           `P4_IOSTATUS_WIDTH, `REGA_P4_IOSTATUS, `P4_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P4_TAP_KEY_WO_WIDTH                                   0
`define REGA_P4_TAP_KEY_WO                                    13'h438
`define P4_TAP_KEY_WO                                         `P4_TAP_KEY_WO_WIDTH, `REGA_P4_TAP_KEY_WO, `P4_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P4_TAP_KEY_WIDTH                                      0
`define REGA_P4_TAP_KEY                                       13'h439
`define P4_TAP_KEY                                            `P4_TAP_KEY_WIDTH, `REGA_P4_TAP_KEY, `P4_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P4_POWER_UP_RESET_WIDTH                               0
`define REGA_P4_POWER_UP_RESET                                13'h43a
`define P4_POWER_UP_RESET                                     `P4_POWER_UP_RESET_WIDTH, `REGA_P4_POWER_UP_RESET, `P4_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P4_SHUTDOWN_WIDTH                                     0
`define REGA_P4_SHUTDOWN                                      13'h43b
`define P4_SHUTDOWN                                           `P4_SHUTDOWN_WIDTH, `REGA_P4_SHUTDOWN, `P4_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P4_SCAN_MODE_WIDTH                                    0
`define REGA_P4_SCAN_MODE                                     13'h43c
`define P4_SCAN_MODE                                          `P4_SCAN_MODE_WIDTH, `REGA_P4_SCAN_MODE, `P4_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P4_SPI_PAGE_WIDTH                                     0
`define REGA_P4_SPI_PAGE                                      13'h47f
`define P4_SPI_PAGE                                           `P4_SPI_PAGE_WIDTH, `REGA_P4_SPI_PAGE, `P4_SPI_PAGE_DEFAULT
//  access       rw
//  atype        TP

`define SFT_CTL_WIDTH                                         8
`define REGA_SFT_CTL                                          13'h440
`define SFT_CTL_DEFAULT                                       8'h40
`define SFT_CTL_CHECK                                         8'h40
`define SFT_CTL                                               `SFT_CTL_WIDTH, `REGA_SFT_CTL, `SFT_CTL_DEFAULT
//  access       rw
//  atype        S
//    7  0x0     SFT_CLK_EN
//                  Surface tune clock enable
//                  0: Disable
//                  1: Enable
//  6:4  0x4     MSQ_SCALE
//                  MSQ scaling factor
//                  0x7: 1.00
//                  0x6: 0.875
//                  0x5: 0.75
//                  0x4: 0.625
//                  0x3: 0.5
//                  0x2: 0.375
//                  0x1: 0.25
//                  0x0: 0.125
//  3:2  0x0     SFT_SHUT_MAX_SCALE
//                  SFT SHUT_MAX output scaling from SFT collected shutmax value
//                  0x3: 1.375
//                  0x2: 1.25
//                  0x1: 1.125
//                  0x0: 1
//    1  0x0     RESERVED
//                  Reserved
//    0  0x0     SFT_START
//                  Surface tune start/stop
//                  0: Stop
//                  1: Start

`define SFT_MSQ_T_WIDTH                                       8
`define REGA_SFT_MSQ_T                                        13'h441
`define SFT_MSQ_T_DEFAULT                                     8'h50
`define SFT_MSQ_T_CHECK                                       8'h50
`define SFT_MSQ_T                                             `SFT_MSQ_T_WIDTH, `REGA_SFT_MSQ_T, `SFT_MSQ_T_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x50    SFT_MSQ_T
//                  Min Squal Target that will be compared with MSQA to MSQH
//                  This value will be compared to 8 bits MSB of SQ_CNT

`define SFT_SHUT_LO_T_WIDTH                                   8
`define REGA_SFT_SHUT_LO_T                                    13'h442
`define SFT_SHUT_LO_T_DEFAULT                                 8'h0
`define SFT_SHUT_LO_T_CHECK                                   8'h0
`define SFT_SHUT_LO_T                                         `SFT_SHUT_LO_T_WIDTH, `REGA_SFT_SHUT_LO_T, `SFT_SHUT_LO_T_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x0     SFT_SHUT_LO_T
//                  Shutter Low Target that will be compared with minimum shutter

`define SFT_SHUT_HI_T_WIDTH                                   8
`define REGA_SFT_SHUT_HI_T                                    13'h443
`define SFT_SHUT_HI_T_DEFAULT                                 8'h4
`define SFT_SHUT_HI_T_CHECK                                   8'h4
`define SFT_SHUT_HI_T                                         `SFT_SHUT_HI_T_WIDTH, `REGA_SFT_SHUT_HI_T, `SFT_SHUT_HI_T_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x4     SFT_SHUT_HI_T
//                  Shutter High Target that will be compared with minimum shutter

`define SFT_SQTHA_WIDTH                                       8
`define REGA_SFT_SQTHA                                        13'h444
`define SFT_SQTHA_DEFAULT                                     8'h34
`define SFT_SQTHA_CHECK                                       8'h34
`define SFT_SQTHA                                             `SFT_SQTHA_WIDTH, `REGA_SFT_SQTHA, `SFT_SQTHA_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x34    SFT_SQTHA
//                  SFT squal Threshold A

`define SFT_SQTHB_WIDTH                                       8
`define REGA_SFT_SQTHB                                        13'h445
`define SFT_SQTHB_DEFAULT                                     8'h2e
`define SFT_SQTHB_CHECK                                       8'h2e
`define SFT_SQTHB                                             `SFT_SQTHB_WIDTH, `REGA_SFT_SQTHB, `SFT_SQTHB_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x2e    SFT_SQTHB
//                  SFT squal threshold B

`define SFT_SQTHC_WIDTH                                       8
`define REGA_SFT_SQTHC                                        13'h446
`define SFT_SQTHC_DEFAULT                                     8'h28
`define SFT_SQTHC_CHECK                                       8'h28
`define SFT_SQTHC                                             `SFT_SQTHC_WIDTH, `REGA_SFT_SQTHC, `SFT_SQTHC_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x28    SFT_SQTHC
//                  SFT squal Threshold C

`define SFT_SQTHD_WIDTH                                       8
`define REGA_SFT_SQTHD                                        13'h447
`define SFT_SQTHD_DEFAULT                                     8'h22
`define SFT_SQTHD_CHECK                                       8'h22
`define SFT_SQTHD                                             `SFT_SQTHD_WIDTH, `REGA_SFT_SQTHD, `SFT_SQTHD_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x22    SFT_SQTHD
//                  SFT squal threshold D

`define SFT_SQTHE_WIDTH                                       8
`define REGA_SFT_SQTHE                                        13'h448
`define SFT_SQTHE_DEFAULT                                     8'h1c
`define SFT_SQTHE_CHECK                                       8'h1c
`define SFT_SQTHE                                             `SFT_SQTHE_WIDTH, `REGA_SFT_SQTHE, `SFT_SQTHE_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x1c    SFT_SQTHE
//                  SFT squal Threshold E

`define SFT_SQTHF_WIDTH                                       8
`define REGA_SFT_SQTHF                                        13'h449
`define SFT_SQTHF_DEFAULT                                     8'h16
`define SFT_SQTHF_CHECK                                       8'h16
`define SFT_SQTHF                                             `SFT_SQTHF_WIDTH, `REGA_SFT_SQTHF, `SFT_SQTHF_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x16    SFT_SQTHF
//                  SFT squal threshold F

`define SFT_SQTHG_WIDTH                                       8
`define REGA_SFT_SQTHG                                        13'h44a
`define SFT_SQTHG_DEFAULT                                     8'h10
`define SFT_SQTHG_CHECK                                       8'h10
`define SFT_SQTHG                                             `SFT_SQTHG_WIDTH, `REGA_SFT_SQTHG, `SFT_SQTHG_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x10    SFT_SQTHG
//                  SFT squal Threshold G

`define SFT_SQTHH_WIDTH                                       8
`define REGA_SFT_SQTHH                                        13'h44b
`define SFT_SQTHH_DEFAULT                                     8'ha
`define SFT_SQTHH_CHECK                                       8'ha
`define SFT_SQTHH                                             `SFT_SQTHH_WIDTH, `REGA_SFT_SQTHH, `SFT_SQTHH_DEFAULT
//  access       rw
//  atype        S
//  7:0  0xa     SFT_SQTHH
//                  SFT squal threshold H

`define SFT_STATUS_WIDTH                                      8
`define REGA_SFT_STATUS                                       13'h44c
`define SFT_STATUS_DEFAULT                                    8'h0
`define SFT_STATUS_CHECK                                      8'h0
`define SFT_STATUS                                            `SFT_STATUS_WIDTH, `REGA_SFT_STATUS, `SFT_STATUS_DEFAULT
//  access       ro
//  atype        S
//  7:4  0x0     SQTH_SEL
//                  Selected SQTH (A to H)
//                  0x0: No SQTH selected
//                  0x1: SQTHA
//                  0x2: SQTHB
//                  0x3: SQTHC
//                  0x4: SQTHD
//                  0x5: SQTHE
//                  0x6: SQTHF
//                  0x7: SQTHG
//                  0x8: SQTHH
//    3  0x0     SFT_CLK_READY
//                  SFT clock ready.
//    2  0x0     SFT_DONE
//                  Surface tune done
//    1  0x0     SFT_LED
//                  LED boost needed
//                  0x0: LED brightness is sufficient
//                  0x1: Need to increase LED brightness and rerun surface tune
//    0  0x0     SFT_VALID
//                  Surface tuning result
//                  0x0: Invalid
//                  0x1: Valid

`define SFT_MSQ_WIDTH                                         8
`define REGA_SFT_MSQ                                          13'h44d
`define SFT_MSQ_DEFAULT                                       8'h0
`define SFT_MSQ_CHECK                                         8'h0
`define SFT_MSQ                                               `SFT_MSQ_WIDTH, `REGA_SFT_MSQ, `SFT_MSQ_DEFAULT
//  access       ro
//  atype        S
//  7:0  0x0     SFT_MSQ
//                  SFT min squal threshold

`define SFT_SQTH_WIDTH                                        8
`define REGA_SFT_SQTH                                         13'h44e
`define SFT_SQTH_DEFAULT                                      8'h0
`define SFT_SQTH_CHECK                                        8'h0
`define SFT_SQTH                                              `SFT_SQTH_WIDTH, `REGA_SFT_SQTH, `SFT_SQTH_DEFAULT
//  access       ro
//  atype        S
//  7:0  0x0     SFT_SQTH
//                  SFT squal threshold

`define SFT_MSQA_WIDTH                                        8
`define REGA_SFT_MSQA                                         13'h44f
`define SFT_MSQA_DEFAULT                                      8'h0
`define SFT_MSQA_CHECK                                        8'h0
`define SFT_MSQA                                              `SFT_MSQA_WIDTH, `REGA_SFT_MSQA, `SFT_MSQA_DEFAULT
//  access       ro
//  atype        S
//  7:0  0x0     SFT_MSQA
//                  SFT Min Squal A

`define SFT_MSQB_WIDTH                                        8
`define REGA_SFT_MSQB                                         13'h450
`define SFT_MSQB_DEFAULT                                      8'h0
`define SFT_MSQB_CHECK                                        8'h0
`define SFT_MSQB                                              `SFT_MSQB_WIDTH, `REGA_SFT_MSQB, `SFT_MSQB_DEFAULT
//  access       ro
//  atype        S
//  7:0  0x0     SFT_MSQB
//                  SFT Min Squal B

`define SFT_MSQC_WIDTH                                        8
`define REGA_SFT_MSQC                                         13'h451
`define SFT_MSQC_DEFAULT                                      8'h0
`define SFT_MSQC_CHECK                                        8'h0
`define SFT_MSQC                                              `SFT_MSQC_WIDTH, `REGA_SFT_MSQC, `SFT_MSQC_DEFAULT
//  access       ro
//  atype        S
//  7:0  0x0     SFT_MSQC
//                  SFT Min Squal C

`define SFT_MSQD_WIDTH                                        8
`define REGA_SFT_MSQD                                         13'h452
`define SFT_MSQD_DEFAULT                                      8'h0
`define SFT_MSQD_CHECK                                        8'h0
`define SFT_MSQD                                              `SFT_MSQD_WIDTH, `REGA_SFT_MSQD, `SFT_MSQD_DEFAULT
//  access       ro
//  atype        S
//  7:0  0x0     SFT_MSQD
//                  SFT Min Squal D

`define SFT_MSQE_WIDTH                                        8
`define REGA_SFT_MSQE                                         13'h453
`define SFT_MSQE_DEFAULT                                      8'h0
`define SFT_MSQE_CHECK                                        8'h0
`define SFT_MSQE                                              `SFT_MSQE_WIDTH, `REGA_SFT_MSQE, `SFT_MSQE_DEFAULT
//  access       ro
//  atype        S
//  7:0  0x0     SFT_MSQE
//                  SFT Min Squal E

`define SFT_MSQF_WIDTH                                        8
`define REGA_SFT_MSQF                                         13'h454
`define SFT_MSQF_DEFAULT                                      8'h0
`define SFT_MSQF_CHECK                                        8'h0
`define SFT_MSQF                                              `SFT_MSQF_WIDTH, `REGA_SFT_MSQF, `SFT_MSQF_DEFAULT
//  access       ro
//  atype        S
//  7:0  0x0     SFT_MSQF
//                  SFT Min Squal F

`define SFT_MSQG_WIDTH                                        8
`define REGA_SFT_MSQG                                         13'h455
`define SFT_MSQG_DEFAULT                                      8'h0
`define SFT_MSQG_CHECK                                        8'h0
`define SFT_MSQG                                              `SFT_MSQG_WIDTH, `REGA_SFT_MSQG, `SFT_MSQG_DEFAULT
//  access       ro
//  atype        S
//  7:0  0x0     SFT_MSQG
//                  SFT Min Squal G

`define SFT_MSQH_WIDTH                                        8
`define REGA_SFT_MSQH                                         13'h456
`define SFT_MSQH_DEFAULT                                      8'h0
`define SFT_MSQH_CHECK                                        8'h0
`define SFT_MSQH                                              `SFT_MSQH_WIDTH, `REGA_SFT_MSQH, `SFT_MSQH_DEFAULT
//  access       ro
//  atype        S
//  7:0  0x0     SFT_MSQH
//                  SFT Min Squal H

`define SFT_MIN_SHUT_HI_WIDTH                                 8
`define REGA_SFT_MIN_SHUT_HI                                  13'h457
`define SFT_MIN_SHUT_HI_DEFAULT                               8'h0
`define SFT_MIN_SHUT_HI_CHECK                                 8'h0
`define SFT_MIN_SHUT_HI                                       `SFT_MIN_SHUT_HI_WIDTH, `REGA_SFT_MIN_SHUT_HI, `SFT_MIN_SHUT_HI_DEFAULT
//  access       ro
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x0     SFT_MIN_SHUT_HI
//                  SFT Minimum Shutter High Byte

`define SFT_MIN_SHUT_LO_WIDTH                                 8
`define REGA_SFT_MIN_SHUT_LO                                  13'h458
`define SFT_MIN_SHUT_LO_DEFAULT                               8'h0
`define SFT_MIN_SHUT_LO_CHECK                                 8'h0
`define SFT_MIN_SHUT_LO                                       `SFT_MIN_SHUT_LO_WIDTH, `REGA_SFT_MIN_SHUT_LO, `SFT_MIN_SHUT_LO_DEFAULT
//  access       ro
//  atype        S
//  7:0  0x0     SFT_MIN_SHUT_LO
//                  SFT Minimum Shutter LOw Byte

`define SQUAL_THRESH_SFT_PAF_WIDTH                            8
`define REGA_SQUAL_THRESH_SFT_PAF                             13'h459
`define SQUAL_THRESH_SFT_PAF_DEFAULT                          8'h1c
`define SQUAL_THRESH_SFT_PAF_CHECK                            8'h1c
`define SQUAL_THRESH_SFT_PAF                                  `SQUAL_THRESH_SFT_PAF_WIDTH, `REGA_SQUAL_THRESH_SFT_PAF, `SQUAL_THRESH_SFT_PAF_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x1c    SQUAL_THRESH_SFT_PAF
//                  PAF SFT squal threshold

`define SQUAL_THRESH_SFT_FF_WIDTH                             8
`define REGA_SQUAL_THRESH_SFT_FF                              13'h45a
`define SQUAL_THRESH_SFT_FF_DEFAULT                           8'h1c
`define SQUAL_THRESH_SFT_FF_CHECK                             8'h1c
`define SQUAL_THRESH_SFT_FF                                   `SQUAL_THRESH_SFT_FF_WIDTH, `REGA_SQUAL_THRESH_SFT_FF, `SQUAL_THRESH_SFT_FF_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x1c    SQUAL_THRESH_SFT_FF
//                  FF SFT squal threshold

`define MIN_SQUAL_RUN_SFT_PAF_WIDTH                           8
`define REGA_MIN_SQUAL_RUN_SFT_PAF                            13'h45b
`define MIN_SQUAL_RUN_SFT_PAF_DEFAULT                         8'h18
`define MIN_SQUAL_RUN_SFT_PAF_CHECK                           8'h18
`define MIN_SQUAL_RUN_SFT_PAF                                 `MIN_SQUAL_RUN_SFT_PAF_WIDTH, `REGA_MIN_SQUAL_RUN_SFT_PAF, `MIN_SQUAL_RUN_SFT_PAF_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x18    MIN_SQUAL_RUN_SFT_PAF
//                  PAF SFT MSQ threshold

`define MIN_SQUAL_RUN_SFT_FF_WIDTH                            8
`define REGA_MIN_SQUAL_RUN_SFT_FF                             13'h45c
`define MIN_SQUAL_RUN_SFT_FF_DEFAULT                          8'h18
`define MIN_SQUAL_RUN_SFT_FF_CHECK                            8'h18
`define MIN_SQUAL_RUN_SFT_FF                                  `MIN_SQUAL_RUN_SFT_FF_WIDTH, `REGA_MIN_SQUAL_RUN_SFT_FF, `MIN_SQUAL_RUN_SFT_FF_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x18    MIN_SQUAL_RUN_SFT_FF
//                  FF SFT MSQ threshold

`define SFT_CONFIG_WIDTH                                      8
`define REGA_SFT_CONFIG                                       13'h45d
`define SFT_CONFIG_DEFAULT                                    8'h0
`define SFT_CONFIG_CHECK                                      8'h0
`define SFT_CONFIG                                            `SFT_CONFIG_WIDTH, `REGA_SFT_CONFIG, `SFT_CONFIG_DEFAULT
//  access       rw
//  atype        A
//  7:5  0x0     RESERVED
//                  Reserved
//    4  0x0     SFT_SQTH_REST_EN
//                  Surface tuning rest enable
//                  0: Disable
//                  1: Enabled; enable SFT SQ threshold for rest mode
//    3  0x0     SFT_MSQR_EN
//                  Surface tuning enable
//                  0: Disable
//                  1: Enabled use of OPT0 to OPT2
//    2  0x0     SFT_MSQR_OPT2
//                  Surface Tuning Option 2
//                  0: use normal MSQR and SQ threshold(depending on opt0 and opt1)
//                  1: use SFT thresholds always (overide opt 0 and opt1)
//    1  0x0     SFT_MSQR_OPT1
//                  Surface Tuning Option 1
//                  0: use normal MSQR and SQ threshold regardless of HI_SPEED_DCR2
//                  1: use SFT thresholds if not HI_SPEED_DCR2
//    0  0x0     SFT_MSQR_OPT0
//                  Surface Tuning Option 0
//                  0: use normal MSQR and SQ threshold when lifted and non-lifted
//                  1: use SFT thresholds when Lifted

`define SFT_MAX_SHUT_HI_WIDTH                                 8
`define REGA_SFT_MAX_SHUT_HI                                  13'h45e
`define SFT_MAX_SHUT_HI_DEFAULT                               8'h0
`define SFT_MAX_SHUT_HI_CHECK                                 8'h0
`define SFT_MAX_SHUT_HI                                       `SFT_MAX_SHUT_HI_WIDTH, `REGA_SFT_MAX_SHUT_HI, `SFT_MAX_SHUT_HI_DEFAULT
//  access       ro
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x0     SFT_MAX_SHUT_HI
//                  SFT Maximum Shutter High Byte

`define SFT_MAX_SHUT_LO_WIDTH                                 8
`define REGA_SFT_MAX_SHUT_LO                                  13'h45f
`define SFT_MAX_SHUT_LO_DEFAULT                               8'h0
`define SFT_MAX_SHUT_LO_CHECK                                 8'h0
`define SFT_MAX_SHUT_LO                                       `SFT_MAX_SHUT_LO_WIDTH, `REGA_SFT_MAX_SHUT_LO, `SFT_MAX_SHUT_LO_DEFAULT
//  access       ro
//  atype        S
//  7:0  0x0     SFT_MAX_SHUT_LO
//                  SFT Maximum Shutter LOw Byte


`define P5_PROD_ID_WIDTH                                      0
`define REGA_P5_PROD_ID                                       13'h500
`define P5_PROD_ID                                            `P5_PROD_ID_WIDTH, `REGA_P5_PROD_ID, `P5_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P5_REV_ID_WIDTH                                       0
`define REGA_P5_REV_ID                                        13'h501
`define P5_REV_ID                                             `P5_REV_ID_WIDTH, `REGA_P5_REV_ID, `P5_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P5_MOTION_WIDTH                                       0
`define REGA_P5_MOTION                                        13'h502
`define P5_MOTION                                             `P5_MOTION_WIDTH, `REGA_P5_MOTION, `P5_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P5_DELTA_X_LO_WIDTH                                   0
`define REGA_P5_DELTA_X_LO                                    13'h503
`define P5_DELTA_X_LO                                         `P5_DELTA_X_LO_WIDTH, `REGA_P5_DELTA_X_LO, `P5_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P5_DELTA_X_HI_WIDTH                                   0
`define REGA_P5_DELTA_X_HI                                    13'h504
`define P5_DELTA_X_HI                                         `P5_DELTA_X_HI_WIDTH, `REGA_P5_DELTA_X_HI, `P5_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P5_DELTA_Y_LO_WIDTH                                   0
`define REGA_P5_DELTA_Y_LO                                    13'h505
`define P5_DELTA_Y_LO                                         `P5_DELTA_Y_LO_WIDTH, `REGA_P5_DELTA_Y_LO, `P5_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P5_DELTA_Y_HI_WIDTH                                   0
`define REGA_P5_DELTA_Y_HI                                    13'h506
`define P5_DELTA_Y_HI                                         `P5_DELTA_Y_HI_WIDTH, `REGA_P5_DELTA_Y_HI, `P5_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P5_SQUAL_WIDTH                                        0
`define REGA_P5_SQUAL                                         13'h507
`define P5_SQUAL                                              `P5_SQUAL_WIDTH, `REGA_P5_SQUAL, `P5_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P5_PIX_ACCUM_WIDTH                                    0
`define REGA_P5_PIX_ACCUM                                     13'h508
`define P5_PIX_ACCUM                                          `P5_PIX_ACCUM_WIDTH, `REGA_P5_PIX_ACCUM, `P5_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P5_PIX_MAX_WIDTH                                      0
`define REGA_P5_PIX_MAX                                       13'h509
`define P5_PIX_MAX                                            `P5_PIX_MAX_WIDTH, `REGA_P5_PIX_MAX, `P5_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P5_PIX_MIN_WIDTH                                      0
`define REGA_P5_PIX_MIN                                       13'h50a
`define P5_PIX_MIN                                            `P5_PIX_MIN_WIDTH, `REGA_P5_PIX_MIN, `P5_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P5_SHUT_LO_WIDTH                                      0
`define REGA_P5_SHUT_LO                                       13'h50b
`define P5_SHUT_LO                                            `P5_SHUT_LO_WIDTH, `REGA_P5_SHUT_LO, `P5_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P5_SHUT_HI_WIDTH                                      0
`define REGA_P5_SHUT_HI                                       13'h50c
`define P5_SHUT_HI                                            `P5_SHUT_HI_WIDTH, `REGA_P5_SHUT_HI, `P5_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P5_EXT_WAKEUP_WIDTH                                   0
`define REGA_P5_EXT_WAKEUP                                    13'h50d
`define P5_EXT_WAKEUP                                         `P5_EXT_WAKEUP_WIDTH, `REGA_P5_EXT_WAKEUP, `P5_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P5_RESERVED_E_WIDTH                                   0
`define REGA_P5_RESERVED_E                                    13'h50e
`define P5_RESERVED_E                                         `P5_RESERVED_E_WIDTH, `REGA_P5_RESERVED_E, `P5_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P5_SKIP_FRAMES_CNT_LO_WIDTH                           0
`define REGA_P5_SKIP_FRAMES_CNT_LO                            13'h50f
`define P5_SKIP_FRAMES_CNT_LO                                 `P5_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P5_SKIP_FRAMES_CNT_LO, `P5_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P5_SKIP_FRAMES_CNT_HI_WIDTH                           0
`define REGA_P5_SKIP_FRAMES_CNT_HI                            13'h510
`define P5_SKIP_FRAMES_CNT_HI                                 `P5_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P5_SKIP_FRAMES_CNT_HI, `P5_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P5_CVFR_PERIOD_LO_WIDTH                               0
`define REGA_P5_CVFR_PERIOD_LO                                13'h511
`define P5_CVFR_PERIOD_LO                                     `P5_CVFR_PERIOD_LO_WIDTH, `REGA_P5_CVFR_PERIOD_LO, `P5_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P5_CVFR_PERIOD_HI_WIDTH                               0
`define REGA_P5_CVFR_PERIOD_HI                                13'h512
`define P5_CVFR_PERIOD_HI                                     `P5_CVFR_PERIOD_HI_WIDTH, `REGA_P5_CVFR_PERIOD_HI, `P5_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P5_OBSERVATION_WIDTH                                  0
`define REGA_P5_OBSERVATION                                   13'h515
`define P5_OBSERVATION                                        `P5_OBSERVATION_WIDTH, `REGA_P5_OBSERVATION, `P5_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P5_BURST_MOTION_WIDTH                                 0
`define REGA_P5_BURST_MOTION                                  13'h516
`define P5_BURST_MOTION                                       `P5_BURST_MOTION_WIDTH, `REGA_P5_BURST_MOTION, `P5_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P5_SQUAL2_WIDTH                                       0
`define REGA_P5_SQUAL2                                        13'h517
`define P5_SQUAL2                                             `P5_SQUAL2_WIDTH, `REGA_P5_SQUAL2, `P5_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P5_SPI_MODE_WIDTH                                     0
`define REGA_P5_SPI_MODE                                      13'h518
`define P5_SPI_MODE                                           `P5_SPI_MODE_WIDTH, `REGA_P5_SPI_MODE, `P5_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P5_OSC_TUNE_INSTR_WIDTH                               0
`define REGA_P5_OSC_TUNE_INSTR                                13'h522
`define P5_OSC_TUNE_INSTR                                     `P5_OSC_TUNE_INSTR_WIDTH, `REGA_P5_OSC_TUNE_INSTR, `P5_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P5_OSC_TUNE_INSTR_SLOW_WIDTH                          0
`define REGA_P5_OSC_TUNE_INSTR_SLOW                           13'h523
`define P5_OSC_TUNE_INSTR_SLOW                                `P5_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P5_OSC_TUNE_INSTR_SLOW, `P5_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P5_PRBS_MODE_WIDTH                                    0
`define REGA_P5_PRBS_MODE                                     13'h530
`define P5_PRBS_MODE                                          `P5_PRBS_MODE_WIDTH, `REGA_P5_PRBS_MODE, `P5_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P5_POWERDOWN_WIDTH                                    0
`define REGA_P5_POWERDOWN                                     13'h532
`define P5_POWERDOWN                                          `P5_POWERDOWN_WIDTH, `REGA_P5_POWERDOWN, `P5_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P5_CRC0_WIDTH                                         0
`define REGA_P5_CRC0                                          13'h533
`define P5_CRC0                                               `P5_CRC0_WIDTH, `REGA_P5_CRC0, `P5_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P5_CRC1_WIDTH                                         0
`define REGA_P5_CRC1                                          13'h534
`define P5_CRC1                                               `P5_CRC1_WIDTH, `REGA_P5_CRC1, `P5_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P5_CRC2_WIDTH                                         0
`define REGA_P5_CRC2                                          13'h535
`define P5_CRC2                                               `P5_CRC2_WIDTH, `REGA_P5_CRC2, `P5_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P5_CRC3_WIDTH                                         0
`define REGA_P5_CRC3                                          13'h536
`define P5_CRC3                                               `P5_CRC3_WIDTH, `REGA_P5_CRC3, `P5_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P5_IOSTATUS_WIDTH                                     0
`define REGA_P5_IOSTATUS                                      13'h537
`define P5_IOSTATUS                                           `P5_IOSTATUS_WIDTH, `REGA_P5_IOSTATUS, `P5_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P5_TAP_KEY_WO_WIDTH                                   0
`define REGA_P5_TAP_KEY_WO                                    13'h538
`define P5_TAP_KEY_WO                                         `P5_TAP_KEY_WO_WIDTH, `REGA_P5_TAP_KEY_WO, `P5_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P5_TAP_KEY_WIDTH                                      0
`define REGA_P5_TAP_KEY                                       13'h539
`define P5_TAP_KEY                                            `P5_TAP_KEY_WIDTH, `REGA_P5_TAP_KEY, `P5_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P5_POWER_UP_RESET_WIDTH                               0
`define REGA_P5_POWER_UP_RESET                                13'h53a
`define P5_POWER_UP_RESET                                     `P5_POWER_UP_RESET_WIDTH, `REGA_P5_POWER_UP_RESET, `P5_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P5_SHUTDOWN_WIDTH                                     0
`define REGA_P5_SHUTDOWN                                      13'h53b
`define P5_SHUTDOWN                                           `P5_SHUTDOWN_WIDTH, `REGA_P5_SHUTDOWN, `P5_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P5_SCAN_MODE_WIDTH                                    0
`define REGA_P5_SCAN_MODE                                     13'h53c
`define P5_SCAN_MODE                                          `P5_SCAN_MODE_WIDTH, `REGA_P5_SCAN_MODE, `P5_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P5_SPI_PAGE_WIDTH                                     0
`define REGA_P5_SPI_PAGE                                      13'h57f
`define P5_SPI_PAGE                                           `P5_SPI_PAGE_WIDTH, `REGA_P5_SPI_PAGE, `P5_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define NAV_CTRL0_WIDTH                                       8
`define REGA_NAV_CTRL0                                        13'h540
`define NAV_CTRL0_DEFAULT                                     8'h0
`define NAV_CTRL0_CHECK                                       8'h0
`define NAV_CTRL0                                             `NAV_CTRL0_WIDTH, `REGA_NAV_CTRL0, `NAV_CTRL0_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     MAX_SPEED_CLIP_TH
//                  Velocity above which the delta X and Y are clipped to 0 or MAX_SPEED_CLIP_TH (see NAV_CTRL1[5]).
//                  Register value is in 4 sub-pixels: (abs_vel_20k_0p25pix >= {1'b0, MAX_SPEED_CLIP_TH})
//                  If the register value is 0, the max speed clip is disabled.
//                  This register is only selected if the MAX_SPEED_CLIP_TH_SEL bit is 1.
//                  Reading this register will return the effective max speed clip threshold.

`define NAV_CTRL1_WIDTH                                       8
`define REGA_NAV_CTRL1                                        13'h541
`define NAV_CTRL1_DEFAULT                                     8'he1
`define NAV_CTRL1_CHECK                                       8'he1
`define NAV_CTRL1                                             `NAV_CTRL1_WIDTH, `REGA_NAV_CTRL1, `NAV_CTRL1_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     SMALL_OFFSET_DS
//                  1= only allow frame rate downshift when OFFSET is smaller than SMALL_OFFSET_THRESH
//    6  0x1     REREF_HI_FPS_EN
//                  Do reref when upshift to highest frame rate
//                  0x0: Disable
//                  0x1: Enable
//    5  0x1     CLIP2ZERO_EN
//                  0x0: Delta X and Y are clipped to MAX_SPEED_CLIP_TH individually
//                  0x1: Both delta X and Y are clipped to 0
//    4  0x0     LOWSHUTREREF
//                  low shut reref enable
//    3  0x0     BAD_BOWL_EN
//                  1= enable go to max VFR during when current bowl is 1/8 of last bowl
//    2  0x0     LOWSQ_REST_REREF_DIS
//                  1= disable rest reref during low squal
//    1  0x0     PERIODIC_REREF_EN
//                  1= enable periodic image reref
//                  Periodic reref threshold can be set with NAV_CTRL71
//    0  0x1     AC_RUNAWAY_MAX_EN
//                  1= enable go to max VFR during AC_RUNAWAY

`define NAV_CTRL2_WIDTH                                       8
`define REGA_NAV_CTRL2                                        13'h542
`define NAV_CTRL2_DEFAULT                                     8'h28
`define NAV_CTRL2_CHECK                                       8'h28
`define NAV_CTRL2                                             `NAV_CTRL2_WIDTH, `REGA_NAV_CTRL2, `NAV_CTRL2_DEFAULT
//  access       rw
//  atype        A
//  7:5  0x1     SEL_STATUS_FLAGS_PAGE
//                  0x00: Select Page 0
//                  0x01: Select Page 1
//                  0x02: Select Page 2
//                  0x03: Select Page 3
//    4  0x0     RESERVED
//                  Reserved
//    3  0x1     REREF_LIFT_DELAY_EN
//                  Do reref when LIFTED_DELAYED_GATED is de-asserted
//                  0x0: Disable
//                  0x1: Enable
//    2  0x0     FORCE_REREF
//                  1= Force reref
//    1  0x0     DCR_DONT_BLUR_IN_REST
//                  0: If blurring enabled, rest images are blurred as well.
//                  1: If blurring enabled, rest images are not blurred.
//    0  0x0     FLAGS_0_RESET
//                  1= reset flags_0

`define NAV_CTRL3_WIDTH                                       8
`define REGA_NAV_CTRL3                                        13'h543
`define NAV_CTRL3_DEFAULT                                     8'he4
`define NAV_CTRL3_CHECK                                       8'he4
`define NAV_CTRL3                                             `NAV_CTRL3_WIDTH, `REGA_NAV_CTRL3, `NAV_CTRL3_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     LOW_SPEED_REREF
//                  0: Enable
//                  1: Disable
//    6  0x1     PREDICTION_METHOD
//                  0: VFR1 use Acc and VFR2 use Vel
//                  1: Always Vel
//    5  0x1     SHUT_MAX_LIFT_OFF
//                  0: Enable
//                  1: Disable
//    4  0x0     RUNAWAY
//                  0: Enable
//                  1: Disable
//    3  0x0     DPI_DOWNSHIFT_IN_HI_SQ_SURF
//                  0: Enable
//                  1: Disable
//    2  0x1     RAW_LIFT
//                  Lift transition flags capture lift to no-lift or no-lift to lift events
//                  This option allows use to either use LIFTED_GATED or lifted_raw for transition
//                  0: Use LIFTED_GATED = ((LIFTED & !shut_max_lift_off) | LIFTED_SQ)
//                  1: Use lifted_raw = (LIFTED | LIFTED_SQ)
//  1:0  0x0     LIFT
//                  00: Lift enabled, delayed lift enabled
//                  01: Lift disabled, delayed lift enabled
//                  11: Lift disabled, delayed lift disabled
//                  10: Lift enabled, delayed lift follows lift (no delay deassert)

`define NAV_CTRL4_WIDTH                                       8
`define REGA_NAV_CTRL4                                        13'h544
`define NAV_CTRL4_DEFAULT                                     8'h4
`define NAV_CTRL4_CHECK                                       8'h4
`define NAV_CTRL4                                             `NAV_CTRL4_WIDTH, `REGA_NAV_CTRL4, `NAV_CTRL4_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     PSEUDO_REST_EN
//                  0: Disabled
//                  1: Enabled
//    6  0x0     DPI_DOWNSHIFT_DIS
//                  0: Enabled
//                  1: Disabled
//    5  0x0     ZERO_INTERP_Y_GT_SUMXY
//                  To clear the interpolator value to zero when Y > sumXY, or numerator > denominator
//                  0: Disabled
//                  1: Enabled
//    4  0x0     ZERO_INTERP_CHECK
//                  To clear the interpolator value to zero when offset_x or offset_y is +/-2
//                  0: Disabled
//                  1: Enabled
//    3  0x0     F_UPSHIFT_SHUT_EN
//                  Enable fast upshift for shutter to adapt faster
//    2  0x1     SMOOTH_LOCUS_EN
//                  0: Disabled
//                  1: Enabled
//    1  0x0     SMOOTH_ACC_DIS
//                  0: Enabled
//                  1: Disabled
//    0  0x0     DISABLE_PIX_REREF_HI_SW
//                  Disable PIX_REREF_HI_SW

`define NAV_CTRL5_WIDTH                                       8
`define REGA_NAV_CTRL5                                        13'h545
`define NAV_CTRL5_DEFAULT                                     8'h14
`define NAV_CTRL5_CHECK                                       8'h14
`define NAV_CTRL5                                             `NAV_CTRL5_WIDTH, `REGA_NAV_CTRL5, `NAV_CTRL5_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     SINGLE_SHOT_REREF
//                  Toggle this bit high then low to perform a single reref
//    6  0x0     CLIP_INTERP_TO_HALF_PIX
//                  Clip the interpolator to half pixel
//                  0: Disabled
//                  1: Enabled
//    5  0x0     BAD_BOWL_CFG
//                  0: runaway if currrent bowl is less than 1/8 of last bowl
//                  1: runaway if currrent bowl is less than 1/16 of last bowl
//    4  0x1     LIFTED_SQUAL
//                  0: Enabled
//                  1: Disabled
//  3:2  0x1     REST_MODE_DELAY
//                  When lifted, rest is delayed by (0x7fff >> rshift) frames.  Typ Tframe = 0x3fff*50us = 0.819sec
//                  00: rshift = 0
//                  01: rshift = 1
//                  10: rshift = 2
//                  11: rest delay is disabled
//  1:0  0x0     INTERPOLATION_LOCUS_SEARCH_METHOD
//                  00: Locus search Method 2
//                  01: Locus search Method 2 with FIX FILTER SET OPTION
//                  10: Locus search Method 1
//                  11: Locus search disabled; set to Locus4

`define NAV_CTRL6_WIDTH                                       8
`define REGA_NAV_CTRL6                                        13'h546
`define NAV_CTRL6_DEFAULT                                     8'h1b
`define NAV_CTRL6_CHECK                                       8'h1b
`define NAV_CTRL6                                             `NAV_CTRL6_WIDTH, `REGA_NAV_CTRL6, `NAV_CTRL6_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     SQUARE_TEST
//                  1: Enabled
//                  0: Disabled
//    6  0x0     DPI_DOWNSHIFT_OPTION
//                  1: Pulsed type DPI downshift
//                  0: Persistent type DPI downshift
//    5  0x0     BIGSHUT_FLAG
//                  1: Disable BIGSHUT_FLAG to DCR
//                  0: Enable BIGSHUT_FLAG to DCR
//  4:0  0x1b    PREDICTION_LIMIT
//                  Max prediction limit in pixels

`define NAV_CTRL7_WIDTH                                       8
`define REGA_NAV_CTRL7                                        13'h547
`define NAV_CTRL7_DEFAULT                                     8'h37
`define NAV_CTRL7_CHECK                                       8'h37
`define NAV_CTRL7                                             `NAV_CTRL7_WIDTH, `REGA_NAV_CTRL7, `NAV_CTRL7_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x37    EXTRAPOLATION_DELTA_TH
//                  When extrapolation is enabled, Delta X or Y needs to be bigger than this threshold to trigger extrapolation mode
//                  The threshold value is mutiplied by 8 before being applied
//                  Unit = 1/8 pixel

`define NAV_CTRL8_WIDTH                                       8
`define REGA_NAV_CTRL8                                        13'h548
`define NAV_CTRL8_DEFAULT                                     8'h0
`define NAV_CTRL8_CHECK                                       8'h0
`define NAV_CTRL8                                             `NAV_CTRL8_WIDTH, `REGA_NAV_CTRL8, `NAV_CTRL8_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     FIRST_REST_PERIOD
//                  Period between last run frame to first rest frame
//                  If set to 0, will follow REST1_PERIOD

`define NAV_CTRL9_WIDTH                                       8
`define REGA_NAV_CTRL9                                        13'h549
`define NAV_CTRL9_DEFAULT                                     8'h10
`define NAV_CTRL9_CHECK                                       8'h10
`define NAV_CTRL9                                             `NAV_CTRL9_WIDTH, `REGA_NAV_CTRL9, `NAV_CTRL9_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x10    LOW_SPEED_REREF_THRESHOLD
//                  Reref is asserted once if speed drops below a threshold defined by this register

`define NAV_CTRL10_WIDTH                                      8
`define REGA_NAV_CTRL10                                       13'h54a
`define NAV_CTRL10_DEFAULT                                    8'h45
`define NAV_CTRL10_CHECK                                      8'h45
`define NAV_CTRL10                                            `NAV_CTRL10_WIDTH, `REGA_NAV_CTRL10, `NAV_CTRL10_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x45    DPI_DOWNSHIFT_THRESHOLD
//                  DPI downshift asserted if speed drops below a threshold defined by this register

`define NAV_CTRL11_WIDTH                                      8
`define REGA_NAV_CTRL11                                       13'h54b
`define NAV_CTRL11_DEFAULT                                    8'h3
`define NAV_CTRL11_CHECK                                      8'h3
`define NAV_CTRL11                                            `NAV_CTRL11_WIDTH, `REGA_NAV_CTRL11, `NAV_CTRL11_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x3     SMALL_OFFSET_CNT_TH
//                  Number of small offsets required to determine a good prediction.

`define NAV_CTRL12_WIDTH                                      8
`define REGA_NAV_CTRL12                                       13'h54c
`define NAV_CTRL12_DEFAULT                                    8'hc2
`define NAV_CTRL12_CHECK                                      8'hc2
`define NAV_CTRL12                                            `NAV_CTRL12_WIDTH, `REGA_NAV_CTRL12, `NAV_CTRL12_DEFAULT
//  access       rw
//  atype        A
//  2:0  0x2     OFF_ACCE_TH
//                  Number of small offsets required to determine fast acceleration.
//  7:3  0x18    VEL_ACCE_TH
//                  Number of small vel offsets required to determine fast acceleration.

`define NAV_CTRL13_WIDTH                                      8
`define REGA_NAV_CTRL13                                       13'h54d
`define NAV_CTRL13_DEFAULT                                    8'h0
`define NAV_CTRL13_CHECK                                      8'h0
`define NAV_CTRL13                                            `NAV_CTRL13_WIDTH, `REGA_NAV_CTRL13, `NAV_CTRL13_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     AUTO_COR
//                  1: Disable Auto Cor in Low Squal
//                  0: Enable Auto Cor in Low Squal
//    6  0x0     DISABLE_HI_FRAME_F_UPSHIFT_TH
//                  Disable high frame rate switch to HI_FRAME_F_UPSHIFT_TH
//    5  0x0     RUNAWAY
//                  1: Disable going to highest frame
//                  0: Enable going to highest frame
//    4  0x0     LIFTED
//                  1: Disable going to highest frame
//                  0: Enable going to highest frame
//    3  0x0     LOW_SQUAL
//                  1: Disable going to highest frame
//                  0: Enable going to highest frame
//    2  0x0     DISABLE_OVERLAP
//                  Disable Overlap by forcing Min Period to follow NON_OVERLAP_MIN_PERIOD
//    1  0x0     DISABLE_FPC_OVERLAP
//                  Disable FPC_OVERLAP from asserting when non overlapping frame rate settings are used
//    0  0x0     FORCE_MIN_PERIOD
//                  Force to highest overlapping frame rate

`define NAV_CTRL14_WIDTH                                      8
`define REGA_NAV_CTRL14                                       13'h54e
`define NAV_CTRL14_DEFAULT                                    8'h33
`define NAV_CTRL14_CHECK                                      8'h33
`define NAV_CTRL14                                            `NAV_CTRL14_WIDTH, `REGA_NAV_CTRL14, `NAV_CTRL14_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x3     LIFTED_SQUAL_ASSERT_COUNT_THRESHOLD
//                  Persistence threshold to assert Lifted Squal
//  3:0  0x3     LIFTED_SQUAL_DEASSERT_COUNT_THRESHOLD
//                  Persistence threshold to deassert Lifted Squal

`define NAV_CTRL15_WIDTH                                      8
`define REGA_NAV_CTRL15                                       13'h54f
`define NAV_CTRL15_DEFAULT                                    8'h22
`define NAV_CTRL15_CHECK                                      8'h22
`define NAV_CTRL15                                            `NAV_CTRL15_WIDTH, `REGA_NAV_CTRL15, `NAV_CTRL15_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x2     REREF_DISTANCE_IF_LIFTED
//                  Distance in pixels
//  3:0  0x2     REREF_DISTANCE_IF_ANGLE_SNAP
//                  Distance in pixels

`define NAV_CTRL16_WIDTH                                      8
`define REGA_NAV_CTRL16                                       13'h550
`define NAV_CTRL16_DEFAULT                                    8'h61
`define NAV_CTRL16_CHECK                                      8'h61
`define NAV_CTRL16                                            `NAV_CTRL16_WIDTH, `REGA_NAV_CTRL16, `NAV_CTRL16_DEFAULT
//  access       rw
//  atype        A
//  7:5  0x3     VEL_20K_PIX_SCALING
//                  0: 4 pixels
//                  1: 3 pixels
//                  2: 2 pixels
//                  3: 1 pixel
//                  4: 0.5 pixel
//                  5: 0.25 pixel
//                  6: 0.125 pixel
//                  By default, the vel_20k value is in 1 pixel scale.
//  4:0  0x1     VEL_20K_MIN_PERIOD
//                  Minimum virtual period to scale all speed flags against.
//                  By default, the min period is 1 i.e.  20kfps.

`define NAV_CTRL17_WIDTH                                      8
`define REGA_NAV_CTRL17                                       13'h551
`define NAV_CTRL17_DEFAULT                                    8'h40
`define NAV_CTRL17_CHECK                                      8'h40
`define NAV_CTRL17                                            `NAV_CTRL17_WIDTH, `REGA_NAV_CTRL17, `NAV_CTRL17_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x40    F_UPSHIFT_FF_TH
//                  Delta difference between current frame and last frame to trigger a fast upshift for FF

`define NAV_CTRL18_WIDTH                                      8
`define REGA_NAV_CTRL18                                       13'h552
`define NAV_CTRL18_DEFAULT                                    8'h0
`define NAV_CTRL18_CHECK                                      8'h0
`define NAV_CTRL18                                            `NAV_CTRL18_WIDTH, `REGA_NAV_CTRL18, `NAV_CTRL18_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     SKATING_DISABLE
//                  Skating Mode Disable
//  6:0  0x0     SKATING_DELAY_TH
//                  Skating delay threshold

`define NAV_CTRL19_WIDTH                                      8
`define REGA_NAV_CTRL19                                       13'h553
`define NAV_CTRL19_DEFAULT                                    8'h40
`define NAV_CTRL19_CHECK                                      8'h40
`define NAV_CTRL19                                            `NAV_CTRL19_WIDTH, `REGA_NAV_CTRL19, `NAV_CTRL19_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x40    F_UPSHIFT_PAF_TH
//                  Delta difference between current frame and last frame to trigger a fast upshift for PAF

`define NAV_CTRL20_WIDTH                                      8
`define REGA_NAV_CTRL20                                       13'h554
`define NAV_CTRL20_DEFAULT                                    8'hb4
`define NAV_CTRL20_CHECK                                      8'hb4
`define NAV_CTRL20                                            `NAV_CTRL20_WIDTH, `REGA_NAV_CTRL20, `NAV_CTRL20_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     CVFR_EN
//                  1= enable continuous VFR mode.  Will switch between prediction or fixed step frame period calculation
//  6:4  0x3     STEP_SIZE
//                  Fixed step frame period inc/dec
//                  step size = Frame period / 2^(n+1)
//  3:0  0x4     DELAY_TH
//                  Frames delay threshold fixed step transition *2

`define NAV_CTRL21_WIDTH                                      8
`define REGA_NAV_CTRL21                                       13'h555
`define NAV_CTRL21_DEFAULT                                    8'ha8
`define NAV_CTRL21_CHECK                                      8'ha8
`define NAV_CTRL21                                            `NAV_CTRL21_WIDTH, `REGA_NAV_CTRL21, `NAV_CTRL21_DEFAULT
//  access       rw
//  atype        A
//  7:4  0xa     NORM_REF_PIX_HI_TH
//                  CVFR pixel reference HI threshold
//  3:0  0x8     NORM_REF_PIX_LO_TH
//                  CVFR pixel reference LO threshold

`define NAV_CTRL22_WIDTH                                      8
`define REGA_NAV_CTRL22                                       13'h556
`define NAV_CTRL22_DEFAULT                                    8'h80
`define NAV_CTRL22_CHECK                                      8'h80
`define NAV_CTRL22                                            `NAV_CTRL22_WIDTH, `REGA_NAV_CTRL22, `NAV_CTRL22_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     SKIP_FRAMES
//                  Enable skip frames for 3805
//    6  0x0     LSF_DISABLE_DECOR_WAKEUP
//                  Disable decor wakeup in low squal frame
//                  0: Enable decor wakeup in low squal frame
//                  1: Disable decor wakeup in low squal frame
//    5  0x0     RESERVED
//                  Reserved
//    4  0x0     ALLOW_LOCUS_IN_HS_DCR
//                  1= prevents high_speed_dcr flag from disabling locus search
//    3  0x0     CHG_DIR_CLR_VEL
//                  1= clear vel when change direction
//  2:0  0x0     FIX_SQ_TEST_DIR
//                  When it is set to any value other than 0, square test will run in
//                  only one direction.
//                  0,2,4,6 not moving.
//                  1 x positive
//                  3 y positive
//                  5 x negative
//                  7 y negative

`define NAV_CTRL23_WIDTH                                      8
`define REGA_NAV_CTRL23                                       13'h557
`define NAV_CTRL23_DEFAULT                                    8'h52
`define NAV_CTRL23_CHECK                                      8'h52
`define NAV_CTRL23                                            `NAV_CTRL23_WIDTH, `REGA_NAV_CTRL23, `NAV_CTRL23_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x52    REREF_SHUTTER_THRESHOLD
//                  Do reref when shutter lower than this threshold

`define NAV_CTRL24_WIDTH                                      8
`define REGA_NAV_CTRL24                                       13'h558
`define NAV_CTRL24_DEFAULT                                    8'h22
`define NAV_CTRL24_CHECK                                      8'h22
`define NAV_CTRL24                                            `NAV_CTRL24_WIDTH, `REGA_NAV_CTRL24, `NAV_CTRL24_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x2     REREF_DISTANCE_45DEG_LSHUT
//                  -
//  3:0  0x2     REREF_DISTANCE_090DEG_LSHUT
//                  -

`define NAV_CTRL25_WIDTH                                      8
`define REGA_NAV_CTRL25                                       13'h559
`define NAV_CTRL25_DEFAULT                                    8'h75
`define NAV_CTRL25_CHECK                                      8'h75
`define NAV_CTRL25                                            `NAV_CTRL25_WIDTH, `REGA_NAV_CTRL25, `NAV_CTRL25_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x7     REREF_DISTANCE_45DEG_HISPEED
//                  Hi Speed reref distance threshold for 45deg
//  3:0  0x5     REREF_DISTANCE_090DEG_HISPEED
//                  Hi Speed reref distance threshold for 0/90deg

`define NAV_CTRL26_WIDTH                                      8
`define REGA_NAV_CTRL26                                       13'h55a
`define NAV_CTRL26_DEFAULT                                    8'he8
`define NAV_CTRL26_CHECK                                      8'he8
`define NAV_CTRL26                                            `NAV_CTRL26_WIDTH, `REGA_NAV_CTRL26, `NAV_CTRL26_DEFAULT
//  access       rw
//  atype        A
//  7:4  0xe     REF_PIX_HI_FRM_HI_TH
//                  CVFR pixel reference for High frame rate HI threshold
//  3:0  0x8     REF_PIX_HI_FRM_LO_TH
//                  CVFR pixel reference for High frame rate LO threshold

`define NAV_CTRL27_WIDTH                                      8
`define REGA_NAV_CTRL27                                       13'h55b
`define NAV_CTRL27_DEFAULT                                    8'hea
`define NAV_CTRL27_CHECK                                      8'hea
`define NAV_CTRL27                                            `NAV_CTRL27_WIDTH, `REGA_NAV_CTRL27, `NAV_CTRL27_DEFAULT
//  access       rw
//  atype        A
//  7:4  0xe     REREF_DISTANCE_45DEG_PAF
//                  -
//  3:0  0xa     REREF_DISTANCE_090DEG_PAF
//                  -

`define NAV_CTRL28_WIDTH                                      8
`define REGA_NAV_CTRL28                                       13'h55c
`define NAV_CTRL28_DEFAULT                                    8'h80
`define NAV_CTRL28_CHECK                                      8'h80
`define NAV_CTRL28                                            `NAV_CTRL28_WIDTH, `REGA_NAV_CTRL28, `NAV_CTRL28_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x80    HI_FRAME_F_UPSHIFT_TH
//                  Delta difference between current frame and last frame to trigger a fast upshift during hi frame

`define NAV_CTRL29_WIDTH                                      8
`define REGA_NAV_CTRL29                                       13'h55d
`define NAV_CTRL29_DEFAULT                                    8'h65
`define NAV_CTRL29_CHECK                                      8'h65
`define NAV_CTRL29                                            `NAV_CTRL29_WIDTH, `REGA_NAV_CTRL29, `NAV_CTRL29_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x6     F_UPSHIFT_FF_TH_CVFR_0
//                  fast upshift threshold for FF when CVFR_0 is enabled
//                  value is x16 of normal F_UPSHIFT_FF_TH
//  3:0  0x5     F_UPSHIFT_PAF_TH_CVFR_0
//                  fast upshift threshold for PAF when CVFR_0 is enabled
//                  value is x16 of normal F_UPSHIFT_PAF_TH

`define NAV_CTRL30_WIDTH                                      8
`define REGA_NAV_CTRL30                                       13'h55e
`define NAV_CTRL30_DEFAULT                                    8'h3
`define NAV_CTRL30_CHECK                                      8'h3
`define NAV_CTRL30                                            `NAV_CTRL30_WIDTH, `REGA_NAV_CTRL30, `NAV_CTRL30_DEFAULT
//  access       rw
//  atype        A
//  7:3  0x0     RESERVED
//                  Reserved
//  2:0  0x3     SCC_NSAMP
//                  Number of velocity sample points (N) for velocity speed constancy check (SCC)
//                  Register values more than 5 is not valid
//                  5: 32 samples
//                  4: 16 samples
//                  3: 8 samples
//                  2: 4 samples
//                  1: 2 samples
//                  0: 1 samples

`define NAV_CTRL31_WIDTH                                      8
`define REGA_NAV_CTRL31                                       13'h55f
`define NAV_CTRL31_DEFAULT                                    8'hc8
`define NAV_CTRL31_CHECK                                      8'hc8
`define NAV_CTRL31                                            `NAV_CTRL31_WIDTH, `REGA_NAV_CTRL31, `NAV_CTRL31_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     REREF_ACCELERATION_ONLY
//                  Chose hi speed reref distance threshold during acceleration period only
//    6  0x1     DO_REREF_ON_SPEICALFRAME
//                  foce reref during special frame
//    5  0x0     KEEP_REREF_AFTER_BP_AC
//                  repected reref after BP AC triggered
//    4  0x0     HI_SPEED_REREF_DISTANCE
//                  Chose hi speed reref distance threshold
//    3  0x1     COR_EXT_FAST_PRED
//                  1= enable fast prediction (vel+delta)/2 during cor extension
//    2  0x0     COR_EXT_FASTEST_PRED
//                  1= enable pred = delta during cor extension
//    1  0x0     PRED_OFF_EN
//                  1= enable prediction forced to zero
//    0  0x0     SOFT_MIN_EN
//                  1= enable soft min period limit.  follow SOFT_MIN_PERIOD

`define NAV_CTRL32_WIDTH                                      8
`define REGA_NAV_CTRL32                                       13'h560
`define NAV_CTRL32_DEFAULT                                    8'h25
`define NAV_CTRL32_CHECK                                      8'h25
`define NAV_CTRL32                                            `NAV_CTRL32_WIDTH, `REGA_NAV_CTRL32, `NAV_CTRL32_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x25    DPI_DOWNSHIFT_THRESHOLD
//                  DPI downshift deasserted if speed goes above a threshold defined by this register

`define NAV_CTRL33_WIDTH                                      8
`define REGA_NAV_CTRL33                                       13'h561
`define NAV_CTRL33_DEFAULT                                    8'h31
`define NAV_CTRL33_CHECK                                      8'h31
`define NAV_CTRL33                                            `NAV_CTRL33_WIDTH, `REGA_NAV_CTRL33, `NAV_CTRL33_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x3     EXTRAPOLATION_SKIP_FRAMES
//                  Set Extrapolation Skip Frames
//  3:2  0x0     EXTRAPOLATION_MODES
//                  Modes to trigger extrapolation
//                  00: extrpl_delta_gt_th OR scc_flag
//                  01: extrpl_delta_gt_th only
//                  10: scc_flag only
//                  11: extrpl_delta_gt_th AND scc_flag
//    1  0x0     EXTRAPOLATION_EN
//                  Enable extrapolation mode
//    0  0x1     BIGCOR_TRK_EN
//                  Number of highest frame

`define NAV_CTRL34_WIDTH                                      8
`define REGA_NAV_CTRL34                                       13'h562
`define NAV_CTRL34_DEFAULT                                    8'ha
`define NAV_CTRL34_CHECK                                      8'ha
`define NAV_CTRL34                                            `NAV_CTRL34_WIDTH, `REGA_NAV_CTRL34, `NAV_CTRL34_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xa     BIGCOR_MAX_PERIOD_TH
//                  Maximum period to trigger big cor

`define NAV_CTRL35_WIDTH                                      8
`define REGA_NAV_CTRL35                                       13'h563
`define NAV_CTRL35_DEFAULT                                    8'h5
`define NAV_CTRL35_CHECK                                      8'h5
`define NAV_CTRL35                                            `NAV_CTRL35_WIDTH, `REGA_NAV_CTRL35, `NAV_CTRL35_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x5     BIGCOR_MIN_PERIOD_TH
//                  Minimum period to trigger big cor

`define NAV_CTRL36_WIDTH                                      8
`define REGA_NAV_CTRL36                                       13'h564
`define NAV_CTRL36_DEFAULT                                    8'h3
`define NAV_CTRL36_CHECK                                      8'h3
`define NAV_CTRL36                                            `NAV_CTRL36_WIDTH, `REGA_NAV_CTRL36, `NAV_CTRL36_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x0     RESERVED
//                  Reserved
//  3:0  0x3     MIN_DELAY_TH
//                  Frames min delay threshold fixed step transition * 8

`define NAV_CTRL37_WIDTH                                      8
`define REGA_NAV_CTRL37                                       13'h565
`define NAV_CTRL37_DEFAULT                                    8'h54
`define NAV_CTRL37_CHECK                                      8'h54
`define NAV_CTRL37                                            `NAV_CTRL37_WIDTH, `REGA_NAV_CTRL37, `NAV_CTRL37_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x5     MAX_SFT_VEL_EN_TH
//                  Velocity above which MAX_SFT_VEL is asserted from NAV
//                  Register value is in pixels: (abs_vel_20k_pix > {3'd0, sft_vel_en_th[3:0]})
//  3:0  0x4     MAX_SFT_VEL_DIS_TH
//                  Velocity below which MAX_SFT_VEL is deasserted from NAV
//                  Register value is in pixels: (abs_vel_20k_pix < {3'd0, sft_vel_dis_th[3:0]})

`define NAV_CTRL38_WIDTH                                      8
`define REGA_NAV_CTRL38                                       13'h566
`define NAV_CTRL38_DEFAULT                                    8'h20
`define NAV_CTRL38_CHECK                                      8'h20
`define NAV_CTRL38                                            `NAV_CTRL38_WIDTH, `REGA_NAV_CTRL38, `NAV_CTRL38_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x2     SMALL_OFFSET_THRESH
//                  Allow frame rate downshift when offset is smaller than this threshold.  Only valid when SMALL_OFFSET_DS = 1
//  3:0  0x0     RESERVED
//                  Reserved

`define NAV_CTRL39_WIDTH                                      8
`define REGA_NAV_CTRL39                                       13'h567
`define NAV_CTRL39_DEFAULT                                    8'h54
`define NAV_CTRL39_CHECK                                      8'h54
`define NAV_CTRL39                                            `NAV_CTRL39_WIDTH, `REGA_NAV_CTRL39, `NAV_CTRL39_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x5     HI_SPEED_LIFT_EN_TH
//                  Velocity above which HI_SPEED_LIFT is asserted from NAV
//                  Register value is in pixels: (abs_vel_20k_pix > {3'd0, hi_speed_lift_en_th})
//  3:0  0x4     HI_SPEED_LIFT_DIS_TH
//                  Velocity below which HI_SPEED_LIFT is deasserted from NAV
//                  Register value is in pixels: (abs_vel_20k_pix < {3'd0, hi_speed_lift_dis_th})

`define NAV_CTRL40_WIDTH                                      8
`define REGA_NAV_CTRL40                                       13'h568
`define NAV_CTRL40_DEFAULT                                    8'hb8
`define NAV_CTRL40_CHECK                                      8'hb8
`define NAV_CTRL40                                            `NAV_CTRL40_WIDTH, `REGA_NAV_CTRL40, `NAV_CTRL40_DEFAULT
//  access       rw
//  atype        A
//  7:4  0xb     HI_SPEED_DCR_EN_TH
//                  Velocity above which HI_SPEED_DCR is asserted from NAV
//                  Register value is in pixels: (abs_vel_20k_pix > {3'd0, hi_speed_dcr_en_th})
//  3:0  0x8     HI_SPEED_DCR_DIS_TH
//                  Velocity below which HI_SPEED_DCR is deasserted from NAV
//                  Register value is in pixels: (abs_vel_20k_pix < {3'd0, hi_speed_dcr_dis_th})

`define NAV_CTRL41_WIDTH                                      8
`define REGA_NAV_CTRL41                                       13'h569
`define NAV_CTRL41_DEFAULT                                    8'h54
`define NAV_CTRL41_CHECK                                      8'h54
`define NAV_CTRL41                                            `NAV_CTRL41_WIDTH, `REGA_NAV_CTRL41, `NAV_CTRL41_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x5     HI_SPEED_DCR2_EN_TH
//                  Velocity above which HI_SPEED_DCR2 is asserted from NAV
//                  Register value is in pixels: (abs_vel_20k_pix > {3'd0, hi_speed_dcr2_en_th})
//  3:0  0x4     HI_SPEED_DCR2_DIS_TH
//                  Velocity below which HI_SPEED_DCR2 is deasserted from NAV
//                  Register value is in pixels: (abs_vel_20k_pix < {3'd0, hi_speed_dcr2_dis_th})

`define NAV_CTRL42_WIDTH                                      8
`define REGA_NAV_CTRL42                                       13'h56a
`define NAV_CTRL42_DEFAULT                                    8'h33
`define NAV_CTRL42_CHECK                                      8'h33
`define NAV_CTRL42                                            `NAV_CTRL42_WIDTH, `REGA_NAV_CTRL42, `NAV_CTRL42_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x3     HI_SPEED_COR_EN_TH
//                  Velocity above which HI_SPEED_COR is asserted from NAV
//                  Register value is in pixels: (abs_vel_20k_pix > {3'd0, hi_speed_cor_en_th})
//  3:0  0x3     HI_SPEED_COR_DIS_TH
//                  Velocity below which HI_SPEED_COR is deasserted from NAV
//                  Register value is in pixels: (abs_vel_20k_pix < {3'd0, hi_speed_cor_dis_th})

`define NAV_CTRL43_WIDTH                                      8
`define REGA_NAV_CTRL43                                       13'h56b
`define NAV_CTRL43_DEFAULT                                    8'h3f
`define NAV_CTRL43_CHECK                                      8'h3f
`define NAV_CTRL43                                            `NAV_CTRL43_WIDTH, `REGA_NAV_CTRL43, `NAV_CTRL43_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x3f    SCC_T_TH
//                  Number of frames (T) between velocity sample points (N) for velocity speed constancy check (SCC)

`define NAV_CTRL44_WIDTH                                      8
`define REGA_NAV_CTRL44                                       13'h56c
`define NAV_CTRL44_DEFAULT                                    8'h42
`define NAV_CTRL44_CHECK                                      8'h42
`define NAV_CTRL44                                            `NAV_CTRL44_WIDTH, `REGA_NAV_CTRL44, `NAV_CTRL44_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x4     SCC_PIX_HF
//                  De-assert the SCC flag if the velocity difference is > SCC_PIX_HF
//                  Register value is at pixel level
//  3:0  0x2     SCC_PIX_LF
//                  Assert the SCC flag if the velocity difference is <= SCC_PIX_LF for two consecutive frames
//                  Register value is at pixel level

`define NAV_CTRL45_WIDTH                                      8
`define REGA_NAV_CTRL45                                       13'h56d
`define NAV_CTRL45_DEFAULT                                    8'hea
`define NAV_CTRL45_CHECK                                      8'hea
`define NAV_CTRL45                                            `NAV_CTRL45_WIDTH, `REGA_NAV_CTRL45, `NAV_CTRL45_DEFAULT
//  access       rw
//  atype        A
//  7:4  0xe     REREF_DISTANCE_45DEG_FF
//                  -
//  3:0  0xa     REREF_DISTANCE_090DEG_FF
//                  -

`define NAV_CTRL46_WIDTH                                      8
`define REGA_NAV_CTRL46                                       13'h56e
`define NAV_CTRL46_DEFAULT                                    8'hf
`define NAV_CTRL46_CHECK                                      8'hf
`define NAV_CTRL46                                            `NAV_CTRL46_WIDTH, `REGA_NAV_CTRL46, `NAV_CTRL46_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     LIFTED_FILTER_FORCE_MODE_ENABLE
//                  Filter force mode enable in lifted condition
//                  0: Disable filter force mode in LIFTED
//                  1: Enable filter force mode in LIFTED
//    6  0x0     LIFTED_FILTER_MODE
//                  Filter mode in lifted condition
//                  0: PAF
//                  1: FF
//    5  0x0     EN_LIFTED_LOW_SQUAL
//                  Enable Lifted Low Squal.
//    4  0x0     SCC_EN
//                  1: Enable velocity speed constancy check (SCC)
//    3  0x1     EN_HI_SPEED_COR
//                  1: Enable hi-speed flag for COR
//    2  0x1     EN_HI_SPEED_DCR2
//                  1: Enable hi-speed flag for SFT
//    1  0x1     EN_HI_SPEED_DCR
//                  1: Enable hi-speed flag for DCR high speed optimization
//    0  0x1     EN_HI_SPEED_LIFT
//                  1: Enable hi-speed flag for LIFT

`define NAV_CTRL47_WIDTH                                      8
`define REGA_NAV_CTRL47                                       13'h56f
`define NAV_CTRL47_DEFAULT                                    8'h10
`define NAV_CTRL47_CHECK                                      8'h10
`define NAV_CTRL47                                            `NAV_CTRL47_WIDTH, `REGA_NAV_CTRL47, `NAV_CTRL47_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x10    SCC_MIN_VEL_0P125PIX
//                  Deassert SCC flag if velocity is <= SCC_MIN_VEL_0P125PIX
//                  Register value is at 8 sub-pixel level

`define NAV_CTRL48_WIDTH                                      8
`define REGA_NAV_CTRL48                                       13'h570
`define NAV_CTRL48_DEFAULT                                    8'h4
`define NAV_CTRL48_CHECK                                      8'h4
`define NAV_CTRL48                                            `NAV_CTRL48_WIDTH, `REGA_NAV_CTRL48, `NAV_CTRL48_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x4     SCC_FPC_TH
//                  Deassert SCC flag if frame period is > SCC_FPC_TH

`define NAV_CTRL49_WIDTH                                      8
`define REGA_NAV_CTRL49                                       13'h571
`define NAV_CTRL49_DEFAULT                                    8'h54
`define NAV_CTRL49_CHECK                                      8'h54
`define NAV_CTRL49                                            `NAV_CTRL49_WIDTH, `REGA_NAV_CTRL49, `NAV_CTRL49_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x5     F_UPSHIFT_FF_TH_CVFR_1
//                  fast upshift threshold for FF when CVFR_1 is enabled
//                  value is x16 of normal F_UPSHIFT_FF_TH
//  3:0  0x4     F_UPSHIFT_PAF_TH_CVFR_1
//                  fast upshift threshold for PAF when CVFR_1 is enabled
//                  value is x16 of normal F_UPSHIFT_PAF_TH

`define NAV_CTRL50_WIDTH                                      8
`define REGA_NAV_CTRL50                                       13'h572
`define NAV_CTRL50_DEFAULT                                    8'hc
`define NAV_CTRL50_CHECK                                      8'hc
`define NAV_CTRL50                                            `NAV_CTRL50_WIDTH, `REGA_NAV_CTRL50, `NAV_CTRL50_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xc     SHUT_MAX_LIFT_OFF_SQ2_LO_TH
//                  Working Range for Black Velvet
//                  LIFT_EDGE detection will be gated off when all conditions are met
//                  SQ2_CNT gt SHUT_MAX_LIFT_OFF_SQ2_LO_TH

`define NAV_CTRL51_WIDTH                                      8
`define REGA_NAV_CTRL51                                       13'h573
`define NAV_CTRL51_DEFAULT                                    8'h50
`define NAV_CTRL51_CHECK                                      8'h50
`define NAV_CTRL51                                            `NAV_CTRL51_WIDTH, `REGA_NAV_CTRL51, `NAV_CTRL51_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x50    SHUT_MAX_LIFT_OFF_SQ2_HI_TH
//                  Working Range for Black Velvet
//                  LIFT_EDGE detection will be gated off when all conditions are met
//                  SQ2_CNT lt SHUT_MAX_LIFT_OFF_SQ2_HI_TH

`define NAV_CTRL52_WIDTH                                      8
`define REGA_NAV_CTRL52                                       13'h574
`define NAV_CTRL52_DEFAULT                                    8'h40
`define NAV_CTRL52_CHECK                                      8'h40
`define NAV_CTRL52                                            `NAV_CTRL52_WIDTH, `REGA_NAV_CTRL52, `NAV_CTRL52_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x40    SHUT_MAX_LIFT_OFF_MAX_TH
//                  Working Range for Black Velvet
//                  LIFT_EDGE detection will be gated off when all conditions are met
//                  PIX_MAX lt SHUT_MAX_LIFT_OFF_MAX_TH

`define NAV_CTRL53_WIDTH                                      8
`define REGA_NAV_CTRL53                                       13'h575
`define NAV_CTRL53_DEFAULT                                    8'h3
`define NAV_CTRL53_CHECK                                      8'h3
`define NAV_CTRL53                                            `NAV_CTRL53_WIDTH, `REGA_NAV_CTRL53, `NAV_CTRL53_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x3     SHUT_MAX_LIFT_OFF_ACC_TH
//                  Working Range for Black Velvet
//                  LIFT_EDGE detection will be gated off when all conditions are met
//                  PIX_ACCUM lt SHUT_MAX_LIFT_OFF_ACC_TH

`define NAV_CTRL54_WIDTH                                      8
`define REGA_NAV_CTRL54                                       13'h576
`define NAV_CTRL54_DEFAULT                                    8'h3f
`define NAV_CTRL54_CHECK                                      8'h3f
`define NAV_CTRL54                                            `NAV_CTRL54_WIDTH, `REGA_NAV_CTRL54, `NAV_CTRL54_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x3f    SM_LIFTOFF_CNT_TH
//                  Number of count for SHUT_MAX_LIFT_OFF to deassert

`define NAV_CTRL55_WIDTH                                      8
`define REGA_NAV_CTRL55                                       13'h577
`define NAV_CTRL55_DEFAULT                                    8'h0
`define NAV_CTRL55_CHECK                                      8'h0
`define NAV_CTRL55                                            `NAV_CTRL55_WIDTH, `REGA_NAV_CTRL55, `NAV_CTRL55_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     CORDIC ROTATION
//                  Working range of -90 degrees to 90 degrees
//                  0x00 to 0x5A for 0 degrees to 90 degrees
//                  0xFF to 0xA6 for -1 degrees to -90 degrees (twos complement)

`define NAV_CTRL56_WIDTH                                      8
`define REGA_NAV_CTRL56                                       13'h578
`define NAV_CTRL56_DEFAULT                                    8'h0
`define NAV_CTRL56_CHECK                                      8'h0
`define NAV_CTRL56                                            `NAV_CTRL56_WIDTH, `REGA_NAV_CTRL56, `NAV_CTRL56_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     CORDIC_EN
//                  Enable signal for CORDIC
//                  0: Disable CORDIC
//                  1: Enable CORDIC
//  6:1  0x0     RESERVED
//                  Reserved
//    0  0x0     CLR_REM
//                  
//                  0: Keeps remainder after end of rotation calculation for next frame
//                  1: Clear remainder after every frame

`define NAV_CTRL57_WIDTH                                      8
`define REGA_NAV_CTRL57                                       13'h579
`define NAV_CTRL57_DEFAULT                                    8'h43
`define NAV_CTRL57_CHECK                                      8'h43
`define NAV_CTRL57                                            `NAV_CTRL57_WIDTH, `REGA_NAV_CTRL57, `NAV_CTRL57_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x4     F_UPSHIFT_FF_TH_CVFR_2
//                  fast upshift threshold for FF when CVFR_2 is enabled
//                  value is x16 of normal F_UPSHIFT_FF_TH
//  3:0  0x3     F_UPSHIFT_PAF_TH_CVFR_2
//                  fast upshift threshold for PAF when CVFR_2 is enabled
//                  value is x16 of normal F_UPSHIFT_PAF_TH

`define NAV_CTRL58_WIDTH                                      8
`define REGA_NAV_CTRL58                                       13'h57a
`define NAV_CTRL58_DEFAULT                                    8'h10
`define NAV_CTRL58_CHECK                                      8'h10
`define NAV_CTRL58                                            `NAV_CTRL58_WIDTH, `REGA_NAV_CTRL58, `NAV_CTRL58_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x10    PIX_REREF_HI_SW_THR
//                  Number of toggles between 20kfps and 10kfps to use REF_PIX_HI_FRM_TH

`define NAV_CTRL59_WIDTH                                      8
`define REGA_NAV_CTRL59                                       13'h57b
`define NAV_CTRL59_DEFAULT                                    8'h10
`define NAV_CTRL59_CHECK                                      8'h10
`define NAV_CTRL59                                            `NAV_CTRL59_WIDTH, `REGA_NAV_CTRL59, `NAV_CTRL59_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     SUM_OF_BOWL_ABS_ZERO
//                  Grounded sum of bowl to zero when negative
//    6  0x0     RESERVED
//                  Reserved
//  5:0  0x10    MOT_VALID_PIX_TH
//                  no_mot_cnt ++ if cumulative x,y motion is < 2*MOT_VALID_PIX_TH subpixels

`define NAV_CTRL60_WIDTH                                      8
`define REGA_NAV_CTRL60                                       13'h57c
`define NAV_CTRL60_DEFAULT                                    8'h87
`define NAV_CTRL60_CHECK                                      8'h87
`define NAV_CTRL60                                            `NAV_CTRL60_WIDTH, `REGA_NAV_CTRL60, `NAV_CTRL60_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x8     NORM_REF_PIX_HI_TH_CVFR_0
//                  CVFR pixel reference HI threshold for CVFR_0
//                  Same scale as NORM_REF_PIX_HI_TH
//  3:0  0x7     NORM_REF_PIX_LO_TH_CVFR_0
//                  CVFR pixel reference LO threshold for CVFR_0
//                  Same scale as NORM_REF_PIX_LO_TH

`define NAV_CTRL61_WIDTH                                      8
`define REGA_NAV_CTRL61                                       13'h57d
`define NAV_CTRL61_DEFAULT                                    8'h76
`define NAV_CTRL61_CHECK                                      8'h76
`define NAV_CTRL61                                            `NAV_CTRL61_WIDTH, `REGA_NAV_CTRL61, `NAV_CTRL61_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x7     NORM_REF_PIX_HI_TH_CVFR_1
//                  CVFR pixel reference HI threshold for CVFR_1
//                  Same scale as NORM_REF_PIX_HI_TH
//  3:0  0x6     NORM_REF_PIX_LO_TH_CVFR_1
//                  CVFR pixel reference LO threshold for CVFR_1
//                  Same scale as NORM_REF_PIX_LO_TH

`define NAV_CTRL62_WIDTH                                      8
`define REGA_NAV_CTRL62                                       13'h57e
`define NAV_CTRL62_DEFAULT                                    8'h65
`define NAV_CTRL62_CHECK                                      8'h65
`define NAV_CTRL62                                            `NAV_CTRL62_WIDTH, `REGA_NAV_CTRL62, `NAV_CTRL62_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x6     NORM_REF_PIX_HI_TH_CVFR_2
//                  CVFR pixel reference HI threshold for CVFR_2
//                  Same scale as NORM_REF_PIX_HI_TH
//  3:0  0x5     NORM_REF_PIX_LO_TH_CVFR_2
//                  CVFR pixel reference LO threshold for CVFR_2
//                  Same scale as NORM_REF_PIX_LO_TH


`define P6_PROD_ID_WIDTH                                      0
`define REGA_P6_PROD_ID                                       13'h600
`define P6_PROD_ID                                            `P6_PROD_ID_WIDTH, `REGA_P6_PROD_ID, `P6_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P6_REV_ID_WIDTH                                       0
`define REGA_P6_REV_ID                                        13'h601
`define P6_REV_ID                                             `P6_REV_ID_WIDTH, `REGA_P6_REV_ID, `P6_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P6_MOTION_WIDTH                                       0
`define REGA_P6_MOTION                                        13'h602
`define P6_MOTION                                             `P6_MOTION_WIDTH, `REGA_P6_MOTION, `P6_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P6_DELTA_X_LO_WIDTH                                   0
`define REGA_P6_DELTA_X_LO                                    13'h603
`define P6_DELTA_X_LO                                         `P6_DELTA_X_LO_WIDTH, `REGA_P6_DELTA_X_LO, `P6_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P6_DELTA_X_HI_WIDTH                                   0
`define REGA_P6_DELTA_X_HI                                    13'h604
`define P6_DELTA_X_HI                                         `P6_DELTA_X_HI_WIDTH, `REGA_P6_DELTA_X_HI, `P6_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P6_DELTA_Y_LO_WIDTH                                   0
`define REGA_P6_DELTA_Y_LO                                    13'h605
`define P6_DELTA_Y_LO                                         `P6_DELTA_Y_LO_WIDTH, `REGA_P6_DELTA_Y_LO, `P6_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P6_DELTA_Y_HI_WIDTH                                   0
`define REGA_P6_DELTA_Y_HI                                    13'h606
`define P6_DELTA_Y_HI                                         `P6_DELTA_Y_HI_WIDTH, `REGA_P6_DELTA_Y_HI, `P6_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P6_SQUAL_WIDTH                                        0
`define REGA_P6_SQUAL                                         13'h607
`define P6_SQUAL                                              `P6_SQUAL_WIDTH, `REGA_P6_SQUAL, `P6_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P6_PIX_ACCUM_WIDTH                                    0
`define REGA_P6_PIX_ACCUM                                     13'h608
`define P6_PIX_ACCUM                                          `P6_PIX_ACCUM_WIDTH, `REGA_P6_PIX_ACCUM, `P6_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P6_PIX_MAX_WIDTH                                      0
`define REGA_P6_PIX_MAX                                       13'h609
`define P6_PIX_MAX                                            `P6_PIX_MAX_WIDTH, `REGA_P6_PIX_MAX, `P6_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P6_PIX_MIN_WIDTH                                      0
`define REGA_P6_PIX_MIN                                       13'h60a
`define P6_PIX_MIN                                            `P6_PIX_MIN_WIDTH, `REGA_P6_PIX_MIN, `P6_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P6_SHUT_LO_WIDTH                                      0
`define REGA_P6_SHUT_LO                                       13'h60b
`define P6_SHUT_LO                                            `P6_SHUT_LO_WIDTH, `REGA_P6_SHUT_LO, `P6_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P6_SHUT_HI_WIDTH                                      0
`define REGA_P6_SHUT_HI                                       13'h60c
`define P6_SHUT_HI                                            `P6_SHUT_HI_WIDTH, `REGA_P6_SHUT_HI, `P6_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P6_EXT_WAKEUP_WIDTH                                   0
`define REGA_P6_EXT_WAKEUP                                    13'h60d
`define P6_EXT_WAKEUP                                         `P6_EXT_WAKEUP_WIDTH, `REGA_P6_EXT_WAKEUP, `P6_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P6_RESERVED_E_WIDTH                                   0
`define REGA_P6_RESERVED_E                                    13'h60e
`define P6_RESERVED_E                                         `P6_RESERVED_E_WIDTH, `REGA_P6_RESERVED_E, `P6_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P6_SKIP_FRAMES_CNT_LO_WIDTH                           0
`define REGA_P6_SKIP_FRAMES_CNT_LO                            13'h60f
`define P6_SKIP_FRAMES_CNT_LO                                 `P6_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P6_SKIP_FRAMES_CNT_LO, `P6_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P6_SKIP_FRAMES_CNT_HI_WIDTH                           0
`define REGA_P6_SKIP_FRAMES_CNT_HI                            13'h610
`define P6_SKIP_FRAMES_CNT_HI                                 `P6_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P6_SKIP_FRAMES_CNT_HI, `P6_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P6_CVFR_PERIOD_LO_WIDTH                               0
`define REGA_P6_CVFR_PERIOD_LO                                13'h611
`define P6_CVFR_PERIOD_LO                                     `P6_CVFR_PERIOD_LO_WIDTH, `REGA_P6_CVFR_PERIOD_LO, `P6_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P6_CVFR_PERIOD_HI_WIDTH                               0
`define REGA_P6_CVFR_PERIOD_HI                                13'h612
`define P6_CVFR_PERIOD_HI                                     `P6_CVFR_PERIOD_HI_WIDTH, `REGA_P6_CVFR_PERIOD_HI, `P6_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P6_OBSERVATION_WIDTH                                  0
`define REGA_P6_OBSERVATION                                   13'h615
`define P6_OBSERVATION                                        `P6_OBSERVATION_WIDTH, `REGA_P6_OBSERVATION, `P6_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P6_BURST_MOTION_WIDTH                                 0
`define REGA_P6_BURST_MOTION                                  13'h616
`define P6_BURST_MOTION                                       `P6_BURST_MOTION_WIDTH, `REGA_P6_BURST_MOTION, `P6_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P6_SQUAL2_WIDTH                                       0
`define REGA_P6_SQUAL2                                        13'h617
`define P6_SQUAL2                                             `P6_SQUAL2_WIDTH, `REGA_P6_SQUAL2, `P6_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P6_SPI_MODE_WIDTH                                     0
`define REGA_P6_SPI_MODE                                      13'h618
`define P6_SPI_MODE                                           `P6_SPI_MODE_WIDTH, `REGA_P6_SPI_MODE, `P6_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P6_OSC_TUNE_INSTR_WIDTH                               0
`define REGA_P6_OSC_TUNE_INSTR                                13'h622
`define P6_OSC_TUNE_INSTR                                     `P6_OSC_TUNE_INSTR_WIDTH, `REGA_P6_OSC_TUNE_INSTR, `P6_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P6_OSC_TUNE_INSTR_SLOW_WIDTH                          0
`define REGA_P6_OSC_TUNE_INSTR_SLOW                           13'h623
`define P6_OSC_TUNE_INSTR_SLOW                                `P6_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P6_OSC_TUNE_INSTR_SLOW, `P6_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P6_PRBS_MODE_WIDTH                                    0
`define REGA_P6_PRBS_MODE                                     13'h630
`define P6_PRBS_MODE                                          `P6_PRBS_MODE_WIDTH, `REGA_P6_PRBS_MODE, `P6_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P6_POWERDOWN_WIDTH                                    0
`define REGA_P6_POWERDOWN                                     13'h632
`define P6_POWERDOWN                                          `P6_POWERDOWN_WIDTH, `REGA_P6_POWERDOWN, `P6_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P6_CRC0_WIDTH                                         0
`define REGA_P6_CRC0                                          13'h633
`define P6_CRC0                                               `P6_CRC0_WIDTH, `REGA_P6_CRC0, `P6_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P6_CRC1_WIDTH                                         0
`define REGA_P6_CRC1                                          13'h634
`define P6_CRC1                                               `P6_CRC1_WIDTH, `REGA_P6_CRC1, `P6_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P6_CRC2_WIDTH                                         0
`define REGA_P6_CRC2                                          13'h635
`define P6_CRC2                                               `P6_CRC2_WIDTH, `REGA_P6_CRC2, `P6_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P6_CRC3_WIDTH                                         0
`define REGA_P6_CRC3                                          13'h636
`define P6_CRC3                                               `P6_CRC3_WIDTH, `REGA_P6_CRC3, `P6_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P6_IOSTATUS_WIDTH                                     0
`define REGA_P6_IOSTATUS                                      13'h637
`define P6_IOSTATUS                                           `P6_IOSTATUS_WIDTH, `REGA_P6_IOSTATUS, `P6_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P6_TAP_KEY_WO_WIDTH                                   0
`define REGA_P6_TAP_KEY_WO                                    13'h638
`define P6_TAP_KEY_WO                                         `P6_TAP_KEY_WO_WIDTH, `REGA_P6_TAP_KEY_WO, `P6_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P6_TAP_KEY_WIDTH                                      0
`define REGA_P6_TAP_KEY                                       13'h639
`define P6_TAP_KEY                                            `P6_TAP_KEY_WIDTH, `REGA_P6_TAP_KEY, `P6_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P6_POWER_UP_RESET_WIDTH                               0
`define REGA_P6_POWER_UP_RESET                                13'h63a
`define P6_POWER_UP_RESET                                     `P6_POWER_UP_RESET_WIDTH, `REGA_P6_POWER_UP_RESET, `P6_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P6_SHUTDOWN_WIDTH                                     0
`define REGA_P6_SHUTDOWN                                      13'h63b
`define P6_SHUTDOWN                                           `P6_SHUTDOWN_WIDTH, `REGA_P6_SHUTDOWN, `P6_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P6_SCAN_MODE_WIDTH                                    0
`define REGA_P6_SCAN_MODE                                     13'h63c
`define P6_SCAN_MODE                                          `P6_SCAN_MODE_WIDTH, `REGA_P6_SCAN_MODE, `P6_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P6_SPI_PAGE_WIDTH                                     0
`define REGA_P6_SPI_PAGE                                      13'h67f
`define P6_SPI_PAGE                                           `P6_SPI_PAGE_WIDTH, `REGA_P6_SPI_PAGE, `P6_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define REST_CFG_WIDTH                                        8
`define REGA_REST_CFG                                         13'h640
`define REST_CFG_DEFAULT                                      8'h77
`define REST_CFG_CHECK                                        8'h77
`define REST_CFG                                              `REST_CFG_WIDTH, `REGA_REST_CFG, `REST_CFG_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x77    REST_CONFIGURATION
//                  This register defines how the sensor operates Wakeup in Rest Mode
//                  Rest and Low Squal:
//                  [7]: Reserved
//                  [6]: Wakeup on Decor if asserted high
//                  [5]: Wakeup on Squal if asserted high
//                  [4]: Wakeup on PixMon if asserted high
//                  Rest and not Low Squal:
//                  [3]: Reserved
//                  [2]: Wakeup on Decor if asserted high
//                  [1]: Wakeup on Squal if asserted high
//                  [0]: Wakeup on PixMon if asserted high

`define HI_RES_SETTING_WIDTH                                  8
`define REGA_HI_RES_SETTING                                   13'h642
`define HI_RES_SETTING_DEFAULT                                8'h3
`define HI_RES_SETTING_CHECK                                  8'h3
`define HI_RES_SETTING                                        `HI_RES_SETTING_WIDTH, `REGA_HI_RES_SETTING, `HI_RES_SETTING_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     HI_RES_SETTING_EN
//                  0: Disable High resolution setting
//                  1: Enable High resolution setting
//                  When enabled, uses different Reref distance, Locus search
//  6:3  0x0     RESERVED
//                  Reserved
//    2  0x0     PSEUDO_REST_HI_RES_ONLY_EN
//                  0: Pseudo rest when High resolution setting enabled
//                  1: Pseudo rest in all modes
//  1:0  0x3     HI_RES_INTERP_METHOD
//                  00: Locus search Method 2
//                  01: Locus search Method 2 with FIX FILTER SET OPTION
//                  10: Locus search Method 1
//                  11: Locus search disabled; set to Locus4

`define NAV_CTRL66_WIDTH                                      8
`define REGA_NAV_CTRL66                                       13'h643
`define NAV_CTRL66_DEFAULT                                    8'h53
`define NAV_CTRL66_CHECK                                      8'h53
`define NAV_CTRL66                                            `NAV_CTRL66_WIDTH, `REGA_NAV_CTRL66, `NAV_CTRL66_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x5     REREF_DISTANCE_45DEG_HI_RES
//                  Reref distance for Hi resolution at 45deg
//  3:0  0x3     REREF_DISTANCE_090DEG_HI_RES
//                  Reref distance for Hi resolution at 0/90deg

`define MSQR_BIGSHUT_TH_WIDTH                                 8
`define REGA_MSQR_BIGSHUT_TH                                  13'h644
`define MSQR_BIGSHUT_TH_DEFAULT                               8'h18
`define MSQR_BIGSHUT_TH_CHECK                                 8'h18
`define MSQR_BIGSHUT_TH                                       `MSQR_BIGSHUT_TH_WIDTH, `REGA_MSQR_BIGSHUT_TH, `MSQR_BIGSHUT_TH_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x18    MSQR_BIGSHUT_TH
//                  Overrides MIN_SQUAL_RUN if shutter[12:5] > MSQR_BIGSHUT_TH

`define LIFT_SQ_TH_WIDTH                                      8
`define REGA_LIFT_SQ_TH                                       13'h647
`define LIFT_SQ_TH_DEFAULT                                    8'h1
`define LIFT_SQ_TH_CHECK                                      8'h1
`define LIFT_SQ_TH                                            `LIFT_SQ_TH_WIDTH, `REGA_LIFT_SQ_TH, `LIFT_SQ_TH_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x1     LIFT_SQ_TH
//                  Lifted flag is asserted if 10b-SQ is lower than this threshold.

`define LIFT_SQ_TH_HYST_WIDTH                                 8
`define REGA_LIFT_SQ_TH_HYST                                  13'h648
`define LIFT_SQ_TH_HYST_DEFAULT                               8'h2
`define LIFT_SQ_TH_HYST_CHECK                                 8'h2
`define LIFT_SQ_TH_HYST                                       `LIFT_SQ_TH_HYST_WIDTH, `REGA_LIFT_SQ_TH_HYST, `LIFT_SQ_TH_HYST_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x2     LIFT_SQ_TH_HYST
//                  Lifted flag is deasserted if 10b-SQ is higher than this threshold.

`define NAV_CTRL67_WIDTH                                      8
`define REGA_NAV_CTRL67                                       13'h649
`define NAV_CTRL67_DEFAULT                                    8'h4
`define NAV_CTRL67_CHECK                                      8'h4
`define NAV_CTRL67                                            `NAV_CTRL67_WIDTH, `REGA_NAV_CTRL67, `NAV_CTRL67_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x4     EXTRPL_SCALE
//                  Effective frame period target through dynamic extrapolation

`define NAV_CTRL68_WIDTH                                      8
`define REGA_NAV_CTRL68                                       13'h64a
`define NAV_CTRL68_DEFAULT                                    8'h10
`define NAV_CTRL68_CHECK                                      8'h10
`define NAV_CTRL68                                            `NAV_CTRL68_WIDTH, `REGA_NAV_CTRL68, `NAV_CTRL68_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x10    F_UPSHIFT_SHUT_TH
//                  Shutter Fast Upshift threshold

`define NAV_CTRL69_WIDTH                                      8
`define REGA_NAV_CTRL69                                       13'h64b
`define NAV_CTRL69_DEFAULT                                    8'h0
`define NAV_CTRL69_CHECK                                      8'h0
`define NAV_CTRL69                                            `NAV_CTRL69_WIDTH, `REGA_NAV_CTRL69, `NAV_CTRL69_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     DISABLE_GOTO_HI_FPS
//                  Set the bits to disable the following modes from going hi fps
//                  [7]: Reserved
//                  [6]: Skating
//                  [5]: filt_sw
//                  [4]: bad_bowl
//                  [3]: ac_runaway
//                  [2]: runaway
//                  [1]: lifted
//                  [0]: low_squal

`define NAV_CTRL70_WIDTH                                      8
`define REGA_NAV_CTRL70                                       13'h64c
`define NAV_CTRL70_DEFAULT                                    8'h0
`define NAV_CTRL70_CHECK                                      8'h0
`define NAV_CTRL70                                            `NAV_CTRL70_WIDTH, `REGA_NAV_CTRL70, `NAV_CTRL70_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     PAIR_BIGCOR_MIN_PERIOD_TH
//                  Pair bigcor is disabled if value is 0
//                  Else, pair big cor will be enabled when the frame period is equal or more than the threshold

`define NAV_CTRL71_WIDTH                                      8
`define REGA_NAV_CTRL71                                       13'h64d
`define NAV_CTRL71_DEFAULT                                    8'h1b
`define NAV_CTRL71_CHECK                                      8'h1b
`define NAV_CTRL71                                            `NAV_CTRL71_WIDTH, `REGA_NAV_CTRL71, `NAV_CTRL71_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x1b    PERIODIC_REREF_TH
//                  Periodic image reref threshold in 16 frames step size at the lowest frame rate
//                  The periodic reref counter will be reset when motion > 2pixel or by other reref events
//                  Default = 27*16 = 432 frames

`define NAV_CTRL72_WIDTH                                      8
`define REGA_NAV_CTRL72                                       13'h64e
`define NAV_CTRL72_DEFAULT                                    8'h0
`define NAV_CTRL72_CHECK                                      8'h0
`define NAV_CTRL72                                            `NAV_CTRL72_WIDTH, `REGA_NAV_CTRL72, `NAV_CTRL72_DEFAULT
//  access       rw
//  atype        A
//  7:3  0x0     RESERVED
//                  Reserved
//  2:0  0x0     FD_REST3_SKIP_VAL
//                  Numbers of REST3 frames to skip for the Laser Fault detection
//                  0 : No skip, run every frame
//                  1 : Run once every 2 frames
//                  2 : Run once every 4 frames
//                  3 : Run once every 8 frames
//                  4 : Run once every 16 frames
//                  5 : Run once every 32 frames
//                  6 : Run once every 64 frames
//                  7 : Run once every 128 frames

`define SHUT_REST_CFG_WIDTH                                   8
`define REGA_SHUT_REST_CFG                                    13'h64f
`define SHUT_REST_CFG_DEFAULT                                 8'h88
`define SHUT_REST_CFG_CHECK                                   8'h88
`define SHUT_REST_CFG                                         `SHUT_REST_CFG_WIDTH, `REGA_SHUT_REST_CFG, `SHUT_REST_CFG_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x88    REST_SHUTTER_CONFIGURATION
//                  This register defines how the sensor operates Shutter in Rest Mode
//                  Rest and Low Squal:
//                  [7]: Run Shutter CAVG if asserted high
//                  [6]: Reserved
//                  [5]: Reserved
//                  [4]: Reserved
//                  Rest and not Low Squal:
//                  [3]: Run Shutter CAVG if asserted high
//                  [2]: Reserved
//                  [1]: Reserved
//                  [0]: Reserved

`define REREF_DIST_FINAL_WIDTH                                8
`define REGA_REREF_DIST_FINAL                                 13'h650
`define REREF_DIST_FINAL_DEFAULT                              8'h0
`define REREF_DIST_FINAL_CHECK                                8'h0
`define REREF_DIST_FINAL                                      `REREF_DIST_FINAL_WIDTH, `REGA_REREF_DIST_FINAL, `REREF_DIST_FINAL_DEFAULT
//  access       ro
//  atype        A
//  7:4  0x0     REREF_DIST_FINAL_45DEG
//                  Final reref distance threshold for 45deg
//  3:0  0x0     REREF_DIST_FINAL_090DEG
//                  Final reref distance threshold for 0/90deg

`define MAX_PERIOD_CORDED_WIDTH                               8
`define REGA_MAX_PERIOD_CORDED                                13'h653
`define MAX_PERIOD_CORDED_DEFAULT                             8'h8
`define MAX_PERIOD_CORDED_CHECK                               8'h8
`define MAX_PERIOD_CORDED                                     `MAX_PERIOD_CORDED_WIDTH, `REGA_MAX_PERIOD_CORDED, `MAX_PERIOD_CORDED_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x8     MAX_PERIOD_CORDED
//                  Sets minimum frame rate for corded mode
//                  As, FPC_CTRL2 and FPC_CTRL3 is set to 50 us by default,
//                  Any value set by this register set the minimum frame rate by reg_value * 50us

`define MAX_PERIOD_HP_WIDTH                                   8
`define REGA_MAX_PERIOD_HP                                    13'h654
`define MAX_PERIOD_HP_DEFAULT                                 8'ha
`define MAX_PERIOD_HP_CHECK                                   8'ha
`define MAX_PERIOD_HP                                         `MAX_PERIOD_HP_WIDTH, `REGA_MAX_PERIOD_HP, `MAX_PERIOD_HP_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xa     MAX_PERIOD_HP
//                  Sets minimum frame rate for high performance mode
//                  As, FPC_CTRL2 and FPC_CTRL3 is set to 50 us by default,
//                  Any value set by this register set the minimum frame rate by reg_value * 50us

`define MAX_PERIOD_LP_WIDTH                                   8
`define REGA_MAX_PERIOD_LP                                    13'h655
`define MAX_PERIOD_LP_DEFAULT                                 8'h14
`define MAX_PERIOD_LP_CHECK                                   8'h14
`define MAX_PERIOD_LP                                         `MAX_PERIOD_LP_WIDTH, `REGA_MAX_PERIOD_LP, `MAX_PERIOD_LP_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x14    MAX_PERIOD_LP
//                  Sets minimum frame rate for low performance mode
//                  As, FPC_CTRL2 and FPC_CTRL3 is set to 50 us by default,
//                  Any value set by this register set the minimum frame rate by reg_value * 50us

`define MAX_PERIOD_OFFICE_WIDTH                               8
`define REGA_MAX_PERIOD_OFFICE                                13'h656
`define MAX_PERIOD_OFFICE_DEFAULT                             8'h64
`define MAX_PERIOD_OFFICE_CHECK                               8'h64
`define MAX_PERIOD_OFFICE                                     `MAX_PERIOD_OFFICE_WIDTH, `REGA_MAX_PERIOD_OFFICE, `MAX_PERIOD_OFFICE_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x64    MAX_PERIOD_OFFICE
//                  Sets minimum frame rate for office mode
//                  As, FPC_CTRL2 and FPC_CTRL3 is set to 50 us by default,
//                  Any value set by this register set the minimum frame rate by reg_value * 50us

`define VEL_20K_PIX_WIDTH                                     8
`define REGA_VEL_20K_PIX                                      13'h659
`define VEL_20K_PIX_DEFAULT                                   8'h0
`define VEL_20K_PIX_CHECK                                     8'h0
`define VEL_20K_PIX                                           `VEL_20K_PIX_WIDTH, `REGA_VEL_20K_PIX, `VEL_20K_PIX_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     VEL_20K_PIX
//                  Velocity with respect to 20kfps.
//                  Signed 2's complement pixel level value.  Each step is 23.64ips.
//                  If the VEL_20K_PIX_SCALING register is used to change the scaling, this register
//                  will clip the velocity value to +/-127

`define PRED_X_WIDTH                                          8
`define REGA_PRED_X                                           13'h65a
`define PRED_X_DEFAULT                                        8'h0
`define PRED_X_CHECK                                          8'h0
`define PRED_X                                                `PRED_X_WIDTH, `REGA_PRED_X, `PRED_X_DEFAULT
//  access       ro
//  atype        A
//  7:6  0x0     RESERVED
//                  Reserved
//  5:0  0x0     PRED_X
//                  Pred X

`define PRED_Y_WIDTH                                          8
`define REGA_PRED_Y                                           13'h65b
`define PRED_Y_DEFAULT                                        8'h0
`define PRED_Y_CHECK                                          8'h0
`define PRED_Y                                                `PRED_Y_WIDTH, `REGA_PRED_Y, `PRED_Y_DEFAULT
//  access       ro
//  atype        A
//  7:6  0x0     RESERVED
//                  Reserved
//  5:0  0x0     PRED_Y
//                  Pred Y

`define POS_X_LO_WIDTH                                        8
`define REGA_POS_X_LO                                         13'h65c
`define POS_X_LO_DEFAULT                                      8'h0
`define POS_X_LO_CHECK                                        8'h0
`define POS_X_LO                                              `POS_X_LO_WIDTH, `REGA_POS_X_LO, `POS_X_LO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     POS_X_LO
//                  Pos X low byte

`define POS_X_HI_WIDTH                                        8
`define REGA_POS_X_HI                                         13'h65d
`define POS_X_HI_DEFAULT                                      8'h0
`define POS_X_HI_CHECK                                        8'h0
`define POS_X_HI                                              `POS_X_HI_WIDTH, `REGA_POS_X_HI, `POS_X_HI_DEFAULT
//  access       ro
//  atype        A
//  7:2  0x0     RESERVED
//                  Reserved
//  1:0  0x0     POS_X_HI
//                  Pos X high byte

`define POS_Y_LO_WIDTH                                        8
`define REGA_POS_Y_LO                                         13'h65e
`define POS_Y_LO_DEFAULT                                      8'h0
`define POS_Y_LO_CHECK                                        8'h0
`define POS_Y_LO                                              `POS_Y_LO_WIDTH, `REGA_POS_Y_LO, `POS_Y_LO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     POS_Y_LO
//                  Pos Y low byte

`define POS_Y_HI_WIDTH                                        8
`define REGA_POS_Y_HI                                         13'h65f
`define POS_Y_HI_DEFAULT                                      8'h0
`define POS_Y_HI_CHECK                                        8'h0
`define POS_Y_HI                                              `POS_Y_HI_WIDTH, `REGA_POS_Y_HI, `POS_Y_HI_DEFAULT
//  access       ro
//  atype        A
//  7:2  0x0     RESERVED
//                  Reserved
//  1:0  0x0     POS_Y_HI
//                  Pos Y high byte

`define MAX_PERIOD_WIDTH                                      8
`define REGA_MAX_PERIOD                                       13'h660
`define MAX_PERIOD_DEFAULT                                    8'h0
`define MAX_PERIOD_CHECK                                      8'h0
`define MAX_PERIOD                                            `MAX_PERIOD_WIDTH, `REGA_MAX_PERIOD, `MAX_PERIOD_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     MAX_PERIOD
//                  Max period depending on the Modes

`define MIN_PERIOD_WIDTH                                      8
`define REGA_MIN_PERIOD                                       13'h662
`define MIN_PERIOD_DEFAULT                                    8'h1
`define MIN_PERIOD_CHECK                                      8'h1
`define MIN_PERIOD                                            `MIN_PERIOD_WIDTH, `REGA_MIN_PERIOD, `MIN_PERIOD_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x1     MIN_PERIOD
//                  Min period

`define SKATING_MIN_PERIOD_WIDTH                              8
`define REGA_SKATING_MIN_PERIOD                               13'h664
`define SKATING_MIN_PERIOD_DEFAULT                            8'he
`define SKATING_MIN_PERIOD_CHECK                              8'he
`define SKATING_MIN_PERIOD                                    `SKATING_MIN_PERIOD_WIDTH, `REGA_SKATING_MIN_PERIOD, `SKATING_MIN_PERIOD_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xe     SKATING_MIN_PERIOD
//                  Skating Min Period

`define START_FPC2_TH_LO_WIDTH                                8
`define REGA_START_FPC2_TH_LO                                 13'h666
`define START_FPC2_TH_LO_DEFAULT                              8'h33
`define START_FPC2_TH_LO_CHECK                                8'h33
`define START_FPC2_TH_LO                                      `START_FPC2_TH_LO_WIDTH, `REGA_START_FPC2_TH_LO, `START_FPC2_TH_LO_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x33    START_FPC2_TH_LO
//                  Start FPC2 threshold Low Byte

`define START_FPC2_TH_HI_WIDTH                                8
`define REGA_START_FPC2_TH_HI                                 13'h667
`define START_FPC2_TH_HI_DEFAULT                              8'h6
`define START_FPC2_TH_HI_CHECK                                8'h6
`define START_FPC2_TH_HI                                      `START_FPC2_TH_HI_WIDTH, `REGA_START_FPC2_TH_HI, `START_FPC2_TH_HI_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x6     START_FPC2_TH_HI
//                  Start FPC2 threshold High Byte

`define PERIOD_THR0_WIDTH                                     8
`define REGA_PERIOD_THR0                                      13'h668
`define PERIOD_THR0_DEFAULT                                   8'h0
`define PERIOD_THR0_CHECK                                     8'h0
`define PERIOD_THR0                                           `PERIOD_THR0_WIDTH, `REGA_PERIOD_THR0, `PERIOD_THR0_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     PERIOD_THR_SEL_CVFR_0
//                  CVFR_0 is the highest priority fast_upshift and step upshift/downshift threshold settings
//                  Set this register to enable PERIOD equal or less than PERIOD_THR_SEL_CVFR_0 to use CVFR_0 settings
//                  Set zero to disable

`define PERIOD_THR1_WIDTH                                     8
`define REGA_PERIOD_THR1                                      13'h669
`define PERIOD_THR1_DEFAULT                                   8'h0
`define PERIOD_THR1_CHECK                                     8'h0
`define PERIOD_THR1                                           `PERIOD_THR1_WIDTH, `REGA_PERIOD_THR1, `PERIOD_THR1_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     PERIOD_THR_SEL_CVFR_1
//                  CVFR_1 is the second priority fast_upshift and step upshift/downshift threshold settings
//                  Set this register to enable PERIOD equal or less than PERIOD_THR_SEL_CVFR_1 to use CVFR_1 settings
//                  Set zero to disable

`define PERIOD_THR2_WIDTH                                     8
`define REGA_PERIOD_THR2                                      13'h66a
`define PERIOD_THR2_DEFAULT                                   8'h0
`define PERIOD_THR2_CHECK                                     8'h0
`define PERIOD_THR2                                           `PERIOD_THR2_WIDTH, `REGA_PERIOD_THR2, `PERIOD_THR2_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     PERIOD_THR_SEL_CVFR_2
//                  CVFR_2 is the third priority fast_upshift and step upshift/downshift threshold settings
//                  Set this register to enable PERIOD equal or less than PERIOD_THR_SEL_CVFR_2 to use CVFR_2 settings
//                  Set zero to disable

`define NAV_CTRL73_WIDTH                                      8
`define REGA_NAV_CTRL73                                       13'h66b
`define NAV_CTRL73_DEFAULT                                    8'h28
`define NAV_CTRL73_CHECK                                      8'h28
`define NAV_CTRL73                                            `NAV_CTRL73_WIDTH, `REGA_NAV_CTRL73, `NAV_CTRL73_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x28    PSEUDO_REST_DOWNSHIFT
//                  Run to pseudo rest downshift period.  Pseudo rest will only gate the delta report to the MOT_ACCUM.
//                  The NAV calculation will still run as normal.
//                  Downshift = REG*256*50us(frame period) (12.8m to 3264ms)
//                  Default = 40*256*50us = 512ms
//                  The pseudo rest downshift will be reset when raw delta > threshold(NAV_CTRL74[3:0)] or mot_valid

`define NAV_CTRL74_WIDTH                                      8
`define REGA_NAV_CTRL74                                       13'h66c
`define NAV_CTRL74_DEFAULT                                    8'hb
`define NAV_CTRL74_CHECK                                      8'hb
`define NAV_CTRL74                                            `NAV_CTRL74_WIDTH, `REGA_NAV_CTRL74, `NAV_CTRL74_DEFAULT
//  access       rw
//  atype        A
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0xb     PSEUDO_REST_DELTA_THRESH
//                  When raw delta is > threshold, then only it will be output to the MOT_ACCUM during Pseudo rest
//                  The step size is 1/64 pixels.  Default = 11/64 = 0.172pixels

`define FF2PAF_TH_WIDTH                                       8
`define REGA_FF2PAF_TH                                        13'h66d
`define FF2PAF_TH_DEFAULT                                     8'h8f
`define FF2PAF_TH_CHECK                                       8'h8f
`define FF2PAF_TH                                             `FF2PAF_TH_WIDTH, `REGA_FF2PAF_TH, `FF2PAF_TH_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x8f    FF2PAF_TH
//                  FF to PAF switching threshold in SQ count

`define PAF2FF_TH_WIDTH                                       8
`define REGA_PAF2FF_TH                                        13'h66e
`define PAF2FF_TH_DEFAULT                                     8'h6f
`define PAF2FF_TH_CHECK                                       8'h6f
`define PAF2FF_TH                                             `PAF2FF_TH_WIDTH, `REGA_PAF2FF_TH, `PAF2FF_TH_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x6f    PAF2FF_TH
//                  PAF to FF switching threshold in SQ3 count

`define FF2PAF_PERSIST_TH_WIDTH                               8
`define REGA_FF2PAF_PERSIST_TH                                13'h66f
`define FF2PAF_PERSIST_TH_DEFAULT                             8'ha
`define FF2PAF_PERSIST_TH_CHECK                               8'ha
`define FF2PAF_PERSIST_TH                                     `FF2PAF_PERSIST_TH_WIDTH, `REGA_FF2PAF_PERSIST_TH, `FF2PAF_PERSIST_TH_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xa     FF2PAF_PERSIST_TH
//                  DCR filter switches from FF to PAF only if Squal > FF to PAF threshold
//                  for a minimum of number of frames defined by this persistence threshold
//                  Persistence threshold = 0x7f << 4 = 2032 frames (default)

`define PAF2FF_PERSIST_TH_WIDTH                               8
`define REGA_PAF2FF_PERSIST_TH                                13'h670
`define PAF2FF_PERSIST_TH_DEFAULT                             8'hff
`define PAF2FF_PERSIST_TH_CHECK                               8'hff
`define PAF2FF_PERSIST_TH                                     `PAF2FF_PERSIST_TH_WIDTH, `REGA_PAF2FF_PERSIST_TH, `PAF2FF_PERSIST_TH_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xff    PAF2FF_PERSIST_TH
//                  DCR filter switches from PAF to FF only if SQ3 < PAF to FF threshold
//                  for a minimum of number of frames defined by this persistence threshold
//                  Persistence threshold = 0x0a << 1 = 20 frames (default)

`define FIX_FILTER_CTRL_WIDTH                                 8
`define REGA_FIX_FILTER_CTRL                                  13'h671
`define FIX_FILTER_CTRL_DEFAULT                               8'h0
`define FIX_FILTER_CTRL_CHECK                                 8'h0
`define FIX_FILTER_CTRL                                       `FIX_FILTER_CTRL_WIDTH, `REGA_FIX_FILTER_CTRL, `FIX_FILTER_CTRL_DEFAULT
//  access       rw
//  atype        A
//  7:2  0x0     RESERVED
//                  Reserved
//  1:0  0x0     FIX_FILTER_CTRL
//                  Filter switching control
//                  [2'bx0]: Automatic
//                  [2'b01]: PAF only
//                  [2'b11]: Fixed filter only

`define FF_FILTER_REQ_WIDTH                                   8
`define REGA_FF_FILTER_REQ                                    13'h672
`define FF_FILTER_REQ_DEFAULT                                 8'h0
`define FF_FILTER_REQ_CHECK                                   8'h0
`define FF_FILTER_REQ                                         `FF_FILTER_REQ_WIDTH, `REGA_FF_FILTER_REQ, `FF_FILTER_REQ_DEFAULT
//  access       ro
//  atype        A
//  7:1  0x0     RESERVED
//                  Reserved
//    0  0x0     FF_FILTER_REQ
//                  Fixed filter request status
//                  [0] Sensor not in Fixed Filter mode
//                  [1] Sensor in Fixed Filter mode

`define NAV_CTRL75_WIDTH                                      8
`define REGA_NAV_CTRL75                                       13'h673
`define NAV_CTRL75_DEFAULT                                    8'h0
`define NAV_CTRL75_CHECK                                      8'h0
`define NAV_CTRL75                                            `NAV_CTRL75_WIDTH, `REGA_NAV_CTRL75, `NAV_CTRL75_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     RESERVED
//                  Reserved

`define NAV_CTRL63_WIDTH                                      8
`define REGA_NAV_CTRL63                                       13'h674
`define NAV_CTRL63_DEFAULT                                    8'h20
`define NAV_CTRL63_CHECK                                      8'h20
`define NAV_CTRL63                                            `NAV_CTRL63_WIDTH, `REGA_NAV_CTRL63, `NAV_CTRL63_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x20    FD_RUN_SKIP_VAL
//                  Fault detection check in Run mode
//                  The FD check is performed in periodic manner with reference to the skip frame rate
//                  00 : Run FD every frame
//                  01 : Run FD periodically at the 2nd highest frame period

`define PERIOD_THR5_WIDTH                                     8
`define REGA_PERIOD_THR5                                      13'h677
`define PERIOD_THR5_DEFAULT                                   8'h2
`define PERIOD_THR5_CHECK                                     8'h2
`define PERIOD_THR5                                           `PERIOD_THR5_WIDTH, `REGA_PERIOD_THR5, `PERIOD_THR5_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x2     RESERVED
//                  Reserved

`define BIGCOR_FRAME_PERIOD_WIDTH                             8
`define REGA_BIGCOR_FRAME_PERIOD                              13'h678
`define BIGCOR_FRAME_PERIOD_DEFAULT                           8'h6
`define BIGCOR_FRAME_PERIOD_CHECK                             8'h6
`define BIGCOR_FRAME_PERIOD                                   `BIGCOR_FRAME_PERIOD_WIDTH, `REGA_BIGCOR_FRAME_PERIOD, `BIGCOR_FRAME_PERIOD_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x6     BIGCOR_FRAME_PERIOD
//                  Big Correlation Frame Period

`define PERIOD_THR6_WIDTH                                     8
`define REGA_PERIOD_THR6                                      13'h679
`define PERIOD_THR6_DEFAULT                                   8'h1
`define PERIOD_THR6_CHECK                                     8'h1
`define PERIOD_THR6                                           `PERIOD_THR6_WIDTH, `REGA_PERIOD_THR6, `PERIOD_THR6_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x1     RESERVED
//                  Reserved

`define SPECIAL_FRAME_PERIOD_WIDTH                            8
`define REGA_SPECIAL_FRAME_PERIOD                             13'h67a
`define SPECIAL_FRAME_PERIOD_DEFAULT                          8'h2
`define SPECIAL_FRAME_PERIOD_CHECK                            8'h2
`define SPECIAL_FRAME_PERIOD                                  `SPECIAL_FRAME_PERIOD_WIDTH, `REGA_SPECIAL_FRAME_PERIOD, `SPECIAL_FRAME_PERIOD_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x2     NON_OVERLAP_MIN_PERIOD
//                  Non Overlapping Min Period

`define NAV_CTRL64_WIDTH                                      8
`define REGA_NAV_CTRL64                                       13'h67b
`define NAV_CTRL64_DEFAULT                                    8'h2
`define NAV_CTRL64_CHECK                                      8'h2
`define NAV_CTRL64                                            `NAV_CTRL64_WIDTH, `REGA_NAV_CTRL64, `NAV_CTRL64_DEFAULT
//  access       rw
//  atype        A
//  7:6  0x0     RESERVED
//                  Reserved
//  5:3  0x0     FD_REST2_SKIP_VAL
//                  Numbers of REST2 frames to skip for the Laser Fault detection
//                  0 : No skip, run every frame
//                  1 : Run once every 2 frames
//                  2 : Run once every 4 frames
//                  3 : Run once every 8 frames
//                  4 : Run once every 16 frames
//                  5 : Run once every 32 frames
//                  6 : Run once every 64 frames
//                  7 : Run once every 128 frames
//  2:0  0x2     FD_REST1_SKIP_VAL
//                  Numbers of REST1 frames to skip for the Laser Fault detection
//                  0 : No skip, run every frame
//                  1 : Run once every 2 frames
//                  2 : Run once every 4 frames
//                  3 : Run once every 8 frames
//                  4 : Run once every 16 frames
//                  5 : Run once every 32 frames
//                  6 : Run once every 64 frames
//                  7 : Run once every 128 frames

`define NAV_CTRL65_WIDTH                                      8
`define REGA_NAV_CTRL65                                       13'h67c
`define NAV_CTRL65_DEFAULT                                    8'hfc
`define NAV_CTRL65_CHECK                                      8'hfc
`define NAV_CTRL65                                            `NAV_CTRL65_WIDTH, `REGA_NAV_CTRL65, `NAV_CTRL65_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     GATE_EXTRPL_1
//                  disable extrapolation when bigcor
//    6  0x1     GATE_EXTRPL_2
//                  disable extrapolation when goto_hi_fps
//    5  0x1     GATE_EXTRPL_3
//                  disable extrapolation when skating_pulse2
//    4  0x1     GATE_EXTRPL_4
//                  disable extrapolation when int_rest
//    3  0x1     GATE_EXTRPL_5
//                  disable extrapolation when force_min_period
//    2  0x1     GATE_EXTRPL_6
//                  disable extrapolation when fast upshift
//    1  0x0     FORCE_EXTRPL
//                  Force extrapolation mode
//    0  0x0     DYN_EXTRPL_EN
//                  Enable Dynamic Extrapolation
//                  Dynamic Extrapolation Registers
//                  NAV_CTRL67

`define NAV_CTRL76_WIDTH                                      8
`define REGA_NAV_CTRL76                                       13'h67d
`define NAV_CTRL76_DEFAULT                                    8'h91
`define NAV_CTRL76_CHECK                                      8'h91
`define NAV_CTRL76                                            `NAV_CTRL76_WIDTH, `REGA_NAV_CTRL76, `NAV_CTRL76_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     EP_FILTER_SWITCH
//                  1= perform filter switch check during the navigation phase of extrapolation
//    6  0x0     EP_CK_MOT
//                  1= perform check mot state during skip phase of extrapolation
//  5:4  0x1     SKIP_FILTER_SWITCH
//                  Skip filter switching during modes that selected through associated register bits:
//                  [4] Extrapolation skip phase
//  3:0  0x1     REINIT_FILTER_SWITCH
//                  Reinitialize filter switching during modes that are selected through associated register bits:
//                  [2] Runaway
//                  [1] Paired bigcor request
//                  [0] Skating mode

`define PERIOD_THR7_WIDTH                                     8
`define REGA_PERIOD_THR7                                      13'h67e
`define PERIOD_THR7_DEFAULT                                   8'h2
`define PERIOD_THR7_CHECK                                     8'h2
`define PERIOD_THR7                                           `PERIOD_THR7_WIDTH, `REGA_PERIOD_THR7, `PERIOD_THR7_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x2     PERIOD_THR7
//                  Period Threshold 7


`define P7_PROD_ID_WIDTH                                      0
`define REGA_P7_PROD_ID                                       13'h700
`define P7_PROD_ID                                            `P7_PROD_ID_WIDTH, `REGA_P7_PROD_ID, `P7_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P7_REV_ID_WIDTH                                       0
`define REGA_P7_REV_ID                                        13'h701
`define P7_REV_ID                                             `P7_REV_ID_WIDTH, `REGA_P7_REV_ID, `P7_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P7_MOTION_WIDTH                                       0
`define REGA_P7_MOTION                                        13'h702
`define P7_MOTION                                             `P7_MOTION_WIDTH, `REGA_P7_MOTION, `P7_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P7_DELTA_X_LO_WIDTH                                   0
`define REGA_P7_DELTA_X_LO                                    13'h703
`define P7_DELTA_X_LO                                         `P7_DELTA_X_LO_WIDTH, `REGA_P7_DELTA_X_LO, `P7_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P7_DELTA_X_HI_WIDTH                                   0
`define REGA_P7_DELTA_X_HI                                    13'h704
`define P7_DELTA_X_HI                                         `P7_DELTA_X_HI_WIDTH, `REGA_P7_DELTA_X_HI, `P7_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P7_DELTA_Y_LO_WIDTH                                   0
`define REGA_P7_DELTA_Y_LO                                    13'h705
`define P7_DELTA_Y_LO                                         `P7_DELTA_Y_LO_WIDTH, `REGA_P7_DELTA_Y_LO, `P7_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P7_DELTA_Y_HI_WIDTH                                   0
`define REGA_P7_DELTA_Y_HI                                    13'h706
`define P7_DELTA_Y_HI                                         `P7_DELTA_Y_HI_WIDTH, `REGA_P7_DELTA_Y_HI, `P7_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P7_SQUAL_WIDTH                                        0
`define REGA_P7_SQUAL                                         13'h707
`define P7_SQUAL                                              `P7_SQUAL_WIDTH, `REGA_P7_SQUAL, `P7_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P7_PIX_ACCUM_WIDTH                                    0
`define REGA_P7_PIX_ACCUM                                     13'h708
`define P7_PIX_ACCUM                                          `P7_PIX_ACCUM_WIDTH, `REGA_P7_PIX_ACCUM, `P7_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P7_PIX_MAX_WIDTH                                      0
`define REGA_P7_PIX_MAX                                       13'h709
`define P7_PIX_MAX                                            `P7_PIX_MAX_WIDTH, `REGA_P7_PIX_MAX, `P7_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P7_PIX_MIN_WIDTH                                      0
`define REGA_P7_PIX_MIN                                       13'h70a
`define P7_PIX_MIN                                            `P7_PIX_MIN_WIDTH, `REGA_P7_PIX_MIN, `P7_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P7_SHUT_LO_WIDTH                                      0
`define REGA_P7_SHUT_LO                                       13'h70b
`define P7_SHUT_LO                                            `P7_SHUT_LO_WIDTH, `REGA_P7_SHUT_LO, `P7_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P7_SHUT_HI_WIDTH                                      0
`define REGA_P7_SHUT_HI                                       13'h70c
`define P7_SHUT_HI                                            `P7_SHUT_HI_WIDTH, `REGA_P7_SHUT_HI, `P7_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P7_EXT_WAKEUP_WIDTH                                   0
`define REGA_P7_EXT_WAKEUP                                    13'h70d
`define P7_EXT_WAKEUP                                         `P7_EXT_WAKEUP_WIDTH, `REGA_P7_EXT_WAKEUP, `P7_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P7_RESERVED_E_WIDTH                                   0
`define REGA_P7_RESERVED_E                                    13'h70e
`define P7_RESERVED_E                                         `P7_RESERVED_E_WIDTH, `REGA_P7_RESERVED_E, `P7_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P7_SKIP_FRAMES_CNT_LO_WIDTH                           0
`define REGA_P7_SKIP_FRAMES_CNT_LO                            13'h70f
`define P7_SKIP_FRAMES_CNT_LO                                 `P7_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P7_SKIP_FRAMES_CNT_LO, `P7_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P7_SKIP_FRAMES_CNT_HI_WIDTH                           0
`define REGA_P7_SKIP_FRAMES_CNT_HI                            13'h710
`define P7_SKIP_FRAMES_CNT_HI                                 `P7_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P7_SKIP_FRAMES_CNT_HI, `P7_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P7_CVFR_PERIOD_LO_WIDTH                               0
`define REGA_P7_CVFR_PERIOD_LO                                13'h711
`define P7_CVFR_PERIOD_LO                                     `P7_CVFR_PERIOD_LO_WIDTH, `REGA_P7_CVFR_PERIOD_LO, `P7_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P7_CVFR_PERIOD_HI_WIDTH                               0
`define REGA_P7_CVFR_PERIOD_HI                                13'h712
`define P7_CVFR_PERIOD_HI                                     `P7_CVFR_PERIOD_HI_WIDTH, `REGA_P7_CVFR_PERIOD_HI, `P7_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P7_OBSERVATION_WIDTH                                  0
`define REGA_P7_OBSERVATION                                   13'h715
`define P7_OBSERVATION                                        `P7_OBSERVATION_WIDTH, `REGA_P7_OBSERVATION, `P7_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P7_BURST_MOTION_WIDTH                                 0
`define REGA_P7_BURST_MOTION                                  13'h716
`define P7_BURST_MOTION                                       `P7_BURST_MOTION_WIDTH, `REGA_P7_BURST_MOTION, `P7_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P7_SQUAL2_WIDTH                                       0
`define REGA_P7_SQUAL2                                        13'h717
`define P7_SQUAL2                                             `P7_SQUAL2_WIDTH, `REGA_P7_SQUAL2, `P7_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P7_SPI_MODE_WIDTH                                     0
`define REGA_P7_SPI_MODE                                      13'h718
`define P7_SPI_MODE                                           `P7_SPI_MODE_WIDTH, `REGA_P7_SPI_MODE, `P7_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P7_OSC_TUNE_INSTR_WIDTH                               0
`define REGA_P7_OSC_TUNE_INSTR                                13'h722
`define P7_OSC_TUNE_INSTR                                     `P7_OSC_TUNE_INSTR_WIDTH, `REGA_P7_OSC_TUNE_INSTR, `P7_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P7_OSC_TUNE_INSTR_SLOW_WIDTH                          0
`define REGA_P7_OSC_TUNE_INSTR_SLOW                           13'h723
`define P7_OSC_TUNE_INSTR_SLOW                                `P7_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P7_OSC_TUNE_INSTR_SLOW, `P7_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P7_PRBS_MODE_WIDTH                                    0
`define REGA_P7_PRBS_MODE                                     13'h730
`define P7_PRBS_MODE                                          `P7_PRBS_MODE_WIDTH, `REGA_P7_PRBS_MODE, `P7_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P7_POWERDOWN_WIDTH                                    0
`define REGA_P7_POWERDOWN                                     13'h732
`define P7_POWERDOWN                                          `P7_POWERDOWN_WIDTH, `REGA_P7_POWERDOWN, `P7_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P7_CRC0_WIDTH                                         0
`define REGA_P7_CRC0                                          13'h733
`define P7_CRC0                                               `P7_CRC0_WIDTH, `REGA_P7_CRC0, `P7_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P7_CRC1_WIDTH                                         0
`define REGA_P7_CRC1                                          13'h734
`define P7_CRC1                                               `P7_CRC1_WIDTH, `REGA_P7_CRC1, `P7_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P7_CRC2_WIDTH                                         0
`define REGA_P7_CRC2                                          13'h735
`define P7_CRC2                                               `P7_CRC2_WIDTH, `REGA_P7_CRC2, `P7_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P7_CRC3_WIDTH                                         0
`define REGA_P7_CRC3                                          13'h736
`define P7_CRC3                                               `P7_CRC3_WIDTH, `REGA_P7_CRC3, `P7_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P7_IOSTATUS_WIDTH                                     0
`define REGA_P7_IOSTATUS                                      13'h737
`define P7_IOSTATUS                                           `P7_IOSTATUS_WIDTH, `REGA_P7_IOSTATUS, `P7_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P7_TAP_KEY_WO_WIDTH                                   0
`define REGA_P7_TAP_KEY_WO                                    13'h738
`define P7_TAP_KEY_WO                                         `P7_TAP_KEY_WO_WIDTH, `REGA_P7_TAP_KEY_WO, `P7_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P7_TAP_KEY_WIDTH                                      0
`define REGA_P7_TAP_KEY                                       13'h739
`define P7_TAP_KEY                                            `P7_TAP_KEY_WIDTH, `REGA_P7_TAP_KEY, `P7_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P7_POWER_UP_RESET_WIDTH                               0
`define REGA_P7_POWER_UP_RESET                                13'h73a
`define P7_POWER_UP_RESET                                     `P7_POWER_UP_RESET_WIDTH, `REGA_P7_POWER_UP_RESET, `P7_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P7_SHUTDOWN_WIDTH                                     0
`define REGA_P7_SHUTDOWN                                      13'h73b
`define P7_SHUTDOWN                                           `P7_SHUTDOWN_WIDTH, `REGA_P7_SHUTDOWN, `P7_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P7_SCAN_MODE_WIDTH                                    0
`define REGA_P7_SCAN_MODE                                     13'h73c
`define P7_SCAN_MODE                                          `P7_SCAN_MODE_WIDTH, `REGA_P7_SCAN_MODE, `P7_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P7_SPI_PAGE_WIDTH                                     0
`define REGA_P7_SPI_PAGE                                      13'h77f
`define P7_SPI_PAGE                                           `P7_SPI_PAGE_WIDTH, `REGA_P7_SPI_PAGE, `P7_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define FPC_CTRL0_WIDTH                                       8
`define REGA_FPC_CTRL0                                        13'h740
`define FPC_CTRL0_DEFAULT                                     8'h40
`define FPC_CTRL0_CHECK                                       8'h40
`define FPC_CTRL0                                             `FPC_CTRL0_WIDTH, `REGA_FPC_CTRL0, `FPC_CTRL0_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     INSTANT_RUN_FRAME_DIS
//                  0x0: Immediately start run frame after last rest frame.  Run frame start after ~50us from rest
//                  0x1: Run frame start after ~150 us from rest.
//    6  0x1     REST_ARR_SIZE
//                  1: 22x22
//                  0: 35x35
//    5  0x0     RUN_ARR_SIZE
//                  1: 22x22
//                  0: 35x35
//    4  0x0     WATCHDOG_TEST
//                  1: Watchdog test mode.  Sets watchdog to 10ms timeout
//    3  0x0     FPC_STOP
//                  1: Stop FPC (watchdog will trigger)
//    2  0x0     LDO_REST_OPT2
//                  LDO_REST_OPT2
//    1  0x0     RESERVED
//                  Reserved
//    0  0x0     FPC_INHIBIT
//                  1: FPC inhibit (also inhibits watchdog).  Readback value is an inhibit status flag.  This flag is composed of (FPC_STOP | FPC_INHIBIT).

`define FPC_CTRL1_WIDTH                                       8
`define REGA_FPC_CTRL1                                        13'h741
`define FPC_CTRL1_DEFAULT                                     8'h19
`define FPC_CTRL1_CHECK                                       8'h19
`define FPC_CTRL1                                             `FPC_CTRL1_WIDTH, `REGA_FPC_CTRL1, `FPC_CTRL1_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x19    OSC_OFF_THRESH
//                  Do not allow fast clock to turn off if period cnt is less than this threshold x 2

`define FPC_CTRL2_WIDTH                                       8
`define REGA_FPC_CTRL2                                        13'h742
`define FPC_CTRL2_DEFAULT                                     8'h32
`define FPC_CTRL2_CHECK                                       8'h32
`define FPC_CTRL2                                             `FPC_CTRL2_WIDTH, `REGA_FPC_CTRL2, `FPC_CTRL2_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x32    SKIP_FRAMES_PERIOD_LO
//                  FRAME_PERIOD = SKIP_FRAMES_CNT * SKIP_FRAMES_PERIOD

`define FPC_CTRL3_WIDTH                                       8
`define REGA_FPC_CTRL3                                        13'h743
`define FPC_CTRL3_DEFAULT                                     8'h0
`define FPC_CTRL3_CHECK                                       8'h0
`define FPC_CTRL3                                             `FPC_CTRL3_WIDTH, `REGA_FPC_CTRL3, `FPC_CTRL3_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     SKIP_FRAMES_PERIOD_HI
//                  FRAME_PERIOD = SKIP_FRAMES_CNT * SKIP_FRAMES_PERIOD

`define FPC_CTRL9_WIDTH                                       8
`define REGA_FPC_CTRL9                                        13'h749
`define FPC_CTRL9_DEFAULT                                     8'h10
`define FPC_CTRL9_CHECK                                       8'h10
`define FPC_CTRL9                                             `FPC_CTRL9_WIDTH, `REGA_FPC_CTRL9, `FPC_CTRL9_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x10    REST_MODE_PERIOD_CNT_TH
//                  Rest mode period count threshold

`define FPC_CTRL10_WIDTH                                      8
`define REGA_FPC_CTRL10                                       13'h74a
`define FPC_CTRL10_DEFAULT                                    8'ha
`define FPC_CTRL10_CHECK                                      8'ha
`define FPC_CTRL10                                            `FPC_CTRL10_WIDTH, `REGA_FPC_CTRL10, `FPC_CTRL10_DEFAULT
//  access       rw
//  atype        A
//  7:6  0x0     CLAMP_PWR_SAVING
//                  2'b00 : 50L/50H
//                  2'b01 : 60L/40H
//                  2'b10 : 70L/30H
//                  2'b11 : 80L/20H
//    5  0x0     ENABLE_CLAMP_INV
//                  0x0: Clamp Duty Cycle follow bit[7:6]
//                  0x1: Invert Clamp Duty Clycle
//    4  0x0     ENABLE_CLAMP_SAV
//                  0x0: Disable Clamp Power Saving Mode
//                  0x1: Enable Clamp Power Saving Mode
//  3:0  0xa     CLK_FILT_TIME
//                  How Many Clocks to be filtered upon deassert CLK68M_PD
//                  formula = reg * 1us

`define FPC_CTRL11_WIDTH                                      8
`define REGA_FPC_CTRL11                                       13'h74b
`define FPC_CTRL11_DEFAULT                                    8'h82
`define FPC_CTRL11_CHECK                                      8'h82
`define FPC_CTRL11                                            `FPC_CTRL11_WIDTH, `REGA_FPC_CTRL11, `FPC_CTRL11_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     USE_WAKEUP_PERIOD
//                  0x1: Use idle mode wakeup period
//    6  0x0     DISABLE_LDO_INSTANT_ON
//                  0x1: Disable instant turn on for LDO, LDOCL, BG, AVDD_DVDD during wakeup from IDLE
//    5  0x0     RESERVED
//                  Reserved
//    4  0x0     START_FPC2_OPT1
//                  Faster synchronization for start_fpc2 was implemented.  This bit is to revert back to older design.
//  3:0  0x2     IDLE_MODE_WAKEUP_PERIOD
//                  Idle Mode Wakeup Period


`define P8_PROD_ID_WIDTH                                      0
`define REGA_P8_PROD_ID                                       13'h800
`define P8_PROD_ID                                            `P8_PROD_ID_WIDTH, `REGA_P8_PROD_ID, `P8_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P8_REV_ID_WIDTH                                       0
`define REGA_P8_REV_ID                                        13'h801
`define P8_REV_ID                                             `P8_REV_ID_WIDTH, `REGA_P8_REV_ID, `P8_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P8_MOTION_WIDTH                                       0
`define REGA_P8_MOTION                                        13'h802
`define P8_MOTION                                             `P8_MOTION_WIDTH, `REGA_P8_MOTION, `P8_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P8_DELTA_X_LO_WIDTH                                   0
`define REGA_P8_DELTA_X_LO                                    13'h803
`define P8_DELTA_X_LO                                         `P8_DELTA_X_LO_WIDTH, `REGA_P8_DELTA_X_LO, `P8_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P8_DELTA_X_HI_WIDTH                                   0
`define REGA_P8_DELTA_X_HI                                    13'h804
`define P8_DELTA_X_HI                                         `P8_DELTA_X_HI_WIDTH, `REGA_P8_DELTA_X_HI, `P8_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P8_DELTA_Y_LO_WIDTH                                   0
`define REGA_P8_DELTA_Y_LO                                    13'h805
`define P8_DELTA_Y_LO                                         `P8_DELTA_Y_LO_WIDTH, `REGA_P8_DELTA_Y_LO, `P8_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P8_DELTA_Y_HI_WIDTH                                   0
`define REGA_P8_DELTA_Y_HI                                    13'h806
`define P8_DELTA_Y_HI                                         `P8_DELTA_Y_HI_WIDTH, `REGA_P8_DELTA_Y_HI, `P8_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P8_SQUAL_WIDTH                                        0
`define REGA_P8_SQUAL                                         13'h807
`define P8_SQUAL                                              `P8_SQUAL_WIDTH, `REGA_P8_SQUAL, `P8_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P8_PIX_ACCUM_WIDTH                                    0
`define REGA_P8_PIX_ACCUM                                     13'h808
`define P8_PIX_ACCUM                                          `P8_PIX_ACCUM_WIDTH, `REGA_P8_PIX_ACCUM, `P8_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P8_PIX_MAX_WIDTH                                      0
`define REGA_P8_PIX_MAX                                       13'h809
`define P8_PIX_MAX                                            `P8_PIX_MAX_WIDTH, `REGA_P8_PIX_MAX, `P8_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P8_PIX_MIN_WIDTH                                      0
`define REGA_P8_PIX_MIN                                       13'h80a
`define P8_PIX_MIN                                            `P8_PIX_MIN_WIDTH, `REGA_P8_PIX_MIN, `P8_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P8_SHUT_LO_WIDTH                                      0
`define REGA_P8_SHUT_LO                                       13'h80b
`define P8_SHUT_LO                                            `P8_SHUT_LO_WIDTH, `REGA_P8_SHUT_LO, `P8_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P8_SHUT_HI_WIDTH                                      0
`define REGA_P8_SHUT_HI                                       13'h80c
`define P8_SHUT_HI                                            `P8_SHUT_HI_WIDTH, `REGA_P8_SHUT_HI, `P8_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P8_EXT_WAKEUP_WIDTH                                   0
`define REGA_P8_EXT_WAKEUP                                    13'h80d
`define P8_EXT_WAKEUP                                         `P8_EXT_WAKEUP_WIDTH, `REGA_P8_EXT_WAKEUP, `P8_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P8_RESERVED_E_WIDTH                                   0
`define REGA_P8_RESERVED_E                                    13'h80e
`define P8_RESERVED_E                                         `P8_RESERVED_E_WIDTH, `REGA_P8_RESERVED_E, `P8_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P8_SKIP_FRAMES_CNT_LO_WIDTH                           0
`define REGA_P8_SKIP_FRAMES_CNT_LO                            13'h80f
`define P8_SKIP_FRAMES_CNT_LO                                 `P8_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P8_SKIP_FRAMES_CNT_LO, `P8_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P8_SKIP_FRAMES_CNT_HI_WIDTH                           0
`define REGA_P8_SKIP_FRAMES_CNT_HI                            13'h810
`define P8_SKIP_FRAMES_CNT_HI                                 `P8_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P8_SKIP_FRAMES_CNT_HI, `P8_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P8_CVFR_PERIOD_LO_WIDTH                               0
`define REGA_P8_CVFR_PERIOD_LO                                13'h811
`define P8_CVFR_PERIOD_LO                                     `P8_CVFR_PERIOD_LO_WIDTH, `REGA_P8_CVFR_PERIOD_LO, `P8_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P8_CVFR_PERIOD_HI_WIDTH                               0
`define REGA_P8_CVFR_PERIOD_HI                                13'h812
`define P8_CVFR_PERIOD_HI                                     `P8_CVFR_PERIOD_HI_WIDTH, `REGA_P8_CVFR_PERIOD_HI, `P8_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P8_OBSERVATION_WIDTH                                  0
`define REGA_P8_OBSERVATION                                   13'h815
`define P8_OBSERVATION                                        `P8_OBSERVATION_WIDTH, `REGA_P8_OBSERVATION, `P8_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P8_BURST_MOTION_WIDTH                                 0
`define REGA_P8_BURST_MOTION                                  13'h816
`define P8_BURST_MOTION                                       `P8_BURST_MOTION_WIDTH, `REGA_P8_BURST_MOTION, `P8_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P8_SQUAL2_WIDTH                                       0
`define REGA_P8_SQUAL2                                        13'h817
`define P8_SQUAL2                                             `P8_SQUAL2_WIDTH, `REGA_P8_SQUAL2, `P8_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P8_SPI_MODE_WIDTH                                     0
`define REGA_P8_SPI_MODE                                      13'h818
`define P8_SPI_MODE                                           `P8_SPI_MODE_WIDTH, `REGA_P8_SPI_MODE, `P8_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P8_OSC_TUNE_INSTR_WIDTH                               0
`define REGA_P8_OSC_TUNE_INSTR                                13'h822
`define P8_OSC_TUNE_INSTR                                     `P8_OSC_TUNE_INSTR_WIDTH, `REGA_P8_OSC_TUNE_INSTR, `P8_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P8_OSC_TUNE_INSTR_SLOW_WIDTH                          0
`define REGA_P8_OSC_TUNE_INSTR_SLOW                           13'h823
`define P8_OSC_TUNE_INSTR_SLOW                                `P8_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P8_OSC_TUNE_INSTR_SLOW, `P8_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P8_PRBS_MODE_WIDTH                                    0
`define REGA_P8_PRBS_MODE                                     13'h830
`define P8_PRBS_MODE                                          `P8_PRBS_MODE_WIDTH, `REGA_P8_PRBS_MODE, `P8_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P8_POWERDOWN_WIDTH                                    0
`define REGA_P8_POWERDOWN                                     13'h832
`define P8_POWERDOWN                                          `P8_POWERDOWN_WIDTH, `REGA_P8_POWERDOWN, `P8_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P8_CRC0_WIDTH                                         0
`define REGA_P8_CRC0                                          13'h833
`define P8_CRC0                                               `P8_CRC0_WIDTH, `REGA_P8_CRC0, `P8_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P8_CRC1_WIDTH                                         0
`define REGA_P8_CRC1                                          13'h834
`define P8_CRC1                                               `P8_CRC1_WIDTH, `REGA_P8_CRC1, `P8_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P8_CRC2_WIDTH                                         0
`define REGA_P8_CRC2                                          13'h835
`define P8_CRC2                                               `P8_CRC2_WIDTH, `REGA_P8_CRC2, `P8_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P8_CRC3_WIDTH                                         0
`define REGA_P8_CRC3                                          13'h836
`define P8_CRC3                                               `P8_CRC3_WIDTH, `REGA_P8_CRC3, `P8_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P8_IOSTATUS_WIDTH                                     0
`define REGA_P8_IOSTATUS                                      13'h837
`define P8_IOSTATUS                                           `P8_IOSTATUS_WIDTH, `REGA_P8_IOSTATUS, `P8_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P8_TAP_KEY_WO_WIDTH                                   0
`define REGA_P8_TAP_KEY_WO                                    13'h838
`define P8_TAP_KEY_WO                                         `P8_TAP_KEY_WO_WIDTH, `REGA_P8_TAP_KEY_WO, `P8_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P8_TAP_KEY_WIDTH                                      0
`define REGA_P8_TAP_KEY                                       13'h839
`define P8_TAP_KEY                                            `P8_TAP_KEY_WIDTH, `REGA_P8_TAP_KEY, `P8_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P8_POWER_UP_RESET_WIDTH                               0
`define REGA_P8_POWER_UP_RESET                                13'h83a
`define P8_POWER_UP_RESET                                     `P8_POWER_UP_RESET_WIDTH, `REGA_P8_POWER_UP_RESET, `P8_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P8_SHUTDOWN_WIDTH                                     0
`define REGA_P8_SHUTDOWN                                      13'h83b
`define P8_SHUTDOWN                                           `P8_SHUTDOWN_WIDTH, `REGA_P8_SHUTDOWN, `P8_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P8_SCAN_MODE_WIDTH                                    0
`define REGA_P8_SCAN_MODE                                     13'h83c
`define P8_SCAN_MODE                                          `P8_SCAN_MODE_WIDTH, `REGA_P8_SCAN_MODE, `P8_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P8_SPI_PAGE_WIDTH                                     0
`define REGA_P8_SPI_PAGE                                      13'h87f
`define P8_SPI_PAGE                                           `P8_SPI_PAGE_WIDTH, `REGA_P8_SPI_PAGE, `P8_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define PIX_SAT_SHUT_TH_WIDTH                                 8
`define REGA_PIX_SAT_SHUT_TH                                  13'h840
`define PIX_SAT_SHUT_TH_DEFAULT                               8'h32
`define PIX_SAT_SHUT_TH_CHECK                                 8'h32
`define PIX_SAT_SHUT_TH                                       `PIX_SAT_SHUT_TH_WIDTH, `REGA_PIX_SAT_SHUT_TH, `PIX_SAT_SHUT_TH_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x32    PIX_SAT_SHUT_TH
//                  Pix Saturation shutter adapted threshold.
//                  This function is enabled in SHUT_CONTROL[3].
//                  If number of saturated pixel is greater than this treshold, a different shutter
//                  incremental factor (4 MSB of SHUT_VAL_SHIFT register).
//                  This function is used mainly for halftone surfaces.

`define PIX_SAT_WIDTH                                         8
`define REGA_PIX_SAT                                          13'h841
`define PIX_SAT_DEFAULT                                       8'h0
`define PIX_SAT_CHECK                                         8'h0
`define PIX_SAT                                               `PIX_SAT_WIDTH, `REGA_PIX_SAT, `PIX_SAT_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     PIX_SAT
//                  Number of saturated pixels (upper 8-bit of 11-bit counter).

`define PMIN_WAKEUP_THRESH_HS_WIDTH                           8
`define REGA_PMIN_WAKEUP_THRESH_HS                            13'h849
`define PMIN_WAKEUP_THRESH_HS_DEFAULT                         8'h78
`define PMIN_WAKEUP_THRESH_HS_CHECK                           8'h78
`define PMIN_WAKEUP_THRESH_HS                                 `PMIN_WAKEUP_THRESH_HS_WIDTH, `REGA_PMIN_WAKEUP_THRESH_HS, `PMIN_WAKEUP_THRESH_HS_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x78    PMIN_WAKEUP_THRESH_HS
//                  Pixel minimum threshold for PIXMON wakeup during high squal surface mode
//                  PIXMON wakeup is set if pixel minimum > PMIN_WAKEUP_THRESH_HS*4 and shutter not minimum
//                  By default, PIXMON wakeup is set if pixel minimum > 56*4 or 224 and shutter not minimum

`define SHUT_VAL_SHIFT_WIDTH                                  8
`define REGA_SHUT_VAL_SHIFT                                   13'h84a
`define SHUT_VAL_SHIFT_DEFAULT                                8'h4
`define SHUT_VAL_SHIFT_CHECK                                  8'h4
`define SHUT_VAL_SHIFT                                        `SHUT_VAL_SHIFT_WIDTH, `REGA_SHUT_VAL_SHIFT, `SHUT_VAL_SHIFT_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x4     SHUT_VAL_SHIFT_REG
//                  This register determines the incremental step of shutter at end each frames.
//                  0: Increment by current shutter value
//                  1: Increment by 1/2 current shutter value
//                  2: Increment by 1/4 current shutter value
//                  3: Increment by 1/8 current shutter value
//                  4: Increment by 1/16 current shutter value
//                  5: Increment by 1/32 current shutter value
//                  6: Increment by 1/64 current shutter value
//                  7: Increment by 1/128 current shutter value
//                  Bit [7:4] Controls the increment rate for fast shutter adaptation (disabled by default).  Enabled by SHUT_CONTROL[3]
//                  Bit [3:0] Controls the increment rate for normal shutter control

`define MAN_COL_SAMP_START_WIDTH                              8
`define REGA_MAN_COL_SAMP_START                               13'h84b
`define MAN_COL_SAMP_START_DEFAULT                            8'h0
`define MAN_COL_SAMP_START_CHECK                              8'h0
`define MAN_COL_SAMP_START                                    `MAN_COL_SAMP_START_WIDTH, `REGA_MAN_COL_SAMP_START, `MAN_COL_SAMP_START_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     MANUAL_COL_SAMP_EN
//                  1= enable manual column sampling mode
//    6  0x0     RESERVED
//                  Reserved
//  5:0  0x0     MANUAL_COL_SAMP_START
//                  Starting column for manual pixel statistic sampling in PIXMON
//                  Col address starts from 0x0 (0 dec) and ends at 0x23 (35 dec)

`define MAN_COL_SAMP_END_WIDTH                                8
`define REGA_MAN_COL_SAMP_END                                 13'h84c
`define MAN_COL_SAMP_END_DEFAULT                              8'h0
`define MAN_COL_SAMP_END_CHECK                                8'h0
`define MAN_COL_SAMP_END                                      `MAN_COL_SAMP_END_WIDTH, `REGA_MAN_COL_SAMP_END, `MAN_COL_SAMP_END_DEFAULT
//  access       rw
//  atype        A
//  7:6  0x0     RESERVED
//                  Reserved
//  5:0  0x0     MANUAL_COL_SAMP_END
//                  Ending column for manual pixel statistic sampling in PIXMON
//                  This address can be equals but not less than MANUAL_COL_SAMP_START
//                  If MANUAL_COL_SAMP_START = MANUAL_COL_SAMP_END, a single column is sampled
//                  Col address starts from 0x0 (0 dec) and ends at 0x23 (35 dec)

`define PIX_SAT_RUN_THR_HS_WIDTH                              8
`define REGA_PIX_SAT_RUN_THR_HS                               13'h862
`define PIX_SAT_RUN_THR_HS_DEFAULT                            8'h4
`define PIX_SAT_RUN_THR_HS_CHECK                              8'h4
`define PIX_SAT_RUN_THR_HS                                    `PIX_SAT_RUN_THR_HS_WIDTH, `REGA_PIX_SAT_RUN_THR_HS, `PIX_SAT_RUN_THR_HS_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x4     PIX_SAT_RUN_THR_HS
//                  Number of saturated pixel threshold to decrement shutter during run mode for high squal surface.

`define PIX_SAT_REST_THR_HS_WIDTH                             8
`define REGA_PIX_SAT_REST_THR_HS                              13'h864
`define PIX_SAT_REST_THR_HS_DEFAULT                           8'h2
`define PIX_SAT_REST_THR_HS_CHECK                             8'h2
`define PIX_SAT_REST_THR_HS                                   `PIX_SAT_REST_THR_HS_WIDTH, `REGA_PIX_SAT_REST_THR_HS, `PIX_SAT_REST_THR_HS_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x2     PIX_SAT_REST_THR_HS
//                  Number of saturated pixel threshold to decrement shutter during rest mode for high squal surface.

`define PIX_AVG_SHUT_RUN_THR_WIDTH                            8
`define REGA_PIX_AVG_SHUT_RUN_THR                             13'h865
`define PIX_AVG_SHUT_RUN_THR_DEFAULT                          8'h51
`define PIX_AVG_SHUT_RUN_THR_CHECK                            8'h51
`define PIX_AVG_SHUT_RUN_THR                                  `PIX_AVG_SHUT_RUN_THR_WIDTH, `REGA_PIX_AVG_SHUT_RUN_THR, `PIX_AVG_SHUT_RUN_THR_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x51    PIX_AVG_SHUT_RUN_THR
//                  Number of average pixel threshold to decrement shutter during run mode for flat image.

`define PIX_AVG_SHUT_REST_THR_WIDTH                           8
`define REGA_PIX_AVG_SHUT_REST_THR                            13'h866
`define PIX_AVG_SHUT_REST_THR_DEFAULT                         8'h1e
`define PIX_AVG_SHUT_REST_THR_CHECK                           8'h1e
`define PIX_AVG_SHUT_REST_THR                                 `PIX_AVG_SHUT_REST_THR_WIDTH, `REGA_PIX_AVG_SHUT_REST_THR, `PIX_AVG_SHUT_REST_THR_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x1e    PIX_AVG_SHUT_REST_THR
//                  Number of average pixel threshold to decrement shutter during rest mode for flat image.

`define SHUT_CONTROL_WIDTH                                    8
`define REGA_SHUT_CONTROL                                     13'h86a
`define SHUT_CONTROL_DEFAULT                                  8'h92
`define SHUT_CONTROL_CHECK                                    8'h92
`define SHUT_CONTROL                                          `SHUT_CONTROL_WIDTH, `REGA_SHUT_CONTROL, `SHUT_CONTROL_DEFAULT
//  access       rw
//  atype        S
//    7  0x1     SET SHUTTER DECREMENT PRIORITY
//                  To allow shutter decrement with high pixel average value for flat image to have highest priority
//                  1: Disable shutter decrement priority during flat image with high average value
//                  0: Enable shutter decrement highest priority for high average flat image
//    6  0x0     SH_ADAPT_REST_DISABLE_ALL
//                  1: Enable partial non shutter adapt in rest algorithm combo logics
//                  0: Fully disable all non shutter adapt in rest shutter algorithm
//    5  0x0     NON_UGS2_ALGO_DISABLE_ALL
//                  1: Enable partial non ugs2 algorith combo logics
//                  0: Fully disable all non-ugs2 shutter algorithm
//    4  0x1     DIS_PAVG_MAX_SHUT_CTRL
//                  1: Disable pixel average gt 1/3FS from gating shutter decrement
//                  0: Enable pixel average gt 1/3FS to gate shutter decrement
//    3  0x0     SATURATED_PIXEL_DETECTION
//                  For fast shutter adaptation.  Used for halftone surfaces.
//                  1: Disable saturated pix detection for shutter aglo SHUT_VAL_SHIFT_REG[7:4]
//                  0: Enable saturated pix detection for shutter aglo SHUT_VAL_SHIFT_REG[7:4]
//    2  0x0     DIS_PIXMON_WAKEUP
//                  1: Disable pixmon wakeup
//                  0: Enable pixmon wakeup
//    1  0x1     DIS_PSAT_PACC_SHUT_CTRL
//                  1: Disable pixel average > 1/2FS from gating shutter decrement
//                  0: Enable pixel average > 1/2FS to gate shutter decrement
//    0  0x0     SHUT_ALGO_OPT
//                  1: Kal-EL Shutter Algo
//                  0: UGS2 Shutter Algo

`define PIX_AVG_RUN_THR_HS_WIDTH                              8
`define REGA_PIX_AVG_RUN_THR_HS                               13'h86b
`define PIX_AVG_RUN_THR_HS_DEFAULT                            8'h29
`define PIX_AVG_RUN_THR_HS_CHECK                              8'h29
`define PIX_AVG_RUN_THR_HS                                    `PIX_AVG_RUN_THR_HS_WIDTH, `REGA_PIX_AVG_RUN_THR_HS, `PIX_AVG_RUN_THR_HS_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x29    PIX_AVG_RUN_THR_HS_REG
//                  TBD

`define PIX_AVG_REST_THR_HS_WIDTH                             8
`define REGA_PIX_AVG_REST_THR_HS                              13'h86c
`define PIX_AVG_REST_THR_HS_DEFAULT                           8'hf
`define PIX_AVG_REST_THR_HS_CHECK                             8'hf
`define PIX_AVG_REST_THR_HS                                   `PIX_AVG_REST_THR_HS_WIDTH, `REGA_PIX_AVG_REST_THR_HS, `PIX_AVG_REST_THR_HS_DEFAULT
//  access       rw
//  atype        S
//  7:0  0xf     PIX_AVG_REST_THR_HS_REG
//                  TBD

`define PIX_MAX_THR1_HS_WIDTH                                 8
`define REGA_PIX_MAX_THR1_HS                                  13'h86d
`define PIX_MAX_THR1_HS_DEFAULT                               8'h60
`define PIX_MAX_THR1_HS_CHECK                                 8'h60
`define PIX_MAX_THR1_HS                                       `PIX_MAX_THR1_HS_WIDTH, `REGA_PIX_MAX_THR1_HS, `PIX_MAX_THR1_HS_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x60    PIX_MAX_THR1_HS_REG
//                  TBD

`define PIX_MAX_THR2_HS_WIDTH                                 8
`define REGA_PIX_MAX_THR2_HS                                  13'h86e
`define PIX_MAX_THR2_HS_DEFAULT                               8'h70
`define PIX_MAX_THR2_HS_CHECK                                 8'h70
`define PIX_MAX_THR2_HS                                       `PIX_MAX_THR2_HS_WIDTH, `REGA_PIX_MAX_THR2_HS, `PIX_MAX_THR2_HS_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x70    PIX_MAX_THR2_HS_REG
//                  TBD

`define SHUTTER_MANUAL_HI_WIDTH                               8
`define REGA_SHUTTER_MANUAL_HI                                13'h86f
`define SHUTTER_MANUAL_HI_DEFAULT                             8'h0
`define SHUTTER_MANUAL_HI_CHECK                               8'h0
`define SHUTTER_MANUAL_HI                                     `SHUTTER_MANUAL_HI_WIDTH, `REGA_SHUTTER_MANUAL_HI, `SHUTTER_MANUAL_HI_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     SHUTTER_MANUAL_EN
//                  1= enable manual shutter mode
//  6:5  0x0     RESERVED
//                  Reserved
//  4:0  0x0     SHUTTER_MANUAL_HI
//                  Upper 5 bits of manual shutter value.  Write SHUTTER_MANUAL_LO first followed by this register.

`define SHUTTER_MANUAL_LO_WIDTH                               8
`define REGA_SHUTTER_MANUAL_LO                                13'h870
`define SHUTTER_MANUAL_LO_DEFAULT                             8'hff
`define SHUTTER_MANUAL_LO_CHECK                               8'hff
`define SHUTTER_MANUAL_LO                                     `SHUTTER_MANUAL_LO_WIDTH, `REGA_SHUTTER_MANUAL_LO, `SHUTTER_MANUAL_LO_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xff    SHUTTER_MANUAL_LO
//                  Lower 8 bits of manual shutter value.  Write this register first followed by SHUTTER_MANUAL_HI register.

`define PIX_MAX_ACC_DIFF_TH_WIDTH                             8
`define REGA_PIX_MAX_ACC_DIFF_TH                              13'h871
`define PIX_MAX_ACC_DIFF_TH_DEFAULT                           8'h32
`define PIX_MAX_ACC_DIFF_TH_CHECK                             8'h32
`define PIX_MAX_ACC_DIFF_TH                                   `PIX_MAX_ACC_DIFF_TH_WIDTH, `REGA_PIX_MAX_ACC_DIFF_TH, `PIX_MAX_ACC_DIFF_TH_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x32    PIX_MAX_ACC_DIFF_TH
//                  PIX_MAX_ACC_DIFF Threshold.

`define PIX_SAT_THRESH_WIDTH                                  8
`define REGA_PIX_SAT_THRESH                                   13'h878
`define PIX_SAT_THRESH_DEFAULT                                8'h7f
`define PIX_SAT_THRESH_CHECK                                  8'h7f
`define PIX_SAT_THRESH                                        `PIX_SAT_THRESH_WIDTH, `REGA_PIX_SAT_THRESH, `PIX_SAT_THRESH_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     RESERVED
//                  Reserved
//  6:0  0x7f    PIX_SAT_THRESH
//                  ADC pixel saturation threshold

`define PMAX_WAKEUP_THRESH_HS_WIDTH                           8
`define REGA_PMAX_WAKEUP_THRESH_HS                            13'h87e
`define PMAX_WAKEUP_THRESH_HS_DEFAULT                         8'h23
`define PMAX_WAKEUP_THRESH_HS_CHECK                           8'h23
`define PMAX_WAKEUP_THRESH_HS                                 `PMAX_WAKEUP_THRESH_HS_WIDTH, `REGA_PMAX_WAKEUP_THRESH_HS, `PMAX_WAKEUP_THRESH_HS_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x23    PMAX_WAKEUP_THRESH_HS
//                  Pixel maximum threshold for PIXMON wakeup during high squal surface mode
//                  PIXMON wakeup is set if pixel maximum < PMAX_WAKEUP_THRESH_HS*4 and shutter not maximum
//                  By default, PIXMON wakeup is set if pixel maximum < 32*4 or 128 and shutter not maximum


`define P9_PROD_ID_WIDTH                                      0
`define REGA_P9_PROD_ID                                       13'h900
`define P9_PROD_ID                                            `P9_PROD_ID_WIDTH, `REGA_P9_PROD_ID, `P9_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P9_REV_ID_WIDTH                                       0
`define REGA_P9_REV_ID                                        13'h901
`define P9_REV_ID                                             `P9_REV_ID_WIDTH, `REGA_P9_REV_ID, `P9_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P9_MOTION_WIDTH                                       0
`define REGA_P9_MOTION                                        13'h902
`define P9_MOTION                                             `P9_MOTION_WIDTH, `REGA_P9_MOTION, `P9_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P9_DELTA_X_LO_WIDTH                                   0
`define REGA_P9_DELTA_X_LO                                    13'h903
`define P9_DELTA_X_LO                                         `P9_DELTA_X_LO_WIDTH, `REGA_P9_DELTA_X_LO, `P9_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P9_DELTA_X_HI_WIDTH                                   0
`define REGA_P9_DELTA_X_HI                                    13'h904
`define P9_DELTA_X_HI                                         `P9_DELTA_X_HI_WIDTH, `REGA_P9_DELTA_X_HI, `P9_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P9_DELTA_Y_LO_WIDTH                                   0
`define REGA_P9_DELTA_Y_LO                                    13'h905
`define P9_DELTA_Y_LO                                         `P9_DELTA_Y_LO_WIDTH, `REGA_P9_DELTA_Y_LO, `P9_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P9_DELTA_Y_HI_WIDTH                                   0
`define REGA_P9_DELTA_Y_HI                                    13'h906
`define P9_DELTA_Y_HI                                         `P9_DELTA_Y_HI_WIDTH, `REGA_P9_DELTA_Y_HI, `P9_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P9_SQUAL_WIDTH                                        0
`define REGA_P9_SQUAL                                         13'h907
`define P9_SQUAL                                              `P9_SQUAL_WIDTH, `REGA_P9_SQUAL, `P9_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P9_PIX_ACCUM_WIDTH                                    0
`define REGA_P9_PIX_ACCUM                                     13'h908
`define P9_PIX_ACCUM                                          `P9_PIX_ACCUM_WIDTH, `REGA_P9_PIX_ACCUM, `P9_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P9_PIX_MAX_WIDTH                                      0
`define REGA_P9_PIX_MAX                                       13'h909
`define P9_PIX_MAX                                            `P9_PIX_MAX_WIDTH, `REGA_P9_PIX_MAX, `P9_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P9_PIX_MIN_WIDTH                                      0
`define REGA_P9_PIX_MIN                                       13'h90a
`define P9_PIX_MIN                                            `P9_PIX_MIN_WIDTH, `REGA_P9_PIX_MIN, `P9_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P9_SHUT_LO_WIDTH                                      0
`define REGA_P9_SHUT_LO                                       13'h90b
`define P9_SHUT_LO                                            `P9_SHUT_LO_WIDTH, `REGA_P9_SHUT_LO, `P9_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P9_SHUT_HI_WIDTH                                      0
`define REGA_P9_SHUT_HI                                       13'h90c
`define P9_SHUT_HI                                            `P9_SHUT_HI_WIDTH, `REGA_P9_SHUT_HI, `P9_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P9_EXT_WAKEUP_WIDTH                                   0
`define REGA_P9_EXT_WAKEUP                                    13'h90d
`define P9_EXT_WAKEUP                                         `P9_EXT_WAKEUP_WIDTH, `REGA_P9_EXT_WAKEUP, `P9_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P9_RESERVED_E_WIDTH                                   0
`define REGA_P9_RESERVED_E                                    13'h90e
`define P9_RESERVED_E                                         `P9_RESERVED_E_WIDTH, `REGA_P9_RESERVED_E, `P9_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P9_SKIP_FRAMES_CNT_LO_WIDTH                           0
`define REGA_P9_SKIP_FRAMES_CNT_LO                            13'h90f
`define P9_SKIP_FRAMES_CNT_LO                                 `P9_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P9_SKIP_FRAMES_CNT_LO, `P9_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P9_SKIP_FRAMES_CNT_HI_WIDTH                           0
`define REGA_P9_SKIP_FRAMES_CNT_HI                            13'h910
`define P9_SKIP_FRAMES_CNT_HI                                 `P9_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P9_SKIP_FRAMES_CNT_HI, `P9_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P9_CVFR_PERIOD_LO_WIDTH                               0
`define REGA_P9_CVFR_PERIOD_LO                                13'h911
`define P9_CVFR_PERIOD_LO                                     `P9_CVFR_PERIOD_LO_WIDTH, `REGA_P9_CVFR_PERIOD_LO, `P9_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P9_CVFR_PERIOD_HI_WIDTH                               0
`define REGA_P9_CVFR_PERIOD_HI                                13'h912
`define P9_CVFR_PERIOD_HI                                     `P9_CVFR_PERIOD_HI_WIDTH, `REGA_P9_CVFR_PERIOD_HI, `P9_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P9_OBSERVATION_WIDTH                                  0
`define REGA_P9_OBSERVATION                                   13'h915
`define P9_OBSERVATION                                        `P9_OBSERVATION_WIDTH, `REGA_P9_OBSERVATION, `P9_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P9_BURST_MOTION_WIDTH                                 0
`define REGA_P9_BURST_MOTION                                  13'h916
`define P9_BURST_MOTION                                       `P9_BURST_MOTION_WIDTH, `REGA_P9_BURST_MOTION, `P9_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P9_SQUAL2_WIDTH                                       0
`define REGA_P9_SQUAL2                                        13'h917
`define P9_SQUAL2                                             `P9_SQUAL2_WIDTH, `REGA_P9_SQUAL2, `P9_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P9_SPI_MODE_WIDTH                                     0
`define REGA_P9_SPI_MODE                                      13'h918
`define P9_SPI_MODE                                           `P9_SPI_MODE_WIDTH, `REGA_P9_SPI_MODE, `P9_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P9_OSC_TUNE_INSTR_WIDTH                               0
`define REGA_P9_OSC_TUNE_INSTR                                13'h922
`define P9_OSC_TUNE_INSTR                                     `P9_OSC_TUNE_INSTR_WIDTH, `REGA_P9_OSC_TUNE_INSTR, `P9_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P9_OSC_TUNE_INSTR_SLOW_WIDTH                          0
`define REGA_P9_OSC_TUNE_INSTR_SLOW                           13'h923
`define P9_OSC_TUNE_INSTR_SLOW                                `P9_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P9_OSC_TUNE_INSTR_SLOW, `P9_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P9_PRBS_MODE_WIDTH                                    0
`define REGA_P9_PRBS_MODE                                     13'h930
`define P9_PRBS_MODE                                          `P9_PRBS_MODE_WIDTH, `REGA_P9_PRBS_MODE, `P9_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P9_POWERDOWN_WIDTH                                    0
`define REGA_P9_POWERDOWN                                     13'h932
`define P9_POWERDOWN                                          `P9_POWERDOWN_WIDTH, `REGA_P9_POWERDOWN, `P9_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P9_CRC0_WIDTH                                         0
`define REGA_P9_CRC0                                          13'h933
`define P9_CRC0                                               `P9_CRC0_WIDTH, `REGA_P9_CRC0, `P9_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P9_CRC1_WIDTH                                         0
`define REGA_P9_CRC1                                          13'h934
`define P9_CRC1                                               `P9_CRC1_WIDTH, `REGA_P9_CRC1, `P9_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P9_CRC2_WIDTH                                         0
`define REGA_P9_CRC2                                          13'h935
`define P9_CRC2                                               `P9_CRC2_WIDTH, `REGA_P9_CRC2, `P9_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P9_CRC3_WIDTH                                         0
`define REGA_P9_CRC3                                          13'h936
`define P9_CRC3                                               `P9_CRC3_WIDTH, `REGA_P9_CRC3, `P9_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P9_IOSTATUS_WIDTH                                     0
`define REGA_P9_IOSTATUS                                      13'h937
`define P9_IOSTATUS                                           `P9_IOSTATUS_WIDTH, `REGA_P9_IOSTATUS, `P9_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P9_TAP_KEY_WO_WIDTH                                   0
`define REGA_P9_TAP_KEY_WO                                    13'h938
`define P9_TAP_KEY_WO                                         `P9_TAP_KEY_WO_WIDTH, `REGA_P9_TAP_KEY_WO, `P9_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P9_TAP_KEY_WIDTH                                      0
`define REGA_P9_TAP_KEY                                       13'h939
`define P9_TAP_KEY                                            `P9_TAP_KEY_WIDTH, `REGA_P9_TAP_KEY, `P9_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P9_POWER_UP_RESET_WIDTH                               0
`define REGA_P9_POWER_UP_RESET                                13'h93a
`define P9_POWER_UP_RESET                                     `P9_POWER_UP_RESET_WIDTH, `REGA_P9_POWER_UP_RESET, `P9_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P9_SHUTDOWN_WIDTH                                     0
`define REGA_P9_SHUTDOWN                                      13'h93b
`define P9_SHUTDOWN                                           `P9_SHUTDOWN_WIDTH, `REGA_P9_SHUTDOWN, `P9_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P9_SCAN_MODE_WIDTH                                    0
`define REGA_P9_SCAN_MODE                                     13'h93c
`define P9_SCAN_MODE                                          `P9_SCAN_MODE_WIDTH, `REGA_P9_SCAN_MODE, `P9_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P9_SPI_PAGE_WIDTH                                     0
`define REGA_P9_SPI_PAGE                                      13'h97f
`define P9_SPI_PAGE                                           `P9_SPI_PAGE_WIDTH, `REGA_P9_SPI_PAGE, `P9_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define PAF_SHIFT_WIDTH                                       8
`define REGA_PAF_SHIFT                                        13'h940
`define PAF_SHIFT_DEFAULT                                     8'h1
`define PAF_SHIFT_CHECK                                       8'h1
`define PAF_SHIFT                                             `PAF_SHIFT_WIDTH, `REGA_PAF_SHIFT, `PAF_SHIFT_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x0     PAF_SQ_RSHIFT
//                  SQUAL right-shift number.
//                  Range: 0 to 12.
//                  0x0: Left shift by 1 time
//                  0x1: No shift
//                  0x2: Right shift by 1 time
//                  0x3: Right shift by 2 times
//                  0x4: Right shift by 3 times
//                  0x5: Right shift by 4 times
//                  0x6: Right shift by 5 times
//                  0x7: Right shift by 6 times
//  3:0  0x1     PAF_OUT_RSHIFT
//                  PAF filter DCR out right-shift number.
//                  Range: 0 to 7.
//                  0x0: Left shift by 1 time
//                  0x1: No shift
//                  0x2: Right shift by 1 time
//                  0x3: Right shift by 2 times
//                  0x4: Right shift by 3 times
//                  0x5: Right shift by 4 times
//                  0x6: Right shift by 5 times
//                  0x7: Right shift by 6 times

`define FF_SHIFT_WIDTH                                        8
`define REGA_FF_SHIFT                                         13'h941
`define FF_SHIFT_DEFAULT                                      8'h1
`define FF_SHIFT_CHECK                                        8'h1
`define FF_SHIFT                                              `FF_SHIFT_WIDTH, `REGA_FF_SHIFT, `FF_SHIFT_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x0     FF_SQ_RSHIFT
//                  SQUAL right-shift number.
//                  Range: 0 to 12.
//                  0x0: No shift
//                  0x1: Right shift by 1 time
//                  0x2: Right shift by 2 times
//                  0x3: Right shift by 3 times
//                  0x4: Right shift by 4 times
//                  0x5: Right shift by 5 times
//                  0x6: Right shift by 6 times
//                  0x7: Right shift by 7 times
//  3:0  0x1     FF_OUT_SHIFT
//                  PAF filter DCR out right-shift number.
//                  Range: 0 to 7.
//                  0x0: No shift
//                  0x1: Right shift by 1 time
//                  0x2: Right shift by 2 times
//                  0x3: Right shift by 3 times
//                  0x4: Right shift by 4 times
//                  0x5: Right shift by 5 times
//                  0x6: Right shift by 6 times
//                  0x7: Right shift by 7 times

`define LOW_SUR_SQ_FRAME_TH_WIDTH                             8
`define REGA_LOW_SUR_SQ_FRAME_TH                              13'h942
`define LOW_SUR_SQ_FRAME_TH_DEFAULT                           8'h1c
`define LOW_SUR_SQ_FRAME_TH_CHECK                             8'h1c
`define LOW_SUR_SQ_FRAME_TH                                   `LOW_SUR_SQ_FRAME_TH_WIDTH, `REGA_LOW_SUR_SQ_FRAME_TH, `LOW_SUR_SQ_FRAME_TH_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x1c    LOW_SUR_SQ_FRAME_TH
//                  Low surface squal frame threshold, sensor would not wakeup if surface squal less than LOW_SUR_SQ_FRAME_TH.

`define PAF_SQ2_SHIFT_WIDTH                                   8
`define REGA_PAF_SQ2_SHIFT                                    13'h943
`define PAF_SQ2_SHIFT_DEFAULT                                 8'h10
`define PAF_SQ2_SHIFT_CHECK                                   8'h10
`define PAF_SQ2_SHIFT                                         `PAF_SQ2_SHIFT_WIDTH, `REGA_PAF_SQ2_SHIFT, `PAF_SQ2_SHIFT_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x1     PAF_SQ2_RSHIFT
//                  SQUAL2 right-shift number.
//                  Range: 0 to 12.
//                  0x0: Left shift by 1 time
//                  0x1: No shift
//                  0x2: Right shift by 1 time
//                  0x3: Right shift by 2 times
//                  0x4: Right shift by 3 times
//                  0x5: Right shift by 4 times
//                  0x6: Right shift by 5 times
//                  0x7: Right shift by 6 times
//  3:0  0x0     SPARE
//                  Spare bits

`define DCR_CTRL1_WIDTH                                       8
`define REGA_DCR_CTRL1                                        13'h944
`define DCR_CTRL1_DEFAULT                                     8'h88
`define DCR_CTRL1_CHECK                                       8'h88
`define DCR_CTRL1                                             `DCR_CTRL1_WIDTH, `REGA_DCR_CTRL1, `DCR_CTRL1_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     DFLAT_COMP_OPT
//                  1: Dflat abs compared against abs of signed(Dmax) - signed(Dmin)
//                  0: Dflat abs compared against abs(Dmax) - abs(Dmin)
//  6:0  0x8     DCR_CTRL1
//                  DLFAT_BIAS value used when HI_SPEED_DCR flag is asserted

`define DCR_CTRL2_WIDTH                                       8
`define REGA_DCR_CTRL2                                        13'h945
`define DCR_CTRL2_DEFAULT                                     8'h0
`define DCR_CTRL2_CHECK                                       8'h0
`define DCR_CTRL2                                             `DCR_CTRL2_WIDTH, `REGA_DCR_CTRL2, `DCR_CTRL2_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x0     HS_FF_OUT_RSHIFT
//                  Highspeed FF filter DCR out right-shift number.
//                  Range: 0 to 7.
//                  0x0: Left shift by 1 time
//                  0x1: No shift
//                  0x2: Right shift by 1 time
//                  0x3: Right shift by 2 times
//                  0x4: Right shift by 3 times
//                  0x5: Right shift by 4 times
//                  0x6: Right shift by 5 times
//                  0x7: Right shift by 6 times
//  3:0  0x0     HS_PAF_OUT_RSHIFT
//                  Highspeed PAF filter DCR out right-shift number.
//                  Range: 0 to 7.
//                  0x0: Left shift by 1 time
//                  0x1: No shift
//                  0x2: Right shift by 1 time
//                  0x3: Right shift by 2 times
//                  0x4: Right shift by 3 times
//                  0x5: Right shift by 4 times
//                  0x6: Right shift by 5 times
//                  0x7: Right shift by 6 times

`define DFLAT_BIAS_WIDTH                                      8
`define REGA_DFLAT_BIAS                                       13'h947
`define DFLAT_BIAS_DEFAULT                                    8'h0
`define DFLAT_BIAS_CHECK                                      8'h0
`define DFLAT_BIAS                                            `DFLAT_BIAS_WIDTH, `REGA_DFLAT_BIAS, `DFLAT_BIAS_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     DFLAT_BIAS Disable
//                  1= disable Dflat
//  6:0  0x0     DFLAT_BIAS
//                  Larger bias will skew PAF to use Dflat instead of Ddir.

`define DCR_CONFIG4_WIDTH                                     8
`define REGA_DCR_CONFIG4                                      13'h94f
`define DCR_CONFIG4_DEFAULT                                   8'hc
`define DCR_CONFIG4_CHECK                                     8'hc
`define DCR_CONFIG4                                           `DCR_CONFIG4_WIDTH, `REGA_DCR_CONFIG4, `DCR_CONFIG4_DEFAULT
//  access       rw
//  atype        S
//  7:4  0x0     SPARE
//                  Spare bits
//    3  0x1     DCR_FF_BLUR_TRK_EN
//                  1: Enable
//                  0: Disable
//    2  0x1     DCR_PAF_BLUR_TRK_EN
//                  1: Enable
//                  0: Disable
//  1:0  0x0     SPARE
//                  Spare bits

`define SQUAL_THRESH_PAF_WIDTH                                8
`define REGA_SQUAL_THRESH_PAF                                 13'h951
`define SQUAL_THRESH_PAF_DEFAULT                              8'h5
`define SQUAL_THRESH_PAF_CHECK                                8'h5
`define SQUAL_THRESH_PAF                                      `SQUAL_THRESH_PAF_WIDTH, `REGA_SQUAL_THRESH_PAF, `SQUAL_THRESH_PAF_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x5     SQUAL_THRESH_PAF
//                  PAF squal threshold

`define SQUAL_THRESH_FF_WIDTH                                 8
`define REGA_SQUAL_THRESH_FF                                  13'h952
`define SQUAL_THRESH_FF_DEFAULT                               8'h5
`define SQUAL_THRESH_FF_CHECK                                 8'h5
`define SQUAL_THRESH_FF                                       `SQUAL_THRESH_FF_WIDTH, `REGA_SQUAL_THRESH_FF, `SQUAL_THRESH_FF_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x5     SQUAL_THRESH_FF
//                  FF squal threshold

`define MIN_SQUAL_RUN_PAF_WIDTH                               8
`define REGA_MIN_SQUAL_RUN_PAF                                13'h953
`define MIN_SQUAL_RUN_PAF_DEFAULT                             8'h25
`define MIN_SQUAL_RUN_PAF_CHECK                               8'h25
`define MIN_SQUAL_RUN_PAF                                     `MIN_SQUAL_RUN_PAF_WIDTH, `REGA_MIN_SQUAL_RUN_PAF, `MIN_SQUAL_RUN_PAF_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x25    MIN_SQUAL_RUN_PAF
//                  PAF MSR threshold

`define MIN_SQUAL_RUN_FF_WIDTH                                8
`define REGA_MIN_SQUAL_RUN_FF                                 13'h954
`define MIN_SQUAL_RUN_FF_DEFAULT                              8'h25
`define MIN_SQUAL_RUN_FF_CHECK                                8'h25
`define MIN_SQUAL_RUN_FF                                      `MIN_SQUAL_RUN_FF_WIDTH, `REGA_MIN_SQUAL_RUN_FF, `MIN_SQUAL_RUN_FF_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x25    MIN_SQUAL_RUN_FF
//                  FF MSR threshold

`define MIN_SQUAL_RUN_BIGSHUT_PAF_WIDTH                       8
`define REGA_MIN_SQUAL_RUN_BIGSHUT_PAF                        13'h955
`define MIN_SQUAL_RUN_BIGSHUT_PAF_DEFAULT                     8'h3f
`define MIN_SQUAL_RUN_BIGSHUT_PAF_CHECK                       8'h3f
`define MIN_SQUAL_RUN_BIGSHUT_PAF                             `MIN_SQUAL_RUN_BIGSHUT_PAF_WIDTH, `REGA_MIN_SQUAL_RUN_BIGSHUT_PAF, `MIN_SQUAL_RUN_BIGSHUT_PAF_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x3f    MIN_SQUAL_RUN_BIGSHUT_PAF
//                  PAF big-shut MSR threshold

`define MIN_SQUAL_RUN_BIGSHUT_FF_WIDTH                        8
`define REGA_MIN_SQUAL_RUN_BIGSHUT_FF                         13'h956
`define MIN_SQUAL_RUN_BIGSHUT_FF_DEFAULT                      8'h3f
`define MIN_SQUAL_RUN_BIGSHUT_FF_CHECK                        8'h3f
`define MIN_SQUAL_RUN_BIGSHUT_FF                              `MIN_SQUAL_RUN_BIGSHUT_FF_WIDTH, `REGA_MIN_SQUAL_RUN_BIGSHUT_FF, `MIN_SQUAL_RUN_BIGSHUT_FF_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x3f    MIN_SQUAL_RUN_BIGSHUT_FF
//                  FF big-shut MSR threshod

`define MIN_SQUAL_REST_PAF_WIDTH                              8
`define REGA_MIN_SQUAL_REST_PAF                               13'h957
`define MIN_SQUAL_REST_PAF_DEFAULT                            8'hf
`define MIN_SQUAL_REST_PAF_CHECK                              8'hf
`define MIN_SQUAL_REST_PAF                                    `MIN_SQUAL_REST_PAF_WIDTH, `REGA_MIN_SQUAL_REST_PAF, `MIN_SQUAL_REST_PAF_DEFAULT
//  access       rw
//  atype        S
//  7:0  0xf     MIN_SQUAL_REST_PAF
//                  PAF MSR rest threshold

`define MIN_SQUAL_REST_FF_WIDTH                               8
`define REGA_MIN_SQUAL_REST_FF                                13'h958
`define MIN_SQUAL_REST_FF_DEFAULT                             8'hf
`define MIN_SQUAL_REST_FF_CHECK                               8'hf
`define MIN_SQUAL_REST_FF                                     `MIN_SQUAL_REST_FF_WIDTH, `REGA_MIN_SQUAL_REST_FF, `MIN_SQUAL_REST_FF_DEFAULT
//  access       rw
//  atype        S
//  7:0  0xf     MIN_SQUAL_REST_FF
//                  FF MSR rest threshold

`define MIN_SQUAL_REST_BIGSHUT_PAF_WIDTH                      8
`define REGA_MIN_SQUAL_REST_BIGSHUT_PAF                       13'h959
`define MIN_SQUAL_REST_BIGSHUT_PAF_DEFAULT                    8'hf
`define MIN_SQUAL_REST_BIGSHUT_PAF_CHECK                      8'hf
`define MIN_SQUAL_REST_BIGSHUT_PAF                            `MIN_SQUAL_REST_BIGSHUT_PAF_WIDTH, `REGA_MIN_SQUAL_REST_BIGSHUT_PAF, `MIN_SQUAL_REST_BIGSHUT_PAF_DEFAULT
//  access       rw
//  atype        S
//  7:0  0xf     MIN_SQUAL_REST_BIGSHUT_PAF
//                  PAF big-shut MSR rest threshold

`define MIN_SQUAL_REST_BIGSHUT_FF_WIDTH                       8
`define REGA_MIN_SQUAL_REST_BIGSHUT_FF                        13'h95a
`define MIN_SQUAL_REST_BIGSHUT_FF_DEFAULT                     8'hf
`define MIN_SQUAL_REST_BIGSHUT_FF_CHECK                       8'hf
`define MIN_SQUAL_REST_BIGSHUT_FF                             `MIN_SQUAL_REST_BIGSHUT_FF_WIDTH, `REGA_MIN_SQUAL_REST_BIGSHUT_FF, `MIN_SQUAL_REST_BIGSHUT_FF_DEFAULT
//  access       rw
//  atype        S
//  7:0  0xf     MIN_SQUAL_REST_BIGSHUT_FF
//                  FF big-shut MSR rest threshold

`define PAF_SQUAL_CNT_WIDTH                                   8
`define REGA_PAF_SQUAL_CNT                                    13'h95f
`define PAF_SQUAL_CNT_DEFAULT                                 8'h0
`define PAF_SQUAL_CNT_CHECK                                   8'h0
`define PAF_SQUAL_CNT                                         `PAF_SQUAL_CNT_WIDTH, `REGA_PAF_SQUAL_CNT, `PAF_SQUAL_CNT_DEFAULT
//  access       ro
//  atype        S
//  7:0  0x0     PAF_SQUAL
//                  PAF filter Surface quality

`define FF_COEFF_K_WIDTH                                      8
`define REGA_FF_COEFF_K                                       13'h960
`define FF_COEFF_K_DEFAULT                                    8'h1f
`define FF_COEFF_K_CHECK                                      8'h1f
`define FF_COEFF_K                                            `FF_COEFF_K_WIDTH, `REGA_FF_COEFF_K, `FF_COEFF_K_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1f    FF_COEFF_K
//                  Fixed Filter Coefficient K

`define FF_COEFF_L_WIDTH                                      8
`define REGA_FF_COEFF_L                                       13'h961
`define FF_COEFF_L_DEFAULT                                    8'h1f
`define FF_COEFF_L_CHECK                                      8'h1f
`define FF_COEFF_L                                            `FF_COEFF_L_WIDTH, `REGA_FF_COEFF_L, `FF_COEFF_L_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1f    FF_COEFF_L
//                  Fixed Filter Coefficient L

`define FF_COEFF_M_WIDTH                                      8
`define REGA_FF_COEFF_M                                       13'h962
`define FF_COEFF_M_DEFAULT                                    8'h1
`define FF_COEFF_M_CHECK                                      8'h1
`define FF_COEFF_M                                            `FF_COEFF_M_WIDTH, `REGA_FF_COEFF_M, `FF_COEFF_M_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1     FF_COEFF_M
//                  Fixed Filter Coefficient M

`define FF_COEFF_N_WIDTH                                      8
`define REGA_FF_COEFF_N                                       13'h963
`define FF_COEFF_N_DEFAULT                                    8'h1
`define FF_COEFF_N_CHECK                                      8'h1
`define FF_COEFF_N                                            `FF_COEFF_N_WIDTH, `REGA_FF_COEFF_N, `FF_COEFF_N_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1     FF_COEFF_N
//                  Fixed Filter Coefficient N

`define FF_COEFF_O_WIDTH                                      8
`define REGA_FF_COEFF_O                                       13'h964
`define FF_COEFF_O_DEFAULT                                    8'h1f
`define FF_COEFF_O_CHECK                                      8'h1f
`define FF_COEFF_O                                            `FF_COEFF_O_WIDTH, `REGA_FF_COEFF_O, `FF_COEFF_O_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1f    FF_COEFF_O
//                  Fixed Filter Coefficient O

`define FF_COEFF_P_WIDTH                                      8
`define REGA_FF_COEFF_P                                       13'h965
`define FF_COEFF_P_DEFAULT                                    8'h1f
`define FF_COEFF_P_CHECK                                      8'h1f
`define FF_COEFF_P                                            `FF_COEFF_P_WIDTH, `REGA_FF_COEFF_P, `FF_COEFF_P_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1f    FF_COEFF_P
//                  Fixed Filter Coefficient P

`define FF_COEFF_Q_WIDTH                                      8
`define REGA_FF_COEFF_Q                                       13'h966
`define FF_COEFF_Q_DEFAULT                                    8'h1
`define FF_COEFF_Q_CHECK                                      8'h1
`define FF_COEFF_Q                                            `FF_COEFF_Q_WIDTH, `REGA_FF_COEFF_Q, `FF_COEFF_Q_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1     FF_COEFF_Q
//                  Fixed Filter Coefficient Q

`define FF_COEFF_R_WIDTH                                      8
`define REGA_FF_COEFF_R                                       13'h967
`define FF_COEFF_R_DEFAULT                                    8'h1
`define FF_COEFF_R_CHECK                                      8'h1
`define FF_COEFF_R                                            `FF_COEFF_R_WIDTH, `REGA_FF_COEFF_R, `FF_COEFF_R_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1     FF_COEFF_R
//                  Fixed Filter Coefficient R

`define FF_COEFF_S_WIDTH                                      8
`define REGA_FF_COEFF_S                                       13'h968
`define FF_COEFF_S_DEFAULT                                    8'h1
`define FF_COEFF_S_CHECK                                      8'h1
`define FF_COEFF_S                                            `FF_COEFF_S_WIDTH, `REGA_FF_COEFF_S, `FF_COEFF_S_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1     FF_COEFF_S
//                  Fixed Filter Coefficient S

`define FF_COEFF_T_WIDTH                                      8
`define REGA_FF_COEFF_T                                       13'h969
`define FF_COEFF_T_DEFAULT                                    8'h1
`define FF_COEFF_T_CHECK                                      8'h1
`define FF_COEFF_T                                            `FF_COEFF_T_WIDTH, `REGA_FF_COEFF_T, `FF_COEFF_T_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1     FF_COEFF_T
//                  Fixed Filter Coefficient T

`define FF_COEFF_U_WIDTH                                      8
`define REGA_FF_COEFF_U                                       13'h96a
`define FF_COEFF_U_DEFAULT                                    8'h1f
`define FF_COEFF_U_CHECK                                      8'h1f
`define FF_COEFF_U                                            `FF_COEFF_U_WIDTH, `REGA_FF_COEFF_U, `FF_COEFF_U_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1f    FF_COEFF_U
//                  Fixed Filter Coefficient U

`define FF_COEFF_V_WIDTH                                      8
`define REGA_FF_COEFF_V                                       13'h96b
`define FF_COEFF_V_DEFAULT                                    8'h1f
`define FF_COEFF_V_CHECK                                      8'h1f
`define FF_COEFF_V                                            `FF_COEFF_V_WIDTH, `REGA_FF_COEFF_V, `FF_COEFF_V_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1f    FF_COEFF_V
//                  Fixed Filter Coefficient V

`define FF_COEFF_W_WIDTH                                      8
`define REGA_FF_COEFF_W                                       13'h96c
`define FF_COEFF_W_DEFAULT                                    8'h1
`define FF_COEFF_W_CHECK                                      8'h1
`define FF_COEFF_W                                            `FF_COEFF_W_WIDTH, `REGA_FF_COEFF_W, `FF_COEFF_W_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1     FF_COEFF_W
//                  Fixed Filter Coefficient W

`define FF_COEFF_X_WIDTH                                      8
`define REGA_FF_COEFF_X                                       13'h96d
`define FF_COEFF_X_DEFAULT                                    8'h1
`define FF_COEFF_X_CHECK                                      8'h1
`define FF_COEFF_X                                            `FF_COEFF_X_WIDTH, `REGA_FF_COEFF_X, `FF_COEFF_X_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1     FF_COEFF_X
//                  Fixed Filter Coefficient X

`define FF_COEFF_Y_WIDTH                                      8
`define REGA_FF_COEFF_Y                                       13'h96e
`define FF_COEFF_Y_DEFAULT                                    8'h1f
`define FF_COEFF_Y_CHECK                                      8'h1f
`define FF_COEFF_Y                                            `FF_COEFF_Y_WIDTH, `REGA_FF_COEFF_Y, `FF_COEFF_Y_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1f    FF_COEFF_Y
//                  Fixed Filter Coefficient Y

`define FF_COEFF_Z_WIDTH                                      8
`define REGA_FF_COEFF_Z                                       13'h96f
`define FF_COEFF_Z_DEFAULT                                    8'h1f
`define FF_COEFF_Z_CHECK                                      8'h1f
`define FF_COEFF_Z                                            `FF_COEFF_Z_WIDTH, `REGA_FF_COEFF_Z, `FF_COEFF_Z_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x1f    FF_COEFF_Z
//                  Fixed Filter Coefficient Z

`define VFR_MODE_TH_WIDTH                                     8
`define REGA_VFR_MODE_TH                                      13'h970
`define VFR_MODE_TH_DEFAULT                                   8'h2
`define VFR_MODE_TH_CHECK                                     8'h2
`define VFR_MODE_TH                                           `VFR_MODE_TH_WIDTH, `REGA_VFR_MODE_TH, `VFR_MODE_TH_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x0     RESERVED
//                  Reserved
//  3:0  0x2     VFR_MODE_TH
//                  VFR mode threshold for SFT, if SKIP_FRAMES value smaller than VFR_MODE_TH will disable SFT.

`define SQ2_THR_1P5MM_WIDTH                                   8
`define REGA_SQ2_THR_1P5MM                                    13'h971
`define SQ2_THR_1P5MM_DEFAULT                                 8'ha
`define SQ2_THR_1P5MM_CHECK                                   8'ha
`define SQ2_THR_1P5MM                                         `SQ2_THR_1P5MM_WIDTH, `REGA_SQ2_THR_1P5MM, `SQ2_THR_1P5MM_DEFAULT
//  access       rw
//  atype        S
//  7:0  0xa     SQ2_THR_1P5MM
//                  Squal 2 Threshold 1.5mm lift setting

`define SQ2_THR_2MM_WIDTH                                     8
`define REGA_SQ2_THR_2MM                                      13'h972
`define SQ2_THR_2MM_DEFAULT                                   8'ha
`define SQ2_THR_2MM_CHECK                                     8'ha
`define SQ2_THR_2MM                                           `SQ2_THR_2MM_WIDTH, `REGA_SQ2_THR_2MM, `SQ2_THR_2MM_DEFAULT
//  access       rw
//  atype        S
//  7:0  0xa     SQ2_THR_2MM
//                  Squal 2 Threshold 2mm lift setting

`define SQ2_THR_3MM_WIDTH                                     8
`define REGA_SQ2_THR_3MM                                      13'h973
`define SQ2_THR_3MM_DEFAULT                                   8'h8
`define SQ2_THR_3MM_CHECK                                     8'h8
`define SQ2_THR_3MM                                           `SQ2_THR_3MM_WIDTH, `REGA_SQ2_THR_3MM, `SQ2_THR_3MM_DEFAULT
//  access       rw
//  atype        S
//  7:0  0x8     SQ2_THR_3MM
//                  Squal 2 Threshold 3mm lift setting


`define P10_PROD_ID_WIDTH                                     0
`define REGA_P10_PROD_ID                                      13'ha00
`define P10_PROD_ID                                           `P10_PROD_ID_WIDTH, `REGA_P10_PROD_ID, `P10_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P10_REV_ID_WIDTH                                      0
`define REGA_P10_REV_ID                                       13'ha01
`define P10_REV_ID                                            `P10_REV_ID_WIDTH, `REGA_P10_REV_ID, `P10_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P10_MOTION_WIDTH                                      0
`define REGA_P10_MOTION                                       13'ha02
`define P10_MOTION                                            `P10_MOTION_WIDTH, `REGA_P10_MOTION, `P10_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P10_DELTA_X_LO_WIDTH                                  0
`define REGA_P10_DELTA_X_LO                                   13'ha03
`define P10_DELTA_X_LO                                        `P10_DELTA_X_LO_WIDTH, `REGA_P10_DELTA_X_LO, `P10_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P10_DELTA_X_HI_WIDTH                                  0
`define REGA_P10_DELTA_X_HI                                   13'ha04
`define P10_DELTA_X_HI                                        `P10_DELTA_X_HI_WIDTH, `REGA_P10_DELTA_X_HI, `P10_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P10_DELTA_Y_LO_WIDTH                                  0
`define REGA_P10_DELTA_Y_LO                                   13'ha05
`define P10_DELTA_Y_LO                                        `P10_DELTA_Y_LO_WIDTH, `REGA_P10_DELTA_Y_LO, `P10_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P10_DELTA_Y_HI_WIDTH                                  0
`define REGA_P10_DELTA_Y_HI                                   13'ha06
`define P10_DELTA_Y_HI                                        `P10_DELTA_Y_HI_WIDTH, `REGA_P10_DELTA_Y_HI, `P10_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P10_SQUAL_WIDTH                                       0
`define REGA_P10_SQUAL                                        13'ha07
`define P10_SQUAL                                             `P10_SQUAL_WIDTH, `REGA_P10_SQUAL, `P10_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P10_PIX_ACCUM_WIDTH                                   0
`define REGA_P10_PIX_ACCUM                                    13'ha08
`define P10_PIX_ACCUM                                         `P10_PIX_ACCUM_WIDTH, `REGA_P10_PIX_ACCUM, `P10_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P10_PIX_MAX_WIDTH                                     0
`define REGA_P10_PIX_MAX                                      13'ha09
`define P10_PIX_MAX                                           `P10_PIX_MAX_WIDTH, `REGA_P10_PIX_MAX, `P10_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P10_PIX_MIN_WIDTH                                     0
`define REGA_P10_PIX_MIN                                      13'ha0a
`define P10_PIX_MIN                                           `P10_PIX_MIN_WIDTH, `REGA_P10_PIX_MIN, `P10_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P10_SHUT_LO_WIDTH                                     0
`define REGA_P10_SHUT_LO                                      13'ha0b
`define P10_SHUT_LO                                           `P10_SHUT_LO_WIDTH, `REGA_P10_SHUT_LO, `P10_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P10_SHUT_HI_WIDTH                                     0
`define REGA_P10_SHUT_HI                                      13'ha0c
`define P10_SHUT_HI                                           `P10_SHUT_HI_WIDTH, `REGA_P10_SHUT_HI, `P10_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P10_EXT_WAKEUP_WIDTH                                  0
`define REGA_P10_EXT_WAKEUP                                   13'ha0d
`define P10_EXT_WAKEUP                                        `P10_EXT_WAKEUP_WIDTH, `REGA_P10_EXT_WAKEUP, `P10_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P10_RESERVED_E_WIDTH                                  0
`define REGA_P10_RESERVED_E                                   13'ha0e
`define P10_RESERVED_E                                        `P10_RESERVED_E_WIDTH, `REGA_P10_RESERVED_E, `P10_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P10_SKIP_FRAMES_CNT_LO_WIDTH                          0
`define REGA_P10_SKIP_FRAMES_CNT_LO                           13'ha0f
`define P10_SKIP_FRAMES_CNT_LO                                `P10_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P10_SKIP_FRAMES_CNT_LO, `P10_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P10_SKIP_FRAMES_CNT_HI_WIDTH                          0
`define REGA_P10_SKIP_FRAMES_CNT_HI                           13'ha10
`define P10_SKIP_FRAMES_CNT_HI                                `P10_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P10_SKIP_FRAMES_CNT_HI, `P10_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P10_CVFR_PERIOD_LO_WIDTH                              0
`define REGA_P10_CVFR_PERIOD_LO                               13'ha11
`define P10_CVFR_PERIOD_LO                                    `P10_CVFR_PERIOD_LO_WIDTH, `REGA_P10_CVFR_PERIOD_LO, `P10_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P10_CVFR_PERIOD_HI_WIDTH                              0
`define REGA_P10_CVFR_PERIOD_HI                               13'ha12
`define P10_CVFR_PERIOD_HI                                    `P10_CVFR_PERIOD_HI_WIDTH, `REGA_P10_CVFR_PERIOD_HI, `P10_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P10_OBSERVATION_WIDTH                                 0
`define REGA_P10_OBSERVATION                                  13'ha15
`define P10_OBSERVATION                                       `P10_OBSERVATION_WIDTH, `REGA_P10_OBSERVATION, `P10_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P10_BURST_MOTION_WIDTH                                0
`define REGA_P10_BURST_MOTION                                 13'ha16
`define P10_BURST_MOTION                                      `P10_BURST_MOTION_WIDTH, `REGA_P10_BURST_MOTION, `P10_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P10_SQUAL2_WIDTH                                      0
`define REGA_P10_SQUAL2                                       13'ha17
`define P10_SQUAL2                                            `P10_SQUAL2_WIDTH, `REGA_P10_SQUAL2, `P10_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P10_SPI_MODE_WIDTH                                    0
`define REGA_P10_SPI_MODE                                     13'ha18
`define P10_SPI_MODE                                          `P10_SPI_MODE_WIDTH, `REGA_P10_SPI_MODE, `P10_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P10_OSC_TUNE_INSTR_WIDTH                              0
`define REGA_P10_OSC_TUNE_INSTR                               13'ha22
`define P10_OSC_TUNE_INSTR                                    `P10_OSC_TUNE_INSTR_WIDTH, `REGA_P10_OSC_TUNE_INSTR, `P10_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P10_OSC_TUNE_INSTR_SLOW_WIDTH                         0
`define REGA_P10_OSC_TUNE_INSTR_SLOW                          13'ha23
`define P10_OSC_TUNE_INSTR_SLOW                               `P10_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P10_OSC_TUNE_INSTR_SLOW, `P10_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P10_PRBS_MODE_WIDTH                                   0
`define REGA_P10_PRBS_MODE                                    13'ha30
`define P10_PRBS_MODE                                         `P10_PRBS_MODE_WIDTH, `REGA_P10_PRBS_MODE, `P10_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P10_POWERDOWN_WIDTH                                   0
`define REGA_P10_POWERDOWN                                    13'ha32
`define P10_POWERDOWN                                         `P10_POWERDOWN_WIDTH, `REGA_P10_POWERDOWN, `P10_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P10_CRC0_WIDTH                                        0
`define REGA_P10_CRC0                                         13'ha33
`define P10_CRC0                                              `P10_CRC0_WIDTH, `REGA_P10_CRC0, `P10_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P10_CRC1_WIDTH                                        0
`define REGA_P10_CRC1                                         13'ha34
`define P10_CRC1                                              `P10_CRC1_WIDTH, `REGA_P10_CRC1, `P10_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P10_CRC2_WIDTH                                        0
`define REGA_P10_CRC2                                         13'ha35
`define P10_CRC2                                              `P10_CRC2_WIDTH, `REGA_P10_CRC2, `P10_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P10_CRC3_WIDTH                                        0
`define REGA_P10_CRC3                                         13'ha36
`define P10_CRC3                                              `P10_CRC3_WIDTH, `REGA_P10_CRC3, `P10_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P10_IOSTATUS_WIDTH                                    0
`define REGA_P10_IOSTATUS                                     13'ha37
`define P10_IOSTATUS                                          `P10_IOSTATUS_WIDTH, `REGA_P10_IOSTATUS, `P10_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P10_TAP_KEY_WO_WIDTH                                  0
`define REGA_P10_TAP_KEY_WO                                   13'ha38
`define P10_TAP_KEY_WO                                        `P10_TAP_KEY_WO_WIDTH, `REGA_P10_TAP_KEY_WO, `P10_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P10_TAP_KEY_WIDTH                                     0
`define REGA_P10_TAP_KEY                                      13'ha39
`define P10_TAP_KEY                                           `P10_TAP_KEY_WIDTH, `REGA_P10_TAP_KEY, `P10_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P10_POWER_UP_RESET_WIDTH                              0
`define REGA_P10_POWER_UP_RESET                               13'ha3a
`define P10_POWER_UP_RESET                                    `P10_POWER_UP_RESET_WIDTH, `REGA_P10_POWER_UP_RESET, `P10_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P10_SHUTDOWN_WIDTH                                    0
`define REGA_P10_SHUTDOWN                                     13'ha3b
`define P10_SHUTDOWN                                          `P10_SHUTDOWN_WIDTH, `REGA_P10_SHUTDOWN, `P10_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P10_SCAN_MODE_WIDTH                                   0
`define REGA_P10_SCAN_MODE                                    13'ha3c
`define P10_SCAN_MODE                                         `P10_SCAN_MODE_WIDTH, `REGA_P10_SCAN_MODE, `P10_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P10_SPI_PAGE_WIDTH                                    0
`define REGA_P10_SPI_PAGE                                     13'ha7f
`define P10_SPI_PAGE                                          `P10_SPI_PAGE_WIDTH, `REGA_P10_SPI_PAGE, `P10_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define DECOR_TH_WIDTH                                        8
`define REGA_DECOR_TH                                         13'ha44
`define DECOR_TH_DEFAULT                                      8'h55
`define DECOR_TH_CHECK                                        8'h55
`define DECOR_TH                                              `DECOR_TH_WIDTH, `REGA_DECOR_TH, `DECOR_TH_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x5     DECOR_WAKEUP_TH_DFLAT
//                  Wakeup threshold in DFLAT
//  3:0  0x5     DECOR_WAKEUP_TH_FF
//                  Wakeup threshold in FF

`define LOW_SUR_SQUAL_DECOR_TH_WIDTH                          8
`define REGA_LOW_SUR_SQUAL_DECOR_TH                           13'ha45
`define LOW_SUR_SQUAL_DECOR_TH_DEFAULT                        8'ha
`define LOW_SUR_SQUAL_DECOR_TH_CHECK                          8'ha
`define LOW_SUR_SQUAL_DECOR_TH                                `LOW_SUR_SQUAL_DECOR_TH_WIDTH, `REGA_LOW_SUR_SQUAL_DECOR_TH, `LOW_SUR_SQUAL_DECOR_TH_DEFAULT
//  access       rw
//  atype        A
//  7:5  0x0     RESERVED
//                  Reserved
//    4  0x0     ENABLE_LOW_SUR_SQUAL_DECOR
//                  0: Disable low surface squal frame special decor threshold
//                  1: Enable low surface squal frame special decor threshold
//  3:0  0xa     LOW_SUR_SQUAL_DECOR_TH
//                  Wakeup threshold in low surface squal frame

`define RUNAWAY_THR_WIDTH                                     8
`define REGA_RUNAWAY_THR                                      13'ha46
`define RUNAWAY_THR_DEFAULT                                   8'hf
`define RUNAWAY_THR_CHECK                                     8'hf
`define RUNAWAY_THR                                           `RUNAWAY_THR_WIDTH, `REGA_RUNAWAY_THR, `RUNAWAY_THR_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0xf     RUNAWAY_CNT1
//                  Min number of runaway frames to trigger runaway1 flag

`define COR_CTRL0_WIDTH                                       8
`define REGA_COR_CTRL0                                        13'ha47
`define COR_CTRL0_DEFAULT                                     8'h24
`define COR_CTRL0_CHECK                                       8'h24
`define COR_CTRL0                                             `COR_CTRL0_WIDTH, `REGA_COR_CTRL0, `COR_CTRL0_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x2     XC00_SHIFT
//                  XC00 division threshold (range: 0-4).  The division has lower precedence than the multiplier.  Used when HI_SQ_SURF=1.
//                  0x0: XC00 / 4
//                  0x1: XC00 / 8
//                  0x2: XC00 / 16
//                  0x3: XC00 / 32
//                  0x4: XC00 / 64
//  3:0  0x4     XC00_MULT
//                  XC00 multiplier threshold (range: 1-15).  The multiplier has higher precedence than the division.  Used when HI_SQ_SUR=1.
//                  0x1: XC00 x 1
//                  0x2: XC00 x 2
//                  0x3: XC00 x 3
//                  0x4: XC00 x 4
//                  0x5: XC00 x 5
//                  0x6: XC00 x 6
//                  0x7: XC00 x 7
//                  0x8: XC00 x 8
//                  0x9: XC00 x 9
//                  0x10: XC00 x 10
//                  0x11: XC00 x 11
//                  0x12: XC00 x 12
//                  0x13: XC00 x 13
//                  0x14: XC00 x 14
//                  0x15: XC00 x 15

`define COR_CTRL2_WIDTH                                       8
`define REGA_COR_CTRL2                                        13'ha49
`define COR_CTRL2_DEFAULT                                     8'h20
`define COR_CTRL2_CHECK                                       8'h20
`define COR_CTRL2                                             `COR_CTRL2_WIDTH, `REGA_COR_CTRL2, `COR_CTRL2_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     dis_bigcor_first_5x5_norm
//                  0x0: Enable normalization for first 5x5 quadrant during BIGCOR
//                  0x1: Disable normalization for first 5x5 quadrant during BIGCOR
//    6  0x0     EN_NORM_IN_SKATING_MODE
//                  Enable normalization during skating mode
//    5  0x1     EN_LIFT_1MM_DIS_COR_NORM
//                  Enable Lift 1mm to bypass COR Normalization
//    4  0x0     DISABLE_BYPASS
//                  Disable Bypass COR condition
//    3  0x0     XC00_EN
//                  0x0: Calculate XC00 only during runaway condition or REST
//                  0x1: Always calculate XC00
//  2:0  0x0     RESERVED
//                  Reserved

`define COR_CTRL3_WIDTH                                       8
`define REGA_COR_CTRL3                                        13'ha4a
`define COR_CTRL3_DEFAULT                                     8'h25
`define COR_CTRL3_CHECK                                       8'h25
`define COR_CTRL3                                             `COR_CTRL3_WIDTH, `REGA_COR_CTRL3, `COR_CTRL3_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x25    BP_AC_RATIO_TH
//                  BP/AC ratio threshold for PAF

`define COR_CTRL4_WIDTH                                       8
`define REGA_COR_CTRL4                                        13'ha4b
`define COR_CTRL4_DEFAULT                                     8'h81
`define COR_CTRL4_CHECK                                       8'h81
`define COR_CTRL4                                             `COR_CTRL4_WIDTH, `REGA_COR_CTRL4, `COR_CTRL4_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     USE_LSQ_REG
//                  Use registered version of Low squal flag
//  6:5  0x0     RESERVED
//                  Reserved
//    4  0x0     DIS_BIGCOR_RUNAWAY1
//                  Disable bigcor in runaway1
//    3  0x0     DIS_BIGCOR_REST
//                  Disable bigcor in rest mode
//    2  0x0     DIS_BIGCOR_LOW_SQUAL
//                  Disable bigcor in low squal
//    1  0x0     DIS_BIGCOR_POST_SKATE
//                  Disable bigcor in frame after skating mode
//    0  0x1     DIS_BIGCOR_SKATE
//                  Disable bigcor in skating mode

`define COR_CTRL5_WIDTH                                       8
`define REGA_COR_CTRL5                                        13'ha4c
`define COR_CTRL5_DEFAULT                                     8'h25
`define COR_CTRL5_CHECK                                       8'h25
`define COR_CTRL5                                             `COR_CTRL5_WIDTH, `REGA_COR_CTRL5, `COR_CTRL5_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x25    BP_AC_RATIO_TH
//                  BP/AC ratio threshold for FixFilter

`define COR_CTRL8_WIDTH                                       8
`define REGA_COR_CTRL8                                        13'ha4f
`define COR_CTRL8_DEFAULT                                     8'h50
`define COR_CTRL8_CHECK                                       8'h50
`define COR_CTRL8                                             `COR_CTRL8_WIDTH, `REGA_COR_CTRL8, `COR_CTRL8_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     BP_AC_DIFF_EN
//                  Enable BP/AC diff algo
//    6  0x1     AUTO_BOWL_SHIFT
//                  0x0: Final bowl values to be right shifted by 1 at all times.
//                  0x1: Final bowl values to be right shifted by 1 if any bowl element is outside of +/-15bit range.
//    5  0x0     DECOR_NEG_XC00_WAKEUP_TRIG_DIS
//                  0x0: DECOR wakeup trigger on negative XC00 enabled
//                  0x1: DECOR wakeup trigger on negative XC00 disabled
//    4  0x1     XC00_LTE_AC_WAKEUP_TRIG_EN
//                  0x0: (XC00 * DECOR_WAKEUP_TH) <= AC_COR wakeup trigger disabled
//                  0x1: (XC00 * DECOR_WAKEUP_TH) <= AC_COR wakeup trigger enabled
//  3:2  0x0     BIGCOR_ACCELERATION_ALGO
//                  0x00: Enable BIGCOR 15x15 to trigger 1 time if BP/AC < THR
//                  0x01: Enable consecutive BIGCOR 15x15 until peak falls within 3x3 BOWL.
//                  0x10: Enable consecutive BIGCOR 15x15 until BP/AC >= THR.
//                  0x11: Enable BIGCOR 15x15 to trigger 2 times if BP/AC < THR.
//    1  0x0     FORCE_COR_BYPASS
//                  0x0: Normal mode
//                  0x1: Force COR state-machine to always bypass.  This is the state-machine only.
//    0  0x0     DECOR_WAKEUP_FLAG_DIS
//                  0x0: Enable DECOR wakeup flag from COR
//                  0x1: Disable DECOR wakeup flag from COR

`define COR_CTRL9_WIDTH                                       8
`define REGA_COR_CTRL9                                        13'ha50
`define COR_CTRL9_DEFAULT                                     8'h3f
`define COR_CTRL9_CHECK                                       8'h3f
`define COR_CTRL9                                             `COR_CTRL9_WIDTH, `REGA_COR_CTRL9, `COR_CTRL9_DEFAULT
//  access       rw
//  atype        A
//  7:6  0x0     RESERVED
//                  Reserved
//  5:0  0x3f    BP_AC_DIFF_TH
//                  BP/AC ratio threshold for BP/AC diff algo

`define COR_CTRL10_WIDTH                                      8
`define REGA_COR_CTRL10                                       13'ha51
`define COR_CTRL10_DEFAULT                                    8'h8f
`define COR_CTRL10_CHECK                                      8'h8f
`define COR_CTRL10                                            `COR_CTRL10_WIDTH, `REGA_COR_CTRL10, `COR_CTRL10_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     ac_cmpxcmp_run
//                  0x00: AC = REF * REF
//                  0x01: AC = CMP * CMP
//    6  0x0     bigcor_norm_en
//                  0x0: Correlation overlap area is scaled depending on which of 5x5 bowl is being calculated (original algo) for 15x15 COR.
//                  0x1: Correlation overlap area is normalized such that all 5x5 bowls are calculated based a uniform overlap for 15x15 COR.
//    5  0x0     DO15X15_DISABLE
//                  0x0: Enable 15x15
//                  0x1: Disable 15x15
//    4  0x0     cor3x3
//                  Build in for Test only, Correlator 3x3
//    3  0x1     xc00_norm_en
//                  0x1: Enable XC00 normalization
//    2  0x1     ac_cmpxcmp_rest
//                  0x0: AC = REF * REF
//                  0x1: AC = CMP * CMP
//    1  0x1     runaway1_en
//                  Enable runaway 1.  This is comparing xc00 against bestcor.
//    0  0x1     cor_norm_en
//                  0x0: Correlation overlap area is scaled depending on which of 5x5 bowl is being calculated (original algo) for 5x5 COR.
//                  0x1: Correlation overlap area is normalized such that all 5x5 bowls are calculated based a uniform overlap for 5x5 COR.

`define SKATE_COR_WIDTH                                       8
`define REGA_SKATE_COR                                        13'ha55
`define SKATE_COR_DEFAULT                                     8'h1f
`define SKATE_COR_CHECK                                       8'h1f
`define SKATE_COR                                             `SKATE_COR_WIDTH, `REGA_SKATE_COR, `SKATE_COR_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x1     SKATE_MONITOR_CNT
//                  Maximum allowable skating cycles, register * 8
//    3  0x1     Skate Orientation
//                  0x0: Skate Search windows 45x15
//                  0x1: Skate Search windows 15x45
//  2:0  0x7     SKATE_COR_CNT
//                  Occurence where the peak appear at the region


`define P11_PROD_ID_WIDTH                                     0
`define REGA_P11_PROD_ID                                      13'hb00
`define P11_PROD_ID                                           `P11_PROD_ID_WIDTH, `REGA_P11_PROD_ID, `P11_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P11_REV_ID_WIDTH                                      0
`define REGA_P11_REV_ID                                       13'hb01
`define P11_REV_ID                                            `P11_REV_ID_WIDTH, `REGA_P11_REV_ID, `P11_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P11_MOTION_WIDTH                                      0
`define REGA_P11_MOTION                                       13'hb02
`define P11_MOTION                                            `P11_MOTION_WIDTH, `REGA_P11_MOTION, `P11_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P11_DELTA_X_LO_WIDTH                                  0
`define REGA_P11_DELTA_X_LO                                   13'hb03
`define P11_DELTA_X_LO                                        `P11_DELTA_X_LO_WIDTH, `REGA_P11_DELTA_X_LO, `P11_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P11_DELTA_X_HI_WIDTH                                  0
`define REGA_P11_DELTA_X_HI                                   13'hb04
`define P11_DELTA_X_HI                                        `P11_DELTA_X_HI_WIDTH, `REGA_P11_DELTA_X_HI, `P11_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P11_DELTA_Y_LO_WIDTH                                  0
`define REGA_P11_DELTA_Y_LO                                   13'hb05
`define P11_DELTA_Y_LO                                        `P11_DELTA_Y_LO_WIDTH, `REGA_P11_DELTA_Y_LO, `P11_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P11_DELTA_Y_HI_WIDTH                                  0
`define REGA_P11_DELTA_Y_HI                                   13'hb06
`define P11_DELTA_Y_HI                                        `P11_DELTA_Y_HI_WIDTH, `REGA_P11_DELTA_Y_HI, `P11_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P11_SQUAL_WIDTH                                       0
`define REGA_P11_SQUAL                                        13'hb07
`define P11_SQUAL                                             `P11_SQUAL_WIDTH, `REGA_P11_SQUAL, `P11_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P11_PIX_ACCUM_WIDTH                                   0
`define REGA_P11_PIX_ACCUM                                    13'hb08
`define P11_PIX_ACCUM                                         `P11_PIX_ACCUM_WIDTH, `REGA_P11_PIX_ACCUM, `P11_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P11_PIX_MAX_WIDTH                                     0
`define REGA_P11_PIX_MAX                                      13'hb09
`define P11_PIX_MAX                                           `P11_PIX_MAX_WIDTH, `REGA_P11_PIX_MAX, `P11_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P11_PIX_MIN_WIDTH                                     0
`define REGA_P11_PIX_MIN                                      13'hb0a
`define P11_PIX_MIN                                           `P11_PIX_MIN_WIDTH, `REGA_P11_PIX_MIN, `P11_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P11_SHUT_LO_WIDTH                                     0
`define REGA_P11_SHUT_LO                                      13'hb0b
`define P11_SHUT_LO                                           `P11_SHUT_LO_WIDTH, `REGA_P11_SHUT_LO, `P11_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P11_SHUT_HI_WIDTH                                     0
`define REGA_P11_SHUT_HI                                      13'hb0c
`define P11_SHUT_HI                                           `P11_SHUT_HI_WIDTH, `REGA_P11_SHUT_HI, `P11_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P11_EXT_WAKEUP_WIDTH                                  0
`define REGA_P11_EXT_WAKEUP                                   13'hb0d
`define P11_EXT_WAKEUP                                        `P11_EXT_WAKEUP_WIDTH, `REGA_P11_EXT_WAKEUP, `P11_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P11_RESERVED_E_WIDTH                                  0
`define REGA_P11_RESERVED_E                                   13'hb0e
`define P11_RESERVED_E                                        `P11_RESERVED_E_WIDTH, `REGA_P11_RESERVED_E, `P11_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P11_SKIP_FRAMES_CNT_LO_WIDTH                          0
`define REGA_P11_SKIP_FRAMES_CNT_LO                           13'hb0f
`define P11_SKIP_FRAMES_CNT_LO                                `P11_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P11_SKIP_FRAMES_CNT_LO, `P11_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P11_SKIP_FRAMES_CNT_HI_WIDTH                          0
`define REGA_P11_SKIP_FRAMES_CNT_HI                           13'hb10
`define P11_SKIP_FRAMES_CNT_HI                                `P11_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P11_SKIP_FRAMES_CNT_HI, `P11_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P11_CVFR_PERIOD_LO_WIDTH                              0
`define REGA_P11_CVFR_PERIOD_LO                               13'hb11
`define P11_CVFR_PERIOD_LO                                    `P11_CVFR_PERIOD_LO_WIDTH, `REGA_P11_CVFR_PERIOD_LO, `P11_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P11_CVFR_PERIOD_HI_WIDTH                              0
`define REGA_P11_CVFR_PERIOD_HI                               13'hb12
`define P11_CVFR_PERIOD_HI                                    `P11_CVFR_PERIOD_HI_WIDTH, `REGA_P11_CVFR_PERIOD_HI, `P11_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P11_OBSERVATION_WIDTH                                 0
`define REGA_P11_OBSERVATION                                  13'hb15
`define P11_OBSERVATION                                       `P11_OBSERVATION_WIDTH, `REGA_P11_OBSERVATION, `P11_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P11_BURST_MOTION_WIDTH                                0
`define REGA_P11_BURST_MOTION                                 13'hb16
`define P11_BURST_MOTION                                      `P11_BURST_MOTION_WIDTH, `REGA_P11_BURST_MOTION, `P11_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P11_SQUAL2_WIDTH                                      0
`define REGA_P11_SQUAL2                                       13'hb17
`define P11_SQUAL2                                            `P11_SQUAL2_WIDTH, `REGA_P11_SQUAL2, `P11_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P11_SPI_MODE_WIDTH                                    0
`define REGA_P11_SPI_MODE                                     13'hb18
`define P11_SPI_MODE                                          `P11_SPI_MODE_WIDTH, `REGA_P11_SPI_MODE, `P11_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P11_OSC_TUNE_INSTR_WIDTH                              0
`define REGA_P11_OSC_TUNE_INSTR                               13'hb22
`define P11_OSC_TUNE_INSTR                                    `P11_OSC_TUNE_INSTR_WIDTH, `REGA_P11_OSC_TUNE_INSTR, `P11_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P11_OSC_TUNE_INSTR_SLOW_WIDTH                         0
`define REGA_P11_OSC_TUNE_INSTR_SLOW                          13'hb23
`define P11_OSC_TUNE_INSTR_SLOW                               `P11_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P11_OSC_TUNE_INSTR_SLOW, `P11_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P11_PRBS_MODE_WIDTH                                   0
`define REGA_P11_PRBS_MODE                                    13'hb30
`define P11_PRBS_MODE                                         `P11_PRBS_MODE_WIDTH, `REGA_P11_PRBS_MODE, `P11_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P11_POWERDOWN_WIDTH                                   0
`define REGA_P11_POWERDOWN                                    13'hb32
`define P11_POWERDOWN                                         `P11_POWERDOWN_WIDTH, `REGA_P11_POWERDOWN, `P11_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P11_CRC0_WIDTH                                        0
`define REGA_P11_CRC0                                         13'hb33
`define P11_CRC0                                              `P11_CRC0_WIDTH, `REGA_P11_CRC0, `P11_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P11_CRC1_WIDTH                                        0
`define REGA_P11_CRC1                                         13'hb34
`define P11_CRC1                                              `P11_CRC1_WIDTH, `REGA_P11_CRC1, `P11_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P11_CRC2_WIDTH                                        0
`define REGA_P11_CRC2                                         13'hb35
`define P11_CRC2                                              `P11_CRC2_WIDTH, `REGA_P11_CRC2, `P11_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P11_CRC3_WIDTH                                        0
`define REGA_P11_CRC3                                         13'hb36
`define P11_CRC3                                              `P11_CRC3_WIDTH, `REGA_P11_CRC3, `P11_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P11_IOSTATUS_WIDTH                                    0
`define REGA_P11_IOSTATUS                                     13'hb37
`define P11_IOSTATUS                                          `P11_IOSTATUS_WIDTH, `REGA_P11_IOSTATUS, `P11_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P11_TAP_KEY_WO_WIDTH                                  0
`define REGA_P11_TAP_KEY_WO                                   13'hb38
`define P11_TAP_KEY_WO                                        `P11_TAP_KEY_WO_WIDTH, `REGA_P11_TAP_KEY_WO, `P11_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P11_TAP_KEY_WIDTH                                     0
`define REGA_P11_TAP_KEY                                      13'hb39
`define P11_TAP_KEY                                           `P11_TAP_KEY_WIDTH, `REGA_P11_TAP_KEY, `P11_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P11_POWER_UP_RESET_WIDTH                              0
`define REGA_P11_POWER_UP_RESET                               13'hb3a
`define P11_POWER_UP_RESET                                    `P11_POWER_UP_RESET_WIDTH, `REGA_P11_POWER_UP_RESET, `P11_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P11_SHUTDOWN_WIDTH                                    0
`define REGA_P11_SHUTDOWN                                     13'hb3b
`define P11_SHUTDOWN                                          `P11_SHUTDOWN_WIDTH, `REGA_P11_SHUTDOWN, `P11_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P11_SCAN_MODE_WIDTH                                   0
`define REGA_P11_SCAN_MODE                                    13'hb3c
`define P11_SCAN_MODE                                         `P11_SCAN_MODE_WIDTH, `REGA_P11_SCAN_MODE, `P11_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P11_SPI_PAGE_WIDTH                                    0
`define REGA_P11_SPI_PAGE                                     13'hb7f
`define P11_SPI_PAGE                                          `P11_SPI_PAGE_WIDTH, `REGA_P11_SPI_PAGE, `P11_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define BOWL_SW_LO_WIDTH                                      8
`define REGA_BOWL_SW_LO                                       13'hb40
`define BOWL_SW_LO_DEFAULT                                    8'h0
`define BOWL_SW_LO_CHECK                                      8'h0
`define BOWL_SW_LO                                            `BOWL_SW_LO_WIDTH, `REGA_BOWL_SW_LO, `BOWL_SW_LO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_SW_LO
//                  Bowl SW low byte

`define BOWL_SW_HI_WIDTH                                      8
`define REGA_BOWL_SW_HI                                       13'hb41
`define BOWL_SW_HI_DEFAULT                                    8'h0
`define BOWL_SW_HI_CHECK                                      8'h0
`define BOWL_SW_HI                                            `BOWL_SW_HI_WIDTH, `REGA_BOWL_SW_HI, `BOWL_SW_HI_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_SW_HI
//                  Bowl SW high byte

`define BOWL_S_LO_WIDTH                                       8
`define REGA_BOWL_S_LO                                        13'hb42
`define BOWL_S_LO_DEFAULT                                     8'h0
`define BOWL_S_LO_CHECK                                       8'h0
`define BOWL_S_LO                                             `BOWL_S_LO_WIDTH, `REGA_BOWL_S_LO, `BOWL_S_LO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_S_LO
//                  Bowl S low byte

`define BOWL_S_HI_WIDTH                                       8
`define REGA_BOWL_S_HI                                        13'hb43
`define BOWL_S_HI_DEFAULT                                     8'h0
`define BOWL_S_HI_CHECK                                       8'h0
`define BOWL_S_HI                                             `BOWL_S_HI_WIDTH, `REGA_BOWL_S_HI, `BOWL_S_HI_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_S_HI
//                  Bowl S high byte

`define BOWL_SE_LO_WIDTH                                      8
`define REGA_BOWL_SE_LO                                       13'hb44
`define BOWL_SE_LO_DEFAULT                                    8'h0
`define BOWL_SE_LO_CHECK                                      8'h0
`define BOWL_SE_LO                                            `BOWL_SE_LO_WIDTH, `REGA_BOWL_SE_LO, `BOWL_SE_LO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_SE_LO
//                  Bowl SE low byte

`define BOWL_SE_HI_WIDTH                                      8
`define REGA_BOWL_SE_HI                                       13'hb45
`define BOWL_SE_HI_DEFAULT                                    8'h0
`define BOWL_SE_HI_CHECK                                      8'h0
`define BOWL_SE_HI                                            `BOWL_SE_HI_WIDTH, `REGA_BOWL_SE_HI, `BOWL_SE_HI_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_SE_HI
//                  Bowl SE high byte

`define BOWL_W_LO_WIDTH                                       8
`define REGA_BOWL_W_LO                                        13'hb46
`define BOWL_W_LO_DEFAULT                                     8'h0
`define BOWL_W_LO_CHECK                                       8'h0
`define BOWL_W_LO                                             `BOWL_W_LO_WIDTH, `REGA_BOWL_W_LO, `BOWL_W_LO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_W_LO
//                  Bowl W low byte

`define BOWL_W_HI_WIDTH                                       8
`define REGA_BOWL_W_HI                                        13'hb47
`define BOWL_W_HI_DEFAULT                                     8'h0
`define BOWL_W_HI_CHECK                                       8'h0
`define BOWL_W_HI                                             `BOWL_W_HI_WIDTH, `REGA_BOWL_W_HI, `BOWL_W_HI_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_W_HI
//                  Bowl W high byte

`define BOWL_CENTER_LO_WIDTH                                  8
`define REGA_BOWL_CENTER_LO                                   13'hb48
`define BOWL_CENTER_LO_DEFAULT                                8'h0
`define BOWL_CENTER_LO_CHECK                                  8'h0
`define BOWL_CENTER_LO                                        `BOWL_CENTER_LO_WIDTH, `REGA_BOWL_CENTER_LO, `BOWL_CENTER_LO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_CENTER_LO
//                  Bowl CENTER low byte

`define BOWL_CENTER_HI_WIDTH                                  8
`define REGA_BOWL_CENTER_HI                                   13'hb49
`define BOWL_CENTER_HI_DEFAULT                                8'h0
`define BOWL_CENTER_HI_CHECK                                  8'h0
`define BOWL_CENTER_HI                                        `BOWL_CENTER_HI_WIDTH, `REGA_BOWL_CENTER_HI, `BOWL_CENTER_HI_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_CENTER_HI
//                  Bowl CENTER high byte

`define BOWL_E_LO_WIDTH                                       8
`define REGA_BOWL_E_LO                                        13'hb4a
`define BOWL_E_LO_DEFAULT                                     8'h0
`define BOWL_E_LO_CHECK                                       8'h0
`define BOWL_E_LO                                             `BOWL_E_LO_WIDTH, `REGA_BOWL_E_LO, `BOWL_E_LO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_E_LO
//                  Bowl E low byte

`define BOWL_E_HI_WIDTH                                       8
`define REGA_BOWL_E_HI                                        13'hb4b
`define BOWL_E_HI_DEFAULT                                     8'h0
`define BOWL_E_HI_CHECK                                       8'h0
`define BOWL_E_HI                                             `BOWL_E_HI_WIDTH, `REGA_BOWL_E_HI, `BOWL_E_HI_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_E_HI
//                  Bowl E high byte

`define BOWL_NW_LO_WIDTH                                      8
`define REGA_BOWL_NW_LO                                       13'hb4c
`define BOWL_NW_LO_DEFAULT                                    8'h0
`define BOWL_NW_LO_CHECK                                      8'h0
`define BOWL_NW_LO                                            `BOWL_NW_LO_WIDTH, `REGA_BOWL_NW_LO, `BOWL_NW_LO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_NW_LO
//                  Bowl NW low byte

`define BOWL_NW_HI_WIDTH                                      8
`define REGA_BOWL_NW_HI                                       13'hb4d
`define BOWL_NW_HI_DEFAULT                                    8'h0
`define BOWL_NW_HI_CHECK                                      8'h0
`define BOWL_NW_HI                                            `BOWL_NW_HI_WIDTH, `REGA_BOWL_NW_HI, `BOWL_NW_HI_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_NW_HI
//                  Bowl NW high byte

`define BOWL_N_LO_WIDTH                                       8
`define REGA_BOWL_N_LO                                        13'hb4e
`define BOWL_N_LO_DEFAULT                                     8'h0
`define BOWL_N_LO_CHECK                                       8'h0
`define BOWL_N_LO                                             `BOWL_N_LO_WIDTH, `REGA_BOWL_N_LO, `BOWL_N_LO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_N_LO
//                  Bowl N low byte

`define BOWL_N_HI_WIDTH                                       8
`define REGA_BOWL_N_HI                                        13'hb4f
`define BOWL_N_HI_DEFAULT                                     8'h0
`define BOWL_N_HI_CHECK                                       8'h0
`define BOWL_N_HI                                             `BOWL_N_HI_WIDTH, `REGA_BOWL_N_HI, `BOWL_N_HI_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_N_HI
//                  Bowl N high byte

`define BOWL_NE_LO_WIDTH                                      8
`define REGA_BOWL_NE_LO                                       13'hb50
`define BOWL_NE_LO_DEFAULT                                    8'h0
`define BOWL_NE_LO_CHECK                                      8'h0
`define BOWL_NE_LO                                            `BOWL_NE_LO_WIDTH, `REGA_BOWL_NE_LO, `BOWL_NE_LO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_NE_LO
//                  Bowl NE low byte

`define BOWL_NE_HI_WIDTH                                      8
`define REGA_BOWL_NE_HI                                       13'hb51
`define BOWL_NE_HI_DEFAULT                                    8'h0
`define BOWL_NE_HI_CHECK                                      8'h0
`define BOWL_NE_HI                                            `BOWL_NE_HI_WIDTH, `REGA_BOWL_NE_HI, `BOWL_NE_HI_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BOWL_NE_HI
//                  Bowl NE high byte

`define XC00_LO_WIDTH                                         8
`define REGA_XC00_LO                                          13'hb52
`define XC00_LO_DEFAULT                                       8'h0
`define XC00_LO_CHECK                                         8'h0
`define XC00_LO                                               `XC00_LO_WIDTH, `REGA_XC00_LO, `XC00_LO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     XC00_LO
//                  XC00 low byte

`define XC00_HI_WIDTH                                         8
`define REGA_XC00_HI                                          13'hb53
`define XC00_HI_DEFAULT                                       8'h0
`define XC00_HI_CHECK                                         8'h0
`define XC00_HI                                               `XC00_HI_WIDTH, `REGA_XC00_HI, `XC00_HI_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     XC00_HI
//                  XC00 high byte

`define AC_LO_WIDTH                                           8
`define REGA_AC_LO                                            13'hb54
`define AC_LO_DEFAULT                                         8'h0
`define AC_LO_CHECK                                           8'h0
`define AC_LO                                                 `AC_LO_WIDTH, `REGA_AC_LO, `AC_LO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     AC_LO
//                  AC low byte

`define AC_HI_WIDTH                                           8
`define REGA_AC_HI                                            13'hb55
`define AC_HI_DEFAULT                                         8'h0
`define AC_HI_CHECK                                           8'h0
`define AC_HI                                                 `AC_HI_WIDTH, `REGA_AC_HI, `AC_HI_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     AC_HI
//                  AC high byte

`define RUNAWAY_CNT_WIDTH                                     8
`define REGA_RUNAWAY_CNT                                      13'hb56
`define RUNAWAY_CNT_DEFAULT                                   8'h0
`define RUNAWAY_CNT_CHECK                                     8'h0
`define RUNAWAY_CNT                                           `RUNAWAY_CNT_WIDTH, `REGA_RUNAWAY_CNT, `RUNAWAY_CNT_DEFAULT
//  access       ro
//  atype        A
//  7:4  0x0     RUNAWAY_CNT2
//                  Runaway2 count
//  3:0  0x0     RUNAWAY_CNT1
//                  Runaway1 count

`define OFF_X_WIDTH                                           8
`define REGA_OFF_X                                            13'hb57
`define OFF_X_DEFAULT                                         8'h0
`define OFF_X_CHECK                                           8'h0
`define OFF_X                                                 `OFF_X_WIDTH, `REGA_OFF_X, `OFF_X_DEFAULT
//  access       ro
//  atype        A
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x0     OFF_X
//                  Offset X

`define OFF_Y_WIDTH                                           8
`define REGA_OFF_Y                                            13'hb58
`define OFF_Y_DEFAULT                                         8'h0
`define OFF_Y_CHECK                                           8'h0
`define OFF_Y                                                 `OFF_Y_WIDTH, `REGA_OFF_Y, `OFF_Y_DEFAULT
//  access       ro
//  atype        A
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x0     OFF_Y
//                  Offset Y

`define BP_AC_RATIO_WIDTH                                     8
`define REGA_BP_AC_RATIO                                      13'hb59
`define BP_AC_RATIO_DEFAULT                                   8'h0
`define BP_AC_RATIO_CHECK                                     8'h0
`define BP_AC_RATIO                                           `BP_AC_RATIO_WIDTH, `REGA_BP_AC_RATIO, `BP_AC_RATIO_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     BP_AC_RATIO
//                  bp_ac_ratio


`define P12_PROD_ID_WIDTH                                     0
`define REGA_P12_PROD_ID                                      13'hc00
`define P12_PROD_ID                                           `P12_PROD_ID_WIDTH, `REGA_P12_PROD_ID, `P12_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P12_REV_ID_WIDTH                                      0
`define REGA_P12_REV_ID                                       13'hc01
`define P12_REV_ID                                            `P12_REV_ID_WIDTH, `REGA_P12_REV_ID, `P12_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P12_MOTION_WIDTH                                      0
`define REGA_P12_MOTION                                       13'hc02
`define P12_MOTION                                            `P12_MOTION_WIDTH, `REGA_P12_MOTION, `P12_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P12_DELTA_X_LO_WIDTH                                  0
`define REGA_P12_DELTA_X_LO                                   13'hc03
`define P12_DELTA_X_LO                                        `P12_DELTA_X_LO_WIDTH, `REGA_P12_DELTA_X_LO, `P12_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P12_DELTA_X_HI_WIDTH                                  0
`define REGA_P12_DELTA_X_HI                                   13'hc04
`define P12_DELTA_X_HI                                        `P12_DELTA_X_HI_WIDTH, `REGA_P12_DELTA_X_HI, `P12_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P12_DELTA_Y_LO_WIDTH                                  0
`define REGA_P12_DELTA_Y_LO                                   13'hc05
`define P12_DELTA_Y_LO                                        `P12_DELTA_Y_LO_WIDTH, `REGA_P12_DELTA_Y_LO, `P12_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P12_DELTA_Y_HI_WIDTH                                  0
`define REGA_P12_DELTA_Y_HI                                   13'hc06
`define P12_DELTA_Y_HI                                        `P12_DELTA_Y_HI_WIDTH, `REGA_P12_DELTA_Y_HI, `P12_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P12_SQUAL_WIDTH                                       0
`define REGA_P12_SQUAL                                        13'hc07
`define P12_SQUAL                                             `P12_SQUAL_WIDTH, `REGA_P12_SQUAL, `P12_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P12_PIX_ACCUM_WIDTH                                   0
`define REGA_P12_PIX_ACCUM                                    13'hc08
`define P12_PIX_ACCUM                                         `P12_PIX_ACCUM_WIDTH, `REGA_P12_PIX_ACCUM, `P12_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P12_PIX_MAX_WIDTH                                     0
`define REGA_P12_PIX_MAX                                      13'hc09
`define P12_PIX_MAX                                           `P12_PIX_MAX_WIDTH, `REGA_P12_PIX_MAX, `P12_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P12_PIX_MIN_WIDTH                                     0
`define REGA_P12_PIX_MIN                                      13'hc0a
`define P12_PIX_MIN                                           `P12_PIX_MIN_WIDTH, `REGA_P12_PIX_MIN, `P12_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P12_SHUT_LO_WIDTH                                     0
`define REGA_P12_SHUT_LO                                      13'hc0b
`define P12_SHUT_LO                                           `P12_SHUT_LO_WIDTH, `REGA_P12_SHUT_LO, `P12_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P12_SHUT_HI_WIDTH                                     0
`define REGA_P12_SHUT_HI                                      13'hc0c
`define P12_SHUT_HI                                           `P12_SHUT_HI_WIDTH, `REGA_P12_SHUT_HI, `P12_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P12_EXT_WAKEUP_WIDTH                                  0
`define REGA_P12_EXT_WAKEUP                                   13'hc0d
`define P12_EXT_WAKEUP                                        `P12_EXT_WAKEUP_WIDTH, `REGA_P12_EXT_WAKEUP, `P12_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P12_RESERVED_E_WIDTH                                  0
`define REGA_P12_RESERVED_E                                   13'hc0e
`define P12_RESERVED_E                                        `P12_RESERVED_E_WIDTH, `REGA_P12_RESERVED_E, `P12_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P12_SKIP_FRAMES_CNT_LO_WIDTH                          0
`define REGA_P12_SKIP_FRAMES_CNT_LO                           13'hc0f
`define P12_SKIP_FRAMES_CNT_LO                                `P12_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P12_SKIP_FRAMES_CNT_LO, `P12_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P12_SKIP_FRAMES_CNT_HI_WIDTH                          0
`define REGA_P12_SKIP_FRAMES_CNT_HI                           13'hc10
`define P12_SKIP_FRAMES_CNT_HI                                `P12_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P12_SKIP_FRAMES_CNT_HI, `P12_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P12_CVFR_PERIOD_LO_WIDTH                              0
`define REGA_P12_CVFR_PERIOD_LO                               13'hc11
`define P12_CVFR_PERIOD_LO                                    `P12_CVFR_PERIOD_LO_WIDTH, `REGA_P12_CVFR_PERIOD_LO, `P12_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P12_CVFR_PERIOD_HI_WIDTH                              0
`define REGA_P12_CVFR_PERIOD_HI                               13'hc12
`define P12_CVFR_PERIOD_HI                                    `P12_CVFR_PERIOD_HI_WIDTH, `REGA_P12_CVFR_PERIOD_HI, `P12_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P12_OBSERVATION_WIDTH                                 0
`define REGA_P12_OBSERVATION                                  13'hc15
`define P12_OBSERVATION                                       `P12_OBSERVATION_WIDTH, `REGA_P12_OBSERVATION, `P12_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P12_BURST_MOTION_WIDTH                                0
`define REGA_P12_BURST_MOTION                                 13'hc16
`define P12_BURST_MOTION                                      `P12_BURST_MOTION_WIDTH, `REGA_P12_BURST_MOTION, `P12_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P12_SQUAL2_WIDTH                                      0
`define REGA_P12_SQUAL2                                       13'hc17
`define P12_SQUAL2                                            `P12_SQUAL2_WIDTH, `REGA_P12_SQUAL2, `P12_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P12_SPI_MODE_WIDTH                                    0
`define REGA_P12_SPI_MODE                                     13'hc18
`define P12_SPI_MODE                                          `P12_SPI_MODE_WIDTH, `REGA_P12_SPI_MODE, `P12_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P12_OSC_TUNE_INSTR_WIDTH                              0
`define REGA_P12_OSC_TUNE_INSTR                               13'hc22
`define P12_OSC_TUNE_INSTR                                    `P12_OSC_TUNE_INSTR_WIDTH, `REGA_P12_OSC_TUNE_INSTR, `P12_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P12_OSC_TUNE_INSTR_SLOW_WIDTH                         0
`define REGA_P12_OSC_TUNE_INSTR_SLOW                          13'hc23
`define P12_OSC_TUNE_INSTR_SLOW                               `P12_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P12_OSC_TUNE_INSTR_SLOW, `P12_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P12_PRBS_MODE_WIDTH                                   0
`define REGA_P12_PRBS_MODE                                    13'hc30
`define P12_PRBS_MODE                                         `P12_PRBS_MODE_WIDTH, `REGA_P12_PRBS_MODE, `P12_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P12_POWERDOWN_WIDTH                                   0
`define REGA_P12_POWERDOWN                                    13'hc32
`define P12_POWERDOWN                                         `P12_POWERDOWN_WIDTH, `REGA_P12_POWERDOWN, `P12_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P12_CRC0_WIDTH                                        0
`define REGA_P12_CRC0                                         13'hc33
`define P12_CRC0                                              `P12_CRC0_WIDTH, `REGA_P12_CRC0, `P12_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P12_CRC1_WIDTH                                        0
`define REGA_P12_CRC1                                         13'hc34
`define P12_CRC1                                              `P12_CRC1_WIDTH, `REGA_P12_CRC1, `P12_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P12_CRC2_WIDTH                                        0
`define REGA_P12_CRC2                                         13'hc35
`define P12_CRC2                                              `P12_CRC2_WIDTH, `REGA_P12_CRC2, `P12_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P12_CRC3_WIDTH                                        0
`define REGA_P12_CRC3                                         13'hc36
`define P12_CRC3                                              `P12_CRC3_WIDTH, `REGA_P12_CRC3, `P12_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P12_IOSTATUS_WIDTH                                    0
`define REGA_P12_IOSTATUS                                     13'hc37
`define P12_IOSTATUS                                          `P12_IOSTATUS_WIDTH, `REGA_P12_IOSTATUS, `P12_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P12_TAP_KEY_WO_WIDTH                                  0
`define REGA_P12_TAP_KEY_WO                                   13'hc38
`define P12_TAP_KEY_WO                                        `P12_TAP_KEY_WO_WIDTH, `REGA_P12_TAP_KEY_WO, `P12_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P12_TAP_KEY_WIDTH                                     0
`define REGA_P12_TAP_KEY                                      13'hc39
`define P12_TAP_KEY                                           `P12_TAP_KEY_WIDTH, `REGA_P12_TAP_KEY, `P12_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P12_POWER_UP_RESET_WIDTH                              0
`define REGA_P12_POWER_UP_RESET                               13'hc3a
`define P12_POWER_UP_RESET                                    `P12_POWER_UP_RESET_WIDTH, `REGA_P12_POWER_UP_RESET, `P12_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P12_SHUTDOWN_WIDTH                                    0
`define REGA_P12_SHUTDOWN                                     13'hc3b
`define P12_SHUTDOWN                                          `P12_SHUTDOWN_WIDTH, `REGA_P12_SHUTDOWN, `P12_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P12_SCAN_MODE_WIDTH                                   0
`define REGA_P12_SCAN_MODE                                    13'hc3c
`define P12_SCAN_MODE                                         `P12_SCAN_MODE_WIDTH, `REGA_P12_SCAN_MODE, `P12_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P12_SPI_PAGE_WIDTH                                    0
`define REGA_P12_SPI_PAGE                                     13'hc7f
`define P12_SPI_PAGE                                          `P12_SPI_PAGE_WIDTH, `REGA_P12_SPI_PAGE, `P12_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define SQ_TH_PAF_LO_WIDTH                                    8
`define REGA_SQ_TH_PAF_LO                                     13'hc41
`define SQ_TH_PAF_LO_DEFAULT                                  8'h34
`define SQ_TH_PAF_LO_CHECK                                    8'h34
`define SQ_TH_PAF_LO                                          `SQ_TH_PAF_LO_WIDTH, `REGA_SQ_TH_PAF_LO, `SQ_TH_PAF_LO_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x34    SQ_TH_PAF_LO
//                  If current frame is PAF, use BIN_TH_HI image binarization threshold if SQUAL2 > SQ_TH_PAF_LO, else use BIN_TH_LO image binarization if SQUAL2 <= SQ_TH_PAF_LO.

`define BIN_TH_HI_WIDTH                                       7
`define REGA_BIN_TH_HI                                        13'hc42
`define BIN_TH_HI_DEFAULT                                     7'ha
`define BIN_TH_HI_CHECK                                       7'ha
`define BIN_TH_HI                                             `BIN_TH_HI_WIDTH, `REGA_BIN_TH_HI, `BIN_TH_HI_DEFAULT
//  access       rw
//  atype        A
//  6:0  0xa     BIN_TH_HI
//                  If High Squal, lift algo binarizes image as follows, Binary Image Pixel High if Raw Image Pixel > BIN_TH_HI

`define BIN_TH_LO_WIDTH                                       7
`define REGA_BIN_TH_LO                                        13'hc43
`define BIN_TH_LO_DEFAULT                                     7'h30
`define BIN_TH_LO_CHECK                                       7'h30
`define BIN_TH_LO                                             `BIN_TH_LO_WIDTH, `REGA_BIN_TH_LO, `BIN_TH_LO_DEFAULT
//  access       rw
//  atype        A
//  6:0  0x30    BIN_TH_LO
//                  If Low Squal, lift algo binarizes image as follows, Binary Image Pixel High if Raw Image Pixel > BIN_TH_LO

`define EIDX_TH_WIDTH                                         7
`define REGA_EIDX_TH                                          13'hc44
`define EIDX_TH_DEFAULT                                       7'h7
`define EIDX_TH_CHECK                                         7'h7
`define EIDX_TH                                               `EIDX_TH_WIDTH, `REGA_EIDX_TH, `EIDX_TH_DEFAULT
//  access       rw
//  atype        A
//  6:0  0x7     EIDX_TH
//                  Lift edge assert threshold

`define EIDX_TH_LHYST_WIDTH                                   7
`define REGA_EIDX_TH_LHYST                                    13'hc45
`define EIDX_TH_LHYST_DEFAULT                                 7'h2
`define EIDX_TH_LHYST_CHECK                                   7'h2
`define EIDX_TH_LHYST                                         `EIDX_TH_LHYST_WIDTH, `REGA_EIDX_TH_LHYST, `EIDX_TH_LHYST_DEFAULT
//  access       rw
//  atype        A
//  6:0  0x2     EIDX_TH_LHYST
//                  Lift edge deassert threshold

`define EIDX_COLSTART_WIDTH                                   6
`define REGA_EIDX_COLSTART                                    13'hc46
`define EIDX_COLSTART_DEFAULT                                 6'h2
`define EIDX_COLSTART_CHECK                                   6'h2
`define EIDX_COLSTART                                         `EIDX_COLSTART_WIDTH, `REGA_EIDX_COLSTART, `EIDX_COLSTART_DEFAULT
//  access       rw
//  atype        A
//  5:0  0x2     EIDX_COLSTART
//                  Lift Edge Start Column

`define HYST_TH_WIDTH                                         6
`define REGA_HYST_TH                                          13'hc47
`define HYST_TH_DEFAULT                                       6'h8
`define HYST_TH_CHECK                                         6'h8
`define HYST_TH                                               `HYST_TH_WIDTH, `REGA_HYST_TH, `HYST_TH_DEFAULT
//  access       rw
//  atype        A
//  5:0  0x8     HYST_TH
//                  Lift Hysteresis Threshold

`define START_TH_WIDTH                                        6
`define REGA_START_TH                                         13'hc48
`define START_TH_DEFAULT                                      6'h3
`define START_TH_CHECK                                        6'h3
`define START_TH                                              `START_TH_WIDTH, `REGA_START_TH, `START_TH_DEFAULT
//  access       rw
//  atype        A
//  5:0  0x3     START_TH
//                  The Lift algo block is executed every Nth frame where N is determined by this register.

`define SQ_TH_HYST_WIDTH                                      8
`define REGA_SQ_TH_HYST                                       13'hc49
`define SQ_TH_HYST_DEFAULT                                    8'h8
`define SQ_TH_HYST_CHECK                                      8'h8
`define SQ_TH_HYST                                            `SQ_TH_HYST_WIDTH, `REGA_SQ_TH_HYST, `SQ_TH_HYST_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x8     SQ_TH_HYST
//                  Once Lift Edge is detected, the squal threshold to determine high / low squal is raised by the the value of this register.

`define LIFT_BIGSHUT_HI_TH_WIDTH                              8
`define REGA_LIFT_BIGSHUT_HI_TH                               13'hc4a
`define LIFT_BIGSHUT_HI_TH_DEFAULT                            8'h1c
`define LIFT_BIGSHUT_HI_TH_CHECK                              8'h1c
`define LIFT_BIGSHUT_HI_TH                                    `LIFT_BIGSHUT_HI_TH_WIDTH, `REGA_LIFT_BIGSHUT_HI_TH, `LIFT_BIGSHUT_HI_TH_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x1c    LIFT_BIGSHUT_HI_TH
//                  If shutter[12:5] < LIFT_BIGSHUT_HI_TH, use BIN_TH_BIGSHUT lift binarization threshold

`define LIFT_BIGSHUT_LO_TH_WIDTH                              8
`define REGA_LIFT_BIGSHUT_LO_TH                               13'hc4b
`define LIFT_BIGSHUT_LO_TH_DEFAULT                            8'h14
`define LIFT_BIGSHUT_LO_TH_CHECK                              8'h14
`define LIFT_BIGSHUT_LO_TH                                    `LIFT_BIGSHUT_LO_TH_WIDTH, `REGA_LIFT_BIGSHUT_LO_TH, `LIFT_BIGSHUT_LO_TH_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x14    LIFT_BIGSHUT_LO_TH
//                  If shutter[12:5] > LIFT_BIGSHUT_LO_TH, use BIN_TH_BIGSHUT lift binarization threshold

`define BIN_TH_BIGSHUT_WIDTH                                  8
`define REGA_BIN_TH_BIGSHUT                                   13'hc4c
`define BIN_TH_BIGSHUT_DEFAULT                                8'h45
`define BIN_TH_BIGSHUT_CHECK                                  8'h45
`define BIN_TH_BIGSHUT                                        `BIN_TH_BIGSHUT_WIDTH, `REGA_BIN_TH_BIGSHUT, `BIN_TH_BIGSHUT_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x45    BIN_TH_BIGSHUT
//                  If shutter[12:5] > LIFT_BIGSHUT_LO_TH, use BIN_TH_BIGSHUT lift binarization threshold

`define LIFT_DEASSERT_DELAY_TH_WIDTH                          8
`define REGA_LIFT_DEASSERT_DELAY_TH                           13'hc4d
`define LIFT_DEASSERT_DELAY_TH_DEFAULT                        8'h2
`define LIFT_DEASSERT_DELAY_TH_CHECK                          8'h2
`define LIFT_DEASSERT_DELAY_TH                                `LIFT_DEASSERT_DELAY_TH_WIDTH, `REGA_LIFT_DEASSERT_DELAY_TH, `LIFT_DEASSERT_DELAY_TH_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x2     LIFT_DEASSERT_DELAY_TH
//                  Lift edge flag will continue asserting for N frames after lift edge algo says sensor is no longer lifted.
//                  N = 0x14 x 2^6= 1280 frames.

`define LIFT_CONFIG_WIDTH                                     8
`define REGA_LIFT_CONFIG                                      13'hc4e
`define LIFT_CONFIG_DEFAULT                                   8'h8
`define LIFT_CONFIG_CHECK                                     8'h8
`define LIFT_CONFIG                                           `LIFT_CONFIG_WIDTH, `REGA_LIFT_CONFIG, `LIFT_CONFIG_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     LIFT_AUTO_MODE_EN
//                  Enable Auto Lift Edge Height HI and LO setting switching.
//                  1: Enable LIFT_AUTO_MODE
//                  0: Enable LIFT_MANUAL_MODE
//    6  0x0     BURST_LIFT_DATA
//                  1: Enable SPI Burst Lift Data
//                  0: Disable SPI BUrst Lift Data
//  5:4  0x0     LIFT_AUTO_MODE_SETTING
//                  Lift Auto Mode Setting
//                  0x0: 1.0mm / 2.0mm
//                  0x1: 1.0mm / 3.0mm
//                  0x2: 2.0mm / 3.0mm
//                  Example : 0x00 - 1.0 mm/2.0mm - Set to Lift Height Cut off 2mm setting initially.  Once lifted, set to 1.0 mm setting.
//                  1mm is considered lo setting and 2mm is considered hi setting.
//    3  0x1     LIFT_EDGE_EN
//                  Lift Edge enable bits
//    2  0x0     Reserved
//                  Reserved
//  1:0  0x0     LIFT_MANUAL_MODE_SETTING
//                  Lift Manual Mode Setting
//                  0x0: 1.0mm
//                  0x1: 2.0mm
//                  0x2: 3.0mm
//                  Example : 0x00 - 1.0mm - Set to Lift Height Cut off 1.0mm setting.
//                  EIDX_TH, SQ_TH_PAF_LO, PACC_NOLIFT_TH are different in each lift cut off setting.

`define LEDGE_INDEX_WIDTH                                     8
`define REGA_LEDGE_INDEX                                      13'hc4f
`define LEDGE_INDEX_DEFAULT                                   8'h0
`define LEDGE_INDEX_CHECK                                     8'h0
`define LEDGE_INDEX                                           `LEDGE_INDEX_WIDTH, `REGA_LEDGE_INDEX, `LEDGE_INDEX_DEFAULT
//  access       ro
//  atype        A
//    7  0x0     LIFTED_FLAG_RAW
//                  0: Lifted not detected
//                  1: Lifted detected
//  6:0  0x0     LIFT_EDGE_INDEX
//                  Lift edge block raw output

`define PACC_COLSTART_WIDTH                                   6
`define REGA_PACC_COLSTART                                    13'hc50
`define PACC_COLSTART_DEFAULT                                 6'h0
`define PACC_COLSTART_CHECK                                   6'h0
`define PACC_COLSTART                                         `PACC_COLSTART_WIDTH, `REGA_PACC_COLSTART, `PACC_COLSTART_DEFAULT
//  access       rw
//  atype        A
//  5:0  0x0     PACC_COLSTART
//                  Lift Pixel Accumulator Start Column

`define PACC_COLEND_WIDTH                                     6
`define REGA_PACC_COLEND                                      13'hc51
`define PACC_COLEND_DEFAULT                                   6'h1
`define PACC_COLEND_CHECK                                     6'h1
`define PACC_COLEND                                           `PACC_COLEND_WIDTH, `REGA_PACC_COLEND, `PACC_COLEND_DEFAULT
//  access       rw
//  atype        A
//  5:0  0x1     PACC_COLEND
//                  Lift Pixel Accumulator End Column

`define PACC_NOLIFT_TH_WIDTH                                  7
`define REGA_PACC_NOLIFT_TH                                   13'hc52
`define PACC_NOLIFT_TH_DEFAULT                                7'h36
`define PACC_NOLIFT_TH_CHECK                                  7'h36
`define PACC_NOLIFT_TH                                        `PACC_NOLIFT_TH_WIDTH, `REGA_PACC_NOLIFT_TH, `PACC_NOLIFT_TH_DEFAULT
//  access       rw
//  atype        A
//  6:0  0x36    PACC_NOLIFT_TH
//                  Lift Pixel Accumulator Not Lifted Threshold

`define EIDX_TH_2MM_WIDTH                                     7
`define REGA_EIDX_TH_2MM                                      13'hc53
`define EIDX_TH_2MM_DEFAULT                                   7'h16
`define EIDX_TH_2MM_CHECK                                     7'h16
`define EIDX_TH_2MM                                           `EIDX_TH_2MM_WIDTH, `REGA_EIDX_TH_2MM, `EIDX_TH_2MM_DEFAULT
//  access       rw
//  atype        A
//  6:0  0x16    EIDX_TH_2MM
//                  Lift edge assert threshold

`define EIDX_TH_3MM_WIDTH                                     7
`define REGA_EIDX_TH_3MM                                      13'hc54
`define EIDX_TH_3MM_DEFAULT                                   7'h1e
`define EIDX_TH_3MM_CHECK                                     7'h1e
`define EIDX_TH_3MM                                           `EIDX_TH_3MM_WIDTH, `REGA_EIDX_TH_3MM, `EIDX_TH_3MM_DEFAULT
//  access       rw
//  atype        A
//  6:0  0x1e    EIDX_TH_3MM
//                  Lift edge assert threshold

`define SQ_TH_PAF_LO_2MM_WIDTH                                8
`define REGA_SQ_TH_PAF_LO_2MM                                 13'hc55
`define SQ_TH_PAF_LO_2MM_DEFAULT                              8'h10
`define SQ_TH_PAF_LO_2MM_CHECK                                8'h10
`define SQ_TH_PAF_LO_2MM                                      `SQ_TH_PAF_LO_2MM_WIDTH, `REGA_SQ_TH_PAF_LO_2MM, `SQ_TH_PAF_LO_2MM_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x10    SQ_TH_PAF_LO_2MM
//                  If current frame is PAF, use BIN_TH_HI image binarization threshold if SQUAL2 > SQ_TH_PAF_LO, else use BIN_TH_LO image binarization if SQUAL2 <= SQ_TH_PAF_LO.

`define SQ_TH_PAF_LO_3MM_WIDTH                                8
`define REGA_SQ_TH_PAF_LO_3MM                                 13'hc56
`define SQ_TH_PAF_LO_3MM_DEFAULT                              8'ha
`define SQ_TH_PAF_LO_3MM_CHECK                                8'ha
`define SQ_TH_PAF_LO_3MM                                      `SQ_TH_PAF_LO_3MM_WIDTH, `REGA_SQ_TH_PAF_LO_3MM, `SQ_TH_PAF_LO_3MM_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xa     SQ_TH_PAF_LO_3MM
//                  If current frame is PAF, use BIN_TH_HI image binarization threshold if SQUAL2 > SQ_TH_PAF_LO, else use BIN_TH_LO image binarization if SQUAL2 <= SQ_TH_PAF_LO.

`define PACC_NOLIFT_TH_2MM_WIDTH                              7
`define REGA_PACC_NOLIFT_TH_2MM                               13'hc57
`define PACC_NOLIFT_TH_2MM_DEFAULT                            7'h36
`define PACC_NOLIFT_TH_2MM_CHECK                              7'h36
`define PACC_NOLIFT_TH_2MM                                    `PACC_NOLIFT_TH_2MM_WIDTH, `REGA_PACC_NOLIFT_TH_2MM, `PACC_NOLIFT_TH_2MM_DEFAULT
//  access       rw
//  atype        A
//  6:0  0x36    PACC_NOLIFT_TH_2MM
//                  Lift Pixel Accumulator Not Lifted Threshold

`define PACC_NOLIFT_TH_3MM_WIDTH                              7
`define REGA_PACC_NOLIFT_TH_3MM                               13'hc58
`define PACC_NOLIFT_TH_3MM_DEFAULT                            7'h36
`define PACC_NOLIFT_TH_3MM_CHECK                              7'h36
`define PACC_NOLIFT_TH_3MM                                    `PACC_NOLIFT_TH_3MM_WIDTH, `REGA_PACC_NOLIFT_TH_3MM, `PACC_NOLIFT_TH_3MM_DEFAULT
//  access       rw
//  atype        A
//  6:0  0x36    PACC_NOLIFT_TH_3MM
//                  Lift Pixel Accumulator Not Lifted Threshold

`define N_FRAME_WIDTH                                         8
`define REGA_N_FRAME                                          13'hc59
`define N_FRAME_DEFAULT                                       8'h7
`define N_FRAME_CHECK                                         8'h7
`define N_FRAME                                               `N_FRAME_WIDTH, `REGA_N_FRAME, `N_FRAME_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x7     N_FRAME
//                  N-Frame to delay the switching from LIFT_LO_SETTING to LIFT_HI_SETTING

`define EIDX_TH_1P5MM_LOOSE_WIDTH                             7
`define REGA_EIDX_TH_1P5MM_LOOSE                              13'hc5a
`define EIDX_TH_1P5MM_LOOSE_DEFAULT                           7'h1e
`define EIDX_TH_1P5MM_LOOSE_CHECK                             7'h1e
`define EIDX_TH_1P5MM_LOOSE                                   `EIDX_TH_1P5MM_LOOSE_WIDTH, `REGA_EIDX_TH_1P5MM_LOOSE, `EIDX_TH_1P5MM_LOOSE_DEFAULT
//  access       rw
//  atype        A
//  6:0  0x1e    EIDX_TH_1P5MM_LOOSE
//                  Lift edge assert threshold

`define LIFT_CONFIG2_WIDTH                                    5
`define REGA_LIFT_CONFIG2                                     13'hc5b
`define LIFT_CONFIG2_DEFAULT                                  5'h11
`define LIFT_CONFIG2_CHECK                                    5'h11
`define LIFT_CONFIG2                                          `LIFT_CONFIG2_WIDTH, `REGA_LIFT_CONFIG2, `LIFT_CONFIG2_DEFAULT
//  access       rw
//  atype        A
//  4:2  0x4     EN_HIGH_SPEED_LIFT_CONFIG
//                  Enable HIGH SPEED LIFT Config
//                  0x0: Disable
//                  0x1: Enable 1mm
//                  0x2: Enable 2mm
//                  0x3: Enable 3mm
//                  0x4: ALL ON
//                  Enable the high speed lift based on 1mm, 2mm, 3mm setting.
//  1:0  0x1     EN_PIX_MAX_ACCUM_HEIGHT
//                  Enable PIX_MAX_ACCUM for 1/2mm lift setting
//                  0x0: Disable
//                  0x1: Enable 1mm
//                  0x2: Enable 2mm
//                  This setting enable the PIX_MAX_ACCUM ALGO based on LIFT height setting.
//                  Enable 1mm for Universal Lift 1mm, Hyterisis Lift 1mm/2mm and 1mm/3mm
//                  Enable 2mm for Universal Lift 2mm, Hyterisis Lift 2mm/3mm

`define LIFT_CONFIG3_WIDTH                                    2
`define REGA_LIFT_CONFIG3                                     13'hc5c
`define LIFT_CONFIG3_DEFAULT                                  2'h2
`define LIFT_CONFIG3_CHECK                                    2'h2
`define LIFT_CONFIG3                                          `LIFT_CONFIG3_WIDTH, `REGA_LIFT_CONFIG3, `LIFT_CONFIG3_DEFAULT
//  access       rw
//  atype        A
//  1:0  0x2     EN_RUN_EVERY_FRAMES
//                  Enable Run On Every Frames
//                  0x0: Disable
//                  0x1: Run on every frame triggered by quick lift
//                  0x2: Run on every frame triggered by 1mm lift

`define HYST_TH_L2T_WIDTH                                     6
`define REGA_HYST_TH_L2T                                      13'hc5d
`define HYST_TH_L2T_DEFAULT                                   6'h3
`define HYST_TH_L2T_CHECK                                     6'h3
`define HYST_TH_L2T                                           `HYST_TH_L2T_WIDTH, `REGA_HYST_TH_L2T, `HYST_TH_L2T_DEFAULT
//  access       rw
//  atype        A
//  5:0  0x3     HYST_TH_L2T
//                  Lift Hysteresis Lift to TrackThreshold

`define LP_ALGO_EN_WIDTH                                      5
`define REGA_LP_ALGO_EN                                       13'hc5e
`define LP_ALGO_EN_DEFAULT                                    5'h7
`define LP_ALGO_EN_CHECK                                      5'h7
`define LP_ALGO_EN                                            `LP_ALGO_EN_WIDTH, `REGA_LP_ALGO_EN, `LP_ALGO_EN_DEFAULT
//  access       rw
//  atype        A
//    4  0x0     EN_LIFT_HYST_MODE_WITH_LOW_SQUAL
//                  Enable lift hysterisis mode to switch to lift low threshold setting during low squal.
//    3  0x0     EN_CLEAR_EDGE_INDEX_DURING_HIGH_SPEED
//                  Enable clear the edge index when high speed and flattern image.
//    2  0x1     EN_EIDX_TH_LHYST during not flattern Image.
//                  Enable edge index lhyst when not flattern image.
//    1  0x1     EN_QUICK_LIFT_HYST_SW
//                  Enable EIDX_TH_INCR_TH in lift hysterisis count.
//    0  0x1     LP_ALGO_EN
//                  Lifted Pixel (LP) Algorithm Enable

`define EIDX_TH_2MM_LOOSE_WIDTH                               7
`define REGA_EIDX_TH_2MM_LOOSE                                13'hc5f
`define EIDX_TH_2MM_LOOSE_DEFAULT                             7'h16
`define EIDX_TH_2MM_LOOSE_CHECK                               7'h16
`define EIDX_TH_2MM_LOOSE                                     `EIDX_TH_2MM_LOOSE_WIDTH, `REGA_EIDX_TH_2MM_LOOSE, `EIDX_TH_2MM_LOOSE_DEFAULT
//  access       rw
//  atype        A
//  6:0  0x16    EIDX_TH_2MM_LOOSE
//                  Lift edge assert threshold

`define LP_BIGSHUT_TH_WIDTH                                   8
`define REGA_LP_BIGSHUT_TH                                    13'hc61
`define LP_BIGSHUT_TH_DEFAULT                                 8'h14
`define LP_BIGSHUT_TH_CHECK                                   8'h14
`define LP_BIGSHUT_TH                                         `LP_BIGSHUT_TH_WIDTH, `REGA_LP_BIGSHUT_TH, `LP_BIGSHUT_TH_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x14    LP_BIGSHUT_TH
//                  Lifted pixel shutter threshold

`define LP_LOW_SQUAL_TH_WIDTH                                 8
`define REGA_LP_LOW_SQUAL_TH                                  13'hc62
`define LP_LOW_SQUAL_TH_DEFAULT                               8'h10
`define LP_LOW_SQUAL_TH_CHECK                                 8'h10
`define LP_LOW_SQUAL_TH                                       `LP_LOW_SQUAL_TH_WIDTH, `REGA_LP_LOW_SQUAL_TH, `LP_LOW_SQUAL_TH_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x10    LP_LOW_SQUAL_TH
//                  Lifted pixel low squal threshold

`define EIDX_TH_INCR_TH_WIDTH                                 7
`define REGA_EIDX_TH_INCR_TH                                  13'hc65
`define EIDX_TH_INCR_TH_DEFAULT                               7'h5
`define EIDX_TH_INCR_TH_CHECK                                 7'h5
`define EIDX_TH_INCR_TH                                       `EIDX_TH_INCR_TH_WIDTH, `REGA_EIDX_TH_INCR_TH, `EIDX_TH_INCR_TH_DEFAULT
//  access       rw
//  atype        A
//  6:0  0x5     EIDX_TH_INCR_TH
//                  Lift edge assert Increment threshold

`define BIN_TH_LO_2MM_WIDTH                                   7
`define REGA_BIN_TH_LO_2MM                                    13'hc66
`define BIN_TH_LO_2MM_DEFAULT                                 7'h30
`define BIN_TH_LO_2MM_CHECK                                   7'h30
`define BIN_TH_LO_2MM                                         `BIN_TH_LO_2MM_WIDTH, `REGA_BIN_TH_LO_2MM, `BIN_TH_LO_2MM_DEFAULT
//  access       rw
//  atype        A
//  6:0  0x30    BIN_TH_LO_2MM
//                  If Low Squal, lift algo binarizes image as follows, Binary Image Pixel High if Raw Image Pixel > BIN_TH_LO_2MM

`define BIN_TH_LO_3MM_WIDTH                                   7
`define REGA_BIN_TH_LO_3MM                                    13'hc67
`define BIN_TH_LO_3MM_DEFAULT                                 7'h38
`define BIN_TH_LO_3MM_CHECK                                   7'h38
`define BIN_TH_LO_3MM                                         `BIN_TH_LO_3MM_WIDTH, `REGA_BIN_TH_LO_3MM, `BIN_TH_LO_3MM_DEFAULT
//  access       rw
//  atype        A
//  6:0  0x38    BIN_TH_LO_3MM
//                  If Low Squal, lift algo binarizes image as follows, Binary Image Pixel High if Raw Image Pixel > BIN_TH_LO_3MM

`define LIFT_STATUS_WIDTH                                     4
`define REGA_LIFT_STATUS                                      13'hc68
`define LIFT_STATUS_DEFAULT                                   4'h0
`define LIFT_STATUS_CHECK                                     4'h0
`define LIFT_STATUS                                           `LIFT_STATUS_WIDTH, `REGA_LIFT_STATUS, `LIFT_STATUS_DEFAULT
//  access       ro
//  atype        A
//    3  0x0     AUTO_MODE_HI
//                  Auto Mode Hi Flag
//                  0x1: In Lift Hysterisis Mode, using HI SETTING
//                  0x0: In Lift Hysterisis Mode, using LO SETTING
//    2  0x0     PIX_MAX_ACC_DIFF
//                  Pixel Max Accum Diff Flag
//                  0x1: pix_max_acc_diff greater than pix_max_acc_diff threshold
//                  0x0: pix_max_acc_diff lesser than pix_max_acc_diff threshold
//  1:0  0x0     LIFT_SETTING_SW
//                  Current LIFT Setting
//                  0x1: Lift Setting 1mm
//                  0x2: Lift Setting 2mm
//                  0x3: Lift Setting 3mm


`define P13_PROD_ID_WIDTH                                     0
`define REGA_P13_PROD_ID                                      13'hd00
`define P13_PROD_ID                                           `P13_PROD_ID_WIDTH, `REGA_P13_PROD_ID, `P13_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P13_REV_ID_WIDTH                                      0
`define REGA_P13_REV_ID                                       13'hd01
`define P13_REV_ID                                            `P13_REV_ID_WIDTH, `REGA_P13_REV_ID, `P13_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P13_MOTION_WIDTH                                      0
`define REGA_P13_MOTION                                       13'hd02
`define P13_MOTION                                            `P13_MOTION_WIDTH, `REGA_P13_MOTION, `P13_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P13_DELTA_X_LO_WIDTH                                  0
`define REGA_P13_DELTA_X_LO                                   13'hd03
`define P13_DELTA_X_LO                                        `P13_DELTA_X_LO_WIDTH, `REGA_P13_DELTA_X_LO, `P13_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P13_DELTA_X_HI_WIDTH                                  0
`define REGA_P13_DELTA_X_HI                                   13'hd04
`define P13_DELTA_X_HI                                        `P13_DELTA_X_HI_WIDTH, `REGA_P13_DELTA_X_HI, `P13_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P13_DELTA_Y_LO_WIDTH                                  0
`define REGA_P13_DELTA_Y_LO                                   13'hd05
`define P13_DELTA_Y_LO                                        `P13_DELTA_Y_LO_WIDTH, `REGA_P13_DELTA_Y_LO, `P13_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P13_DELTA_Y_HI_WIDTH                                  0
`define REGA_P13_DELTA_Y_HI                                   13'hd06
`define P13_DELTA_Y_HI                                        `P13_DELTA_Y_HI_WIDTH, `REGA_P13_DELTA_Y_HI, `P13_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P13_SQUAL_WIDTH                                       0
`define REGA_P13_SQUAL                                        13'hd07
`define P13_SQUAL                                             `P13_SQUAL_WIDTH, `REGA_P13_SQUAL, `P13_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P13_PIX_ACCUM_WIDTH                                   0
`define REGA_P13_PIX_ACCUM                                    13'hd08
`define P13_PIX_ACCUM                                         `P13_PIX_ACCUM_WIDTH, `REGA_P13_PIX_ACCUM, `P13_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P13_PIX_MAX_WIDTH                                     0
`define REGA_P13_PIX_MAX                                      13'hd09
`define P13_PIX_MAX                                           `P13_PIX_MAX_WIDTH, `REGA_P13_PIX_MAX, `P13_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P13_PIX_MIN_WIDTH                                     0
`define REGA_P13_PIX_MIN                                      13'hd0a
`define P13_PIX_MIN                                           `P13_PIX_MIN_WIDTH, `REGA_P13_PIX_MIN, `P13_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P13_SHUT_LO_WIDTH                                     0
`define REGA_P13_SHUT_LO                                      13'hd0b
`define P13_SHUT_LO                                           `P13_SHUT_LO_WIDTH, `REGA_P13_SHUT_LO, `P13_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P13_SHUT_HI_WIDTH                                     0
`define REGA_P13_SHUT_HI                                      13'hd0c
`define P13_SHUT_HI                                           `P13_SHUT_HI_WIDTH, `REGA_P13_SHUT_HI, `P13_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P13_EXT_WAKEUP_WIDTH                                  0
`define REGA_P13_EXT_WAKEUP                                   13'hd0d
`define P13_EXT_WAKEUP                                        `P13_EXT_WAKEUP_WIDTH, `REGA_P13_EXT_WAKEUP, `P13_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P13_RESERVED_E_WIDTH                                  0
`define REGA_P13_RESERVED_E                                   13'hd0e
`define P13_RESERVED_E                                        `P13_RESERVED_E_WIDTH, `REGA_P13_RESERVED_E, `P13_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P13_SKIP_FRAMES_CNT_LO_WIDTH                          0
`define REGA_P13_SKIP_FRAMES_CNT_LO                           13'hd0f
`define P13_SKIP_FRAMES_CNT_LO                                `P13_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P13_SKIP_FRAMES_CNT_LO, `P13_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P13_SKIP_FRAMES_CNT_HI_WIDTH                          0
`define REGA_P13_SKIP_FRAMES_CNT_HI                           13'hd10
`define P13_SKIP_FRAMES_CNT_HI                                `P13_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P13_SKIP_FRAMES_CNT_HI, `P13_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P13_CVFR_PERIOD_LO_WIDTH                              0
`define REGA_P13_CVFR_PERIOD_LO                               13'hd11
`define P13_CVFR_PERIOD_LO                                    `P13_CVFR_PERIOD_LO_WIDTH, `REGA_P13_CVFR_PERIOD_LO, `P13_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P13_CVFR_PERIOD_HI_WIDTH                              0
`define REGA_P13_CVFR_PERIOD_HI                               13'hd12
`define P13_CVFR_PERIOD_HI                                    `P13_CVFR_PERIOD_HI_WIDTH, `REGA_P13_CVFR_PERIOD_HI, `P13_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P13_OBSERVATION_WIDTH                                 0
`define REGA_P13_OBSERVATION                                  13'hd15
`define P13_OBSERVATION                                       `P13_OBSERVATION_WIDTH, `REGA_P13_OBSERVATION, `P13_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P13_BURST_MOTION_WIDTH                                0
`define REGA_P13_BURST_MOTION                                 13'hd16
`define P13_BURST_MOTION                                      `P13_BURST_MOTION_WIDTH, `REGA_P13_BURST_MOTION, `P13_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P13_SQUAL2_WIDTH                                      0
`define REGA_P13_SQUAL2                                       13'hd17
`define P13_SQUAL2                                            `P13_SQUAL2_WIDTH, `REGA_P13_SQUAL2, `P13_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P13_SPI_MODE_WIDTH                                    0
`define REGA_P13_SPI_MODE                                     13'hd18
`define P13_SPI_MODE                                          `P13_SPI_MODE_WIDTH, `REGA_P13_SPI_MODE, `P13_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P13_OSC_TUNE_INSTR_WIDTH                              0
`define REGA_P13_OSC_TUNE_INSTR                               13'hd22
`define P13_OSC_TUNE_INSTR                                    `P13_OSC_TUNE_INSTR_WIDTH, `REGA_P13_OSC_TUNE_INSTR, `P13_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P13_OSC_TUNE_INSTR_SLOW_WIDTH                         0
`define REGA_P13_OSC_TUNE_INSTR_SLOW                          13'hd23
`define P13_OSC_TUNE_INSTR_SLOW                               `P13_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P13_OSC_TUNE_INSTR_SLOW, `P13_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P13_PRBS_MODE_WIDTH                                   0
`define REGA_P13_PRBS_MODE                                    13'hd30
`define P13_PRBS_MODE                                         `P13_PRBS_MODE_WIDTH, `REGA_P13_PRBS_MODE, `P13_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P13_POWERDOWN_WIDTH                                   0
`define REGA_P13_POWERDOWN                                    13'hd32
`define P13_POWERDOWN                                         `P13_POWERDOWN_WIDTH, `REGA_P13_POWERDOWN, `P13_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P13_CRC0_WIDTH                                        0
`define REGA_P13_CRC0                                         13'hd33
`define P13_CRC0                                              `P13_CRC0_WIDTH, `REGA_P13_CRC0, `P13_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P13_CRC1_WIDTH                                        0
`define REGA_P13_CRC1                                         13'hd34
`define P13_CRC1                                              `P13_CRC1_WIDTH, `REGA_P13_CRC1, `P13_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P13_CRC2_WIDTH                                        0
`define REGA_P13_CRC2                                         13'hd35
`define P13_CRC2                                              `P13_CRC2_WIDTH, `REGA_P13_CRC2, `P13_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P13_CRC3_WIDTH                                        0
`define REGA_P13_CRC3                                         13'hd36
`define P13_CRC3                                              `P13_CRC3_WIDTH, `REGA_P13_CRC3, `P13_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P13_IOSTATUS_WIDTH                                    0
`define REGA_P13_IOSTATUS                                     13'hd37
`define P13_IOSTATUS                                          `P13_IOSTATUS_WIDTH, `REGA_P13_IOSTATUS, `P13_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P13_TAP_KEY_WO_WIDTH                                  0
`define REGA_P13_TAP_KEY_WO                                   13'hd38
`define P13_TAP_KEY_WO                                        `P13_TAP_KEY_WO_WIDTH, `REGA_P13_TAP_KEY_WO, `P13_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P13_TAP_KEY_WIDTH                                     0
`define REGA_P13_TAP_KEY                                      13'hd39
`define P13_TAP_KEY                                           `P13_TAP_KEY_WIDTH, `REGA_P13_TAP_KEY, `P13_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P13_POWER_UP_RESET_WIDTH                              0
`define REGA_P13_POWER_UP_RESET                               13'hd3a
`define P13_POWER_UP_RESET                                    `P13_POWER_UP_RESET_WIDTH, `REGA_P13_POWER_UP_RESET, `P13_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P13_SHUTDOWN_WIDTH                                    0
`define REGA_P13_SHUTDOWN                                     13'hd3b
`define P13_SHUTDOWN                                          `P13_SHUTDOWN_WIDTH, `REGA_P13_SHUTDOWN, `P13_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P13_SCAN_MODE_WIDTH                                   0
`define REGA_P13_SCAN_MODE                                    13'hd3c
`define P13_SCAN_MODE                                         `P13_SCAN_MODE_WIDTH, `REGA_P13_SCAN_MODE, `P13_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P13_SPI_PAGE_WIDTH                                    0
`define REGA_P13_SPI_PAGE                                     13'hd7f
`define P13_SPI_PAGE                                          `P13_SPI_PAGE_WIDTH, `REGA_P13_SPI_PAGE, `P13_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define MOVAVG_CONFIG_WIDTH                                   8
`define REGA_MOVAVG_CONFIG                                    13'hd48
`define MOVAVG_CONFIG_DEFAULT                                 8'hcc
`define MOVAVG_CONFIG_CHECK                                   8'hcc
`define MOVAVG_CONFIG                                         `MOVAVG_CONFIG_WIDTH, `REGA_MOVAVG_CONFIG, `MOVAVG_CONFIG_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     MOVAVG_EN
//                  0: Disable Motion Average Filter
//                  1: Enable Motion Average Filter
//    6  0x1     MOVAVG_NO_LIMIT
//                  0: Limit to minimum 2 taps
//                  1: No limit to taps setting
//    5  0x0     MOVAVG_CLR_ACCUM
//                  0: Do not clear accum during motion average taps change
//                  1: Clear accum during motion average taps change
//    4  0x0     LIFT_CLR_MOT
//                  Lift will clear motion average taps and motion accum
//  3:2  0x3     DPI_RANGE_4_FF_MA_SELECT_2BITS_MSB
//                  DPI_RANGE_4_FF_MA_SELECT_2BITS_MSB
//                  An increment/decrement to this register will change the dpi range by 13547.6 dpi
//    1  0x0     MOTION_SYNC_MOT_DET_EXT
//                  Disable Motion Sync motion pin assert for one more frame after motion becomes zero
//    0  0x0     MOTION_SYNC_EN
//                  Enable Motion Sync

`define MOVAVG_STATUS_WIDTH                                   8
`define REGA_MOVAVG_STATUS                                    13'hd49
`define MOVAVG_STATUS_DEFAULT                                 8'h81
`define MOVAVG_STATUS_CHECK                                   8'h81
`define MOVAVG_STATUS                                         `MOVAVG_STATUS_WIDTH, `REGA_MOVAVG_STATUS, `MOVAVG_STATUS_DEFAULT
//  access       ro
//  atype        A
//    7  0x1     MOVAVG_ON
//                  0: motion average filter disabled
//                  1: motion average filter enabled
//  6:3  0x0     Reserved
//                  Reserved
//  2:0  0x1     MOVAVG_TAPS
//                  Moving Average Filter Selection
//                  0: 1 tab
//                  1: 2 tabs
//                  2: 4 tabs
//                  3: 8 tabs
//                  4: 16 tabs
//                  5: 32 tabs
//                  Max Taps is 32

`define WAKEUP_FLAGS_WIDTH                                    8
`define REGA_WAKEUP_FLAGS                                     13'hd4a
`define WAKEUP_FLAGS_DEFAULT                                  8'h0
`define WAKEUP_FLAGS_CHECK                                    8'h0
`define WAKEUP_FLAGS                                          `WAKEUP_FLAGS_WIDTH, `REGA_WAKEUP_FLAGS, `WAKEUP_FLAGS_DEFAULT
//  access       ro
//  atype        A
//    7  0x0     RESERVED
//                  Reserved
//    6  0x0     PIXMON_WAKEUP_GATED
//                  1: Effective gated PIXMON wakeup to NAV.  Non-sticky bit.
//                  0: No wakeup
//    5  0x0     SQUAL_WAKEUP_GATED
//                  1: Effective gated SQUAL wakeup to NAV.  Non-sticky bit.
//                  0: No wakeup
//    4  0x0     DECOR_WAKEUP_GATED
//                  1: Effective gated DECOR wakeup to NAV.  Non-sticky bit.
//                  0: No wakeup
//    3  0x0     RESERVED
//                  Reserved
//    2  0x0     PIXMON_WAKEUP
//                  1: PIXMON wakeup asserted by PIXMON.  Sticky bit.  Reset on write.
//                  0: No wakeup
//    1  0x0     SQUAL_WAKEUP
//                  1: SQUAL wakeup asserted by DCR.  Sticky bit.  Reset on write.
//                  0: No wakeup
//    0  0x0     DECOR_WAKEUP
//                  1: DECOR wakeup asserted by COR.  Sticky bit.  Reset on write.
//                  0: No wakeup

`define HI_RES_THRESH_WIDTH                                   8
`define REGA_HI_RES_THRESH                                    13'hd4b
`define HI_RES_THRESH_DEFAULT                                 8'h64
`define HI_RES_THRESH_CHECK                                   8'h64
`define HI_RES_THRESH                                         `HI_RES_THRESH_WIDTH, `REGA_HI_RES_THRESH, `HI_RES_THRESH_DEFAULT
//  access       rw
//  atype        A,L
//  7:0  0x64    HI_RES_THRESH
//                  High Resolution threshold, 100dpi per step.

`define RES_DS_TK_WIDTH                                       8
`define REGA_RES_DS_TK                                        13'hd4d
`define RES_DS_TK_DEFAULT                                     8'h6b
`define RES_DS_TK_CHECK                                       8'h6b
`define RES_DS_TK                                             `RES_DS_TK_WIDTH, `REGA_RES_DS_TK, `RES_DS_TK_DEFAULT
//  access       rw
//  atype        A,L
//  7:0  0x6b    RES_DS_TK
//                  Resolution downshift tapkey: write 0x6b to unlock read/write mode

`define MA_TABLE_SEL_WIDTH                                    8
`define REGA_MA_TABLE_SEL                                     13'hd4f
`define MA_TABLE_SEL_DEFAULT                                  8'h0
`define MA_TABLE_SEL_CHECK                                    8'h0
`define MA_TABLE_SEL                                          `MA_TABLE_SEL_WIDTH, `REGA_MA_TABLE_SEL, `MA_TABLE_SEL_DEFAULT
//  access       rw
//  atype        A
//  7:2  0x0     Reserved
//                  Reserved
//  1:0  0x0     MA_TABLE_SEL
//                  Select which moving average table to use
//                  0: Programmable 0
//                  1: Programmable 1
//                  2: Programmable 2
//                  3: Programmable 3

`define DPI2_CLIP_TK_WIDTH                                    8
`define REGA_DPI2_CLIP_TK                                     13'hd50
`define DPI2_CLIP_TK_DEFAULT                                  8'he6
`define DPI2_CLIP_TK_CHECK                                    8'he6
`define DPI2_CLIP_TK                                          `DPI2_CLIP_TK_WIDTH, `REGA_DPI2_CLIP_TK, `DPI2_CLIP_TK_DEFAULT
//  access       rw
//  atype        A,L
//  7:0  0xe6    DPI2_CLIP_TK
//                  DPI2_CLIP tapkey: write 0xe6 to unlock

`define MA_TABLE1_HI_WIDTH                                    8
`define REGA_MA_TABLE1_HI                                     13'hd51
`define MA_TABLE1_HI_DEFAULT                                  8'h0
`define MA_TABLE1_HI_CHECK                                    8'h0
`define MA_TABLE1_HI                                          `MA_TABLE1_HI_WIDTH, `REGA_MA_TABLE1_HI, `MA_TABLE1_HI_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     MA_TABLE1_HI
//                  Moving Average Filter Selection
//                  0: 1 tab
//                  1: 2 tabs
//                  2: 4 tabs
//                  3: 8 tabs
//                  4: 16 tabs
//                  5: 32 tabs
//                  Moving average table 1 moving average = 0, 0, 1, 1, 1 taps
//                  Moving average table 1 = {1'b0,3'b000,3'b000,3'b001,3'b001,3'b001}
//                  Moving average table 1 = 16'h0009
//                  Moving average table 1 high byte = 8'h00.

`define MA_TABLE1_LO_WIDTH                                    8
`define REGA_MA_TABLE1_LO                                     13'hd52
`define MA_TABLE1_LO_DEFAULT                                  8'h49
`define MA_TABLE1_LO_CHECK                                    8'h49
`define MA_TABLE1_LO                                          `MA_TABLE1_LO_WIDTH, `REGA_MA_TABLE1_LO, `MA_TABLE1_LO_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x49    MA_TABLE1_LO
//                  Moving Average Filter Selection
//                  0: 1 tab
//                  1: 2 tabs
//                  2: 4 tabs
//                  3: 8 tabs
//                  4: 16 tabs
//                  5: 32 tabs
//                  Moving average table 1 moving average = 0, 0, 1, 1, 1 taps
//                  Moving average table 1 = {1'b0,3'b000,3'b000,3'b001,3'b001,3'b001}
//                  Moving average table 1 = 16'h0049
//                  Moving average table 1 high byte = 8'h49.

`define MA_TABLE2_HI_WIDTH                                    8
`define REGA_MA_TABLE2_HI                                     13'hd53
`define MA_TABLE2_HI_DEFAULT                                  8'h0
`define MA_TABLE2_HI_CHECK                                    8'h0
`define MA_TABLE2_HI                                          `MA_TABLE2_HI_WIDTH, `REGA_MA_TABLE2_HI, `MA_TABLE2_HI_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     MA_TABLE2_HI
//                  Moving Average Filter Selection
//                  0: 1 tab
//                  1: 2 tabs
//                  2: 4 tabs
//                  3: 8 tabs
//                  4: 16 tabs
//                  5: 32 tabs
//                  Moving average table 2 moving average = 0, 0, 2, 8, 8 taps
//                  Moving average table 2 = {1'b0,3'b000,3'b000,3'b001,3'b011,3'b011}
//                  Moving average table 2 = 16'h005B
//                  Moving average table 2 high byte = 8'h00.

`define MA_TABLE2_LO_WIDTH                                    8
`define REGA_MA_TABLE2_LO                                     13'hd54
`define MA_TABLE2_LO_DEFAULT                                  8'h5b
`define MA_TABLE2_LO_CHECK                                    8'h5b
`define MA_TABLE2_LO                                          `MA_TABLE2_LO_WIDTH, `REGA_MA_TABLE2_LO, `MA_TABLE2_LO_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x5b    MA_TABLE2_LO
//                  Moving Average Filter Selection
//                  0: 1 tab
//                  1: 2 tabs
//                  2: 4 tabs
//                  3: 8 tabs
//                  4: 16 tabs
//                  5: 32 tabs
//                  Moving average table 2 moving average = 0, 0, 2, 8, 8 taps
//                  Moving average table 2 = {1'b0,3'b000,3'b000,3'b001,3'b011,3'b011}
//                  Moving average table 2 = 16'h005B
//                  Moving average table 2 low byte = 8'h5B.

`define MA_TABLE3_HI_WIDTH                                    8
`define REGA_MA_TABLE3_HI                                     13'hd55
`define MA_TABLE3_HI_DEFAULT                                  8'h0
`define MA_TABLE3_HI_CHECK                                    8'h0
`define MA_TABLE3_HI                                          `MA_TABLE3_HI_WIDTH, `REGA_MA_TABLE3_HI, `MA_TABLE3_HI_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     MA_TABLE3_HI
//                  Moving Average Filter Selection
//                  0: 1 tab
//                  1: 2 tabs
//                  2: 4 tabs
//                  3: 8 tabs
//                  4: 16 tabs
//                  5: 32 tabs
//                  Moving average table 3 moving average = 0, 0, 2, 16, 16 taps
//                  Moving average table 3 = {1'b0,3'b000,3'b000,3'b001,3'b100,3'b100}
//                  Moving average table 3 = 16'h0064
//                  Moving average table 3 high byte = 8'h00.

`define MA_TABLE3_LO_WIDTH                                    8
`define REGA_MA_TABLE3_LO                                     13'hd56
`define MA_TABLE3_LO_DEFAULT                                  8'h64
`define MA_TABLE3_LO_CHECK                                    8'h64
`define MA_TABLE3_LO                                          `MA_TABLE3_LO_WIDTH, `REGA_MA_TABLE3_LO, `MA_TABLE3_LO_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x64    MA_TABLE3_LO
//                  Moving Average Filter Selection
//                  0: 1 tab
//                  1: 2 tabs
//                  2: 4 tabs
//                  3: 8 tabs
//                  4: 16 tabs
//                  5: 32 tabs
//                  Moving average table 3 moving average = 0, 0, 2, 16, 16 taps
//                  Moving average table 3 = {1'b0,3'b000,3'b000,3'b001,3'b100,3'b100}
//                  Moving average table 3 = 16'h0064
//                  Moving average table 3 low byte = 8'h64.

`define MA_TABLE4_HI_WIDTH                                    8
`define REGA_MA_TABLE4_HI                                     13'hd57
`define MA_TABLE4_HI_DEFAULT                                  8'h2
`define MA_TABLE4_HI_CHECK                                    8'h2
`define MA_TABLE4_HI                                          `MA_TABLE4_HI_WIDTH, `REGA_MA_TABLE4_HI, `MA_TABLE4_HI_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x2     MA_TABLE4_HI
//                  Moving Average Filter Selection
//                  0: 1 tab
//                  1: 2 tabs
//                  2: 4 tabs
//                  3: 8 tabs
//                  4: 16 tabs
//                  5: 32 tabs
//                  Moving average table 4 moving average = 0, 2, 4, 16, 32 taps
//                  Moving average table 4 = {1'b0,3'b000,3'b001,3'b010,3'b100,3'b101}
//                  Moving average table 4 = 16'h02A5
//                  Moving average table 4 high byte = 8'h02.

`define MA_TABLE4_LO_WIDTH                                    8
`define REGA_MA_TABLE4_LO                                     13'hd58
`define MA_TABLE4_LO_DEFAULT                                  8'ha5
`define MA_TABLE4_LO_CHECK                                    8'ha5
`define MA_TABLE4_LO                                          `MA_TABLE4_LO_WIDTH, `REGA_MA_TABLE4_LO, `MA_TABLE4_LO_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xa5    MA_TABLE4_LO
//                  Moving Average Filter Selection
//                  0: 1 tab
//                  1: 2 tabs
//                  2: 4 tabs
//                  3: 8 tabs
//                  4: 16 tabs
//                  5: 32 tabs
//                  Moving average table 4 moving average = 1, 2, 4, 16, 32 taps
//                  Moving average table 4 = {1'b0,3'b000,3'b001,3'b010,3'b100,3'b101}
//                  Moving average table 4 = 16'h02A5
//                  Moving average table 4 low byte = 8'hA5.

`define DPI_RANGE_4_FF_MA_SELECT_WIDTH                        8
`define REGA_DPI_RANGE_4_FF_MA_SELECT                         13'hd59
`define DPI_RANGE_4_FF_MA_SELECT_DEFAULT                      8'hff
`define DPI_RANGE_4_FF_MA_SELECT_CHECK                        8'hff
`define DPI_RANGE_4_FF_MA_SELECT                              `DPI_RANGE_4_FF_MA_SELECT_WIDTH, `REGA_DPI_RANGE_4_FF_MA_SELECT, `DPI_RANGE_4_FF_MA_SELECT_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xff    DPI_RANGE_4_FF_MA_SELECT
//                  Use max moving average for fixed filter when DPI setting (50dpi step) higher than this threshold

`define DPI_RANGE1_4_MA_SELECT_WIDTH                          8
`define REGA_DPI_RANGE1_4_MA_SELECT                           13'hd5a
`define DPI_RANGE1_4_MA_SELECT_DEFAULT                        8'h28
`define DPI_RANGE1_4_MA_SELECT_CHECK                          8'h28
`define DPI_RANGE1_4_MA_SELECT                                `DPI_RANGE1_4_MA_SELECT_WIDTH, `REGA_DPI_RANGE1_4_MA_SELECT, `DPI_RANGE1_4_MA_SELECT_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x28    DPI_RANGE1_4_MA_SELECT
//                  Together with DPI_RANGE2_4_MA_SELECT, DPI_RANGE3_4_MA_SELECT and DPI_RANGE4_4_MA_SELECT, used to determine which moving average
//                  An increment/decrement to this register will change the dpi range by 50 dpi
//                  Default value for this range was set to 0x28 (2000 dpi)

`define DPI_RANGE2_4_MA_SELECT_WIDTH                          8
`define REGA_DPI_RANGE2_4_MA_SELECT                           13'hd5b
`define DPI_RANGE2_4_MA_SELECT_DEFAULT                        8'h46
`define DPI_RANGE2_4_MA_SELECT_CHECK                          8'h46
`define DPI_RANGE2_4_MA_SELECT                                `DPI_RANGE2_4_MA_SELECT_WIDTH, `REGA_DPI_RANGE2_4_MA_SELECT, `DPI_RANGE2_4_MA_SELECT_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x46    DPI_RANGE2_4_MA_SELECT
//                  Together with DPI_RANGE1_4_MA_SELECT, DPI_RANGE3_4_MA_SELECT and DPI_RANGE4_4_MA_SELECT, used to determine which moving average
//                  An increment/decrement to this register will change the dpi range by 50 dpi
//                  Default value for this range was set to 0x46 (3500 dpi)

`define DPI_RANGE3_4_MA_SELECT_WIDTH                          8
`define REGA_DPI_RANGE3_4_MA_SELECT                           13'hd5c
`define DPI_RANGE3_4_MA_SELECT_DEFAULT                        8'h7f
`define DPI_RANGE3_4_MA_SELECT_CHECK                          8'h7f
`define DPI_RANGE3_4_MA_SELECT                                `DPI_RANGE3_4_MA_SELECT_WIDTH, `REGA_DPI_RANGE3_4_MA_SELECT, `DPI_RANGE3_4_MA_SELECT_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x7f    DPI_RANGE3_4_MA_SELECT
//                  Together with DPI_RANGE1_4_MA_SELECT, DPI_RANGE2_4_MA_SELECT and DPI_RANGE4_4_MA_SELECT, used to determine which moving average
//                  An increment/decrement to this register will change the dpi range by 50 dpi
//                  Default value for this range was set to 0x7F (6350 dpi)

`define DPI_RANGE4_4_MA_SELECT_WIDTH                          8
`define REGA_DPI_RANGE4_4_MA_SELECT                           13'hd5d
`define DPI_RANGE4_4_MA_SELECT_DEFAULT                        8'h3f
`define DPI_RANGE4_4_MA_SELECT_CHECK                          8'h3f
`define DPI_RANGE4_4_MA_SELECT                                `DPI_RANGE4_4_MA_SELECT_WIDTH, `REGA_DPI_RANGE4_4_MA_SELECT, `DPI_RANGE4_4_MA_SELECT_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x3f    DPI_RANGE4_4_MA_SELECT
//                  Together with DPI_RANGE1_4_MA_SELECT, DPI_RANGE2_4_MA_SELECT and DPI_RANGE3_4_MA_SELECT, used to determine which moving average
//                  An increment/decrement to this register will change the dpi range by 50 dpi
//                  Default value for this range was set to 0x13F (15950 dpi)

`define DPI3_CLIP_TK_WIDTH                                    8
`define REGA_DPI3_CLIP_TK                                     13'hd5e
`define DPI3_CLIP_TK_DEFAULT                                  8'hc3
`define DPI3_CLIP_TK_CHECK                                    8'hc3
`define DPI3_CLIP_TK                                          `DPI3_CLIP_TK_WIDTH, `REGA_DPI3_CLIP_TK, `DPI3_CLIP_TK_DEFAULT
//  access       rw
//  atype        A,L
//  7:0  0xc3    DPI3_CLIP_TK
//                  DPI3_CLIP tapkey: write 0xc3 to unlock

`define DPI_RANGE_2BMSB_MA_SEL_WIDTH                          8
`define REGA_DPI_RANGE_2BMSB_MA_SEL                           13'hd5f
`define DPI_RANGE_2BMSB_MA_SEL_DEFAULT                        8'h40
`define DPI_RANGE_2BMSB_MA_SEL_CHECK                          8'h40
`define DPI_RANGE_2BMSB_MA_SEL                                `DPI_RANGE_2BMSB_MA_SEL_WIDTH, `REGA_DPI_RANGE_2BMSB_MA_SEL, `DPI_RANGE_2BMSB_MA_SEL_DEFAULT
//  access       rw
//  atype        A
//  7:6  0x1     DPI_RANGE4_4_MA_SELECT_2BITS_MSB
//                  Expansion of DPI_RANGE4_4_MA_SELECT, used to determine which moving average
//                  An increment/decrement to this register will change the dpi range by 12800 dpi
//  5:4  0x0     DPI_RANGE3_4_MA_SELECT_2BITS_MSB
//                  Expansion of DPI_RANGE3_4_MA_SELECT, used to determine which moving average
//                  An increment/decrement to this register will change the dpi range by 12800 dpi
//  3:2  0x0     DPI_RANGE2_4_MA_SELECT_2BITS_MSB
//                  Expansion of DPI_RANGE2_4_MA_SELECT, used to determine which moving average
//                  An increment/decrement to this register will change the dpi range by 12800 dpi
//  1:0  0x0     DPI_RANGE1_4_MA_SELECT_2BITS_MSB
//                  Expansion of DPI_RANGE1_4_MA_SELECT, used to determine which moving average
//                  An increment/decrement to this register will change the dpi range by 12800 dpi

`define ACCUM_X0_WIDTH                                        8
`define REGA_ACCUM_X0                                         13'hd60
`define ACCUM_X0_DEFAULT                                      8'h0
`define ACCUM_X0_CHECK                                        8'h0
`define ACCUM_X0                                              `ACCUM_X0_WIDTH, `REGA_ACCUM_X0, `ACCUM_X0_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     ACCUM_X[7:0]
//                  Accumulator X [7:0]

`define ACCUM_X1_WIDTH                                        8
`define REGA_ACCUM_X1                                         13'hd61
`define ACCUM_X1_DEFAULT                                      8'h0
`define ACCUM_X1_CHECK                                        8'h0
`define ACCUM_X1                                              `ACCUM_X1_WIDTH, `REGA_ACCUM_X1, `ACCUM_X1_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     ACCUM_X[15:8]
//                  Accumulator X [15:8]

`define ACCUM_X2_WIDTH                                        8
`define REGA_ACCUM_X2                                         13'hd62
`define ACCUM_X2_DEFAULT                                      8'h0
`define ACCUM_X2_CHECK                                        8'h0
`define ACCUM_X2                                              `ACCUM_X2_WIDTH, `REGA_ACCUM_X2, `ACCUM_X2_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     ACCUM_X[23:16]
//                  Accumulator X [23:16]

`define ACCUM_X3_WIDTH                                        8
`define REGA_ACCUM_X3                                         13'hd63
`define ACCUM_X3_DEFAULT                                      8'h0
`define ACCUM_X3_CHECK                                        8'h0
`define ACCUM_X3                                              `ACCUM_X3_WIDTH, `REGA_ACCUM_X3, `ACCUM_X3_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     ACCUM_X[31:24]
//                  Accumulator X [31:24]

`define ACCUM_X4_WIDTH                                        8
`define REGA_ACCUM_X4                                         13'hd64
`define ACCUM_X4_DEFAULT                                      8'h0
`define ACCUM_X4_CHECK                                        8'h0
`define ACCUM_X4                                              `ACCUM_X4_WIDTH, `REGA_ACCUM_X4, `ACCUM_X4_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     ACCUM_X[39:32]
//                  Accumulator X [31:24]

`define ACCUM_X5_WIDTH                                        8
`define REGA_ACCUM_X5                                         13'hd65
`define ACCUM_X5_DEFAULT                                      8'h0
`define ACCUM_X5_CHECK                                        8'h0
`define ACCUM_X5                                              `ACCUM_X5_WIDTH, `REGA_ACCUM_X5, `ACCUM_X5_DEFAULT
//  access       ro
//  atype        A
//  7:6  0x0     Reserved
//                  Reserved
//  5:0  0x0     ACCUM_X[45:40]
//                  Accumulator X [31:24]

`define ACCUM_Y0_WIDTH                                        8
`define REGA_ACCUM_Y0                                         13'hd66
`define ACCUM_Y0_DEFAULT                                      8'h0
`define ACCUM_Y0_CHECK                                        8'h0
`define ACCUM_Y0                                              `ACCUM_Y0_WIDTH, `REGA_ACCUM_Y0, `ACCUM_Y0_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     ACCUM_Y[7:0]
//                  Accumulator X [7:0]

`define ACCUM_Y1_WIDTH                                        8
`define REGA_ACCUM_Y1                                         13'hd67
`define ACCUM_Y1_DEFAULT                                      8'h0
`define ACCUM_Y1_CHECK                                        8'h0
`define ACCUM_Y1                                              `ACCUM_Y1_WIDTH, `REGA_ACCUM_Y1, `ACCUM_Y1_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     ACCUM_Y[15:8]
//                  Accumulator X [15:8]

`define ACCUM_Y2_WIDTH                                        8
`define REGA_ACCUM_Y2                                         13'hd68
`define ACCUM_Y2_DEFAULT                                      8'h0
`define ACCUM_Y2_CHECK                                        8'h0
`define ACCUM_Y2                                              `ACCUM_Y2_WIDTH, `REGA_ACCUM_Y2, `ACCUM_Y2_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     ACCUM_Y[23:16]
//                  Accumulator X [23:16]

`define ACCUM_Y3_WIDTH                                        8
`define REGA_ACCUM_Y3                                         13'hd69
`define ACCUM_Y3_DEFAULT                                      8'h0
`define ACCUM_Y3_CHECK                                        8'h0
`define ACCUM_Y3                                              `ACCUM_Y3_WIDTH, `REGA_ACCUM_Y3, `ACCUM_Y3_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     ACCUM_Y[31:24]
//                  Accumulator X [31:24]

`define ACCUM_Y4_WIDTH                                        8
`define REGA_ACCUM_Y4                                         13'hd6a
`define ACCUM_Y4_DEFAULT                                      8'h0
`define ACCUM_Y4_CHECK                                        8'h0
`define ACCUM_Y4                                              `ACCUM_Y4_WIDTH, `REGA_ACCUM_Y4, `ACCUM_Y4_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     ACCUM_Y[39:32]
//                  Accumulator X [31:24]

`define ACCUM_Y5_WIDTH                                        8
`define REGA_ACCUM_Y5                                         13'hd6b
`define ACCUM_Y5_DEFAULT                                      8'h0
`define ACCUM_Y5_CHECK                                        8'h0
`define ACCUM_Y5                                              `ACCUM_Y5_WIDTH, `REGA_ACCUM_Y5, `ACCUM_Y5_DEFAULT
//  access       ro
//  atype        A
//  7:6  0x0     Reserved
//                  Reserved
//  5:0  0x0     ACCUM_Y[45:40]
//                  Accumulator X [31:24]

`define DPI4_CLIP_TK_WIDTH                                    8
`define REGA_DPI4_CLIP_TK                                     13'hd6f
`define DPI4_CLIP_TK_DEFAULT                                  8'hd5
`define DPI4_CLIP_TK_CHECK                                    8'hd5
`define DPI4_CLIP_TK                                          `DPI4_CLIP_TK_WIDTH, `REGA_DPI4_CLIP_TK, `DPI4_CLIP_TK_DEFAULT
//  access       rw
//  atype        A,L
//  7:0  0xd5    DPI4_CLIP_TK
//                  DPI4_CLIP tapkey: write 0xd5 to unlock

`define STEP_DPI_X_H_WIDTH                                    6
`define REGA_STEP_DPI_X_H                                     13'hd70
`define STEP_DPI_X_H_DEFAULT                                  6'h7
`define STEP_DPI_X_H_CHECK                                    6'h7
`define STEP_DPI_X_H                                          `STEP_DPI_X_H_WIDTH, `REGA_STEP_DPI_X_H, `STEP_DPI_X_H_DEFAULT
//  access       rw
//  atype        A
//  5:0  0x7     STEP_DPI_X_H
//                  X DPI Step Count High Byte
//                  step calculation = {STEP_DPI_X_H,STEP_DPI_X_L} x 0.0258 dpi

`define STEP_DPI_X_L_WIDTH                                    8
`define REGA_STEP_DPI_X_L                                     13'hd71
`define STEP_DPI_X_L_DEFAULT                                  8'ha8
`define STEP_DPI_X_L_CHECK                                    8'ha8
`define STEP_DPI_X_L                                          `STEP_DPI_X_L_WIDTH, `REGA_STEP_DPI_X_L, `STEP_DPI_X_L_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xa8    STEP_DPI_X_L
//                  X DPI Step Count LOW Byte
//                  step calculation = {STEP_DPI_X_H,STEP_DPI_X_L} x 0.0258 dpi

`define STEP_DPI_Y_H_WIDTH                                    6
`define REGA_STEP_DPI_Y_H                                     13'hd72
`define STEP_DPI_Y_H_DEFAULT                                  6'h7
`define STEP_DPI_Y_H_CHECK                                    6'h7
`define STEP_DPI_Y_H                                          `STEP_DPI_Y_H_WIDTH, `REGA_STEP_DPI_Y_H, `STEP_DPI_Y_H_DEFAULT
//  access       rw
//  atype        A
//  5:0  0x7     STEP_DPI_Y_H
//                  Y DPI Step Count High Byte
//                  step calculation = {STEP_DPI_Y_H,STEP_DPI_Y_L} x 0.0258 dpi

`define STEP_DPI_Y_L_WIDTH                                    8
`define REGA_STEP_DPI_Y_L                                     13'hd73
`define STEP_DPI_Y_L_DEFAULT                                  8'hd0
`define STEP_DPI_Y_L_CHECK                                    8'hd0
`define STEP_DPI_Y_L                                          `STEP_DPI_Y_L_WIDTH, `REGA_STEP_DPI_Y_L, `STEP_DPI_Y_L_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xd0    STEP_DPI_Y_L
//                  Y DPI Step Count LOW Byte
//                  step calculation = {STEP_DPI_Y_H,STEP_DPI_Y_L} x 0.0258 dpi

`define STEP_DPI_X_DS_H_WIDTH                                 6
`define REGA_STEP_DPI_X_DS_H                                  13'hd74
`define STEP_DPI_X_DS_H_DEFAULT                               6'h8
`define STEP_DPI_X_DS_H_CHECK                                 6'h8
`define STEP_DPI_X_DS_H                                       `STEP_DPI_X_DS_H_WIDTH, `REGA_STEP_DPI_X_DS_H, `STEP_DPI_X_DS_H_DEFAULT
//  access       rw
//  atype        A
//  5:0  0x8     STEP_DPI_X_DS_H
//                  Downshift DPI X Step Count High Byte
//                  step calculation = {STEP_DPI_X_DS_H,STEP_DPI_X_DS_L} x 0.0258 dpi

`define STEP_DPI_X_DS_L_WIDTH                                 8
`define REGA_STEP_DPI_X_DS_L                                  13'hd75
`define STEP_DPI_X_DS_L_DEFAULT                               8'h0
`define STEP_DPI_X_DS_L_CHECK                                 8'h0
`define STEP_DPI_X_DS_L                                       `STEP_DPI_X_DS_L_WIDTH, `REGA_STEP_DPI_X_DS_L, `STEP_DPI_X_DS_L_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     STEP_DPI_X_DS_L
//                  Downshift DPI X Step Count LOW Byte
//                  step calculation = {STEP_DPI_X_DS_H,STEP_DPI_X_DS_L} x 0.0258 dpi

`define STEP_DPI_Y_DS_H_WIDTH                                 6
`define REGA_STEP_DPI_Y_DS_H                                  13'hd76
`define STEP_DPI_Y_DS_H_DEFAULT                               6'h8
`define STEP_DPI_Y_DS_H_CHECK                                 6'h8
`define STEP_DPI_Y_DS_H                                       `STEP_DPI_Y_DS_H_WIDTH, `REGA_STEP_DPI_Y_DS_H, `STEP_DPI_Y_DS_H_DEFAULT
//  access       rw
//  atype        A
//  5:0  0x8     STEP_DPI_Y_DS_H
//                  Downshift DPI Y Step Count High Byte
//                  step calculation = {STEP_DPI_Y_DS_H,STEP_DPI_Y_DS_L} x 0.0258 dpi

`define STEP_DPI_Y_DS_L_WIDTH                                 8
`define REGA_STEP_DPI_Y_DS_L                                  13'hd77
`define STEP_DPI_Y_DS_L_DEFAULT                               8'h0
`define STEP_DPI_Y_DS_L_CHECK                                 8'h0
`define STEP_DPI_Y_DS_L                                       `STEP_DPI_Y_DS_L_WIDTH, `REGA_STEP_DPI_Y_DS_L, `STEP_DPI_Y_DS_L_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     STEP_DPI_Y_DS_L
//                  Downshift DPI Y Step Count LOW Byte
//                  step calculation = {STEP_DPI_Y_DS_H,STEP_DPI_Y_DS_L} x 0.0258 dpi

`define DPI_FACTOR_BUF_X_HH_WIDTH                             8
`define REGA_DPI_FACTOR_BUF_X_HH                              13'hd78
`define DPI_FACTOR_BUF_X_HH_DEFAULT                           8'h0
`define DPI_FACTOR_BUF_X_HH_CHECK                             8'h0
`define DPI_FACTOR_BUF_X_HH                                   `DPI_FACTOR_BUF_X_HH_WIDTH, `REGA_DPI_FACTOR_BUF_X_HH, `DPI_FACTOR_BUF_X_HH_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     DPI_FACTOR_BUF_X_HH
//                  Final DPI Value for X_HH

`define DPI_FACTOR_BUF_X_H_WIDTH                              8
`define REGA_DPI_FACTOR_BUF_X_H                               13'hd79
`define DPI_FACTOR_BUF_X_H_DEFAULT                            8'h0
`define DPI_FACTOR_BUF_X_H_CHECK                              8'h0
`define DPI_FACTOR_BUF_X_H                                    `DPI_FACTOR_BUF_X_H_WIDTH, `REGA_DPI_FACTOR_BUF_X_H, `DPI_FACTOR_BUF_X_H_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     DPI_FACTOR_BUF_X_H
//                  Final DPI Value for X_H

`define DPI_FACTOR_BUF_X_L_WIDTH                              8
`define REGA_DPI_FACTOR_BUF_X_L                               13'hd7a
`define DPI_FACTOR_BUF_X_L_DEFAULT                            8'h0
`define DPI_FACTOR_BUF_X_L_CHECK                              8'h0
`define DPI_FACTOR_BUF_X_L                                    `DPI_FACTOR_BUF_X_L_WIDTH, `REGA_DPI_FACTOR_BUF_X_L, `DPI_FACTOR_BUF_X_L_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     DPI_FACTOR_BUF_X_L
//                  Final DPI Value for X_L

`define DPI_FACTOR_BUF_Y_HH_WIDTH                             8
`define REGA_DPI_FACTOR_BUF_Y_HH                              13'hd7b
`define DPI_FACTOR_BUF_Y_HH_DEFAULT                           8'h0
`define DPI_FACTOR_BUF_Y_HH_CHECK                             8'h0
`define DPI_FACTOR_BUF_Y_HH                                   `DPI_FACTOR_BUF_Y_HH_WIDTH, `REGA_DPI_FACTOR_BUF_Y_HH, `DPI_FACTOR_BUF_Y_HH_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     DPI_FACTOR_BUF_Y_HH
//                  Final DPI Value for Y_HH

`define DPI_FACTOR_BUF_Y_H_WIDTH                              8
`define REGA_DPI_FACTOR_BUF_Y_H                               13'hd7c
`define DPI_FACTOR_BUF_Y_H_DEFAULT                            8'h0
`define DPI_FACTOR_BUF_Y_H_CHECK                              8'h0
`define DPI_FACTOR_BUF_Y_H                                    `DPI_FACTOR_BUF_Y_H_WIDTH, `REGA_DPI_FACTOR_BUF_Y_H, `DPI_FACTOR_BUF_Y_H_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     DPI_FACTOR_BUF_Y_H
//                  Final DPI Value for Y_H

`define DPI_FACTOR_BUF_Y_L_WIDTH                              8
`define REGA_DPI_FACTOR_BUF_Y_L                               13'hd7d
`define DPI_FACTOR_BUF_Y_L_DEFAULT                            8'h0
`define DPI_FACTOR_BUF_Y_L_CHECK                              8'h0
`define DPI_FACTOR_BUF_Y_L                                    `DPI_FACTOR_BUF_Y_L_WIDTH, `REGA_DPI_FACTOR_BUF_Y_L, `DPI_FACTOR_BUF_Y_L_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     DPI_FACTOR_BUF_Y_L
//                  Final DPI Value for Y_L


`define P14_PROD_ID_WIDTH                                     0
`define REGA_P14_PROD_ID                                      13'he00
`define P14_PROD_ID                                           `P14_PROD_ID_WIDTH, `REGA_P14_PROD_ID, `P14_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P14_REV_ID_WIDTH                                      0
`define REGA_P14_REV_ID                                       13'he01
`define P14_REV_ID                                            `P14_REV_ID_WIDTH, `REGA_P14_REV_ID, `P14_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P14_MOTION_WIDTH                                      0
`define REGA_P14_MOTION                                       13'he02
`define P14_MOTION                                            `P14_MOTION_WIDTH, `REGA_P14_MOTION, `P14_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P14_DELTA_X_LO_WIDTH                                  0
`define REGA_P14_DELTA_X_LO                                   13'he03
`define P14_DELTA_X_LO                                        `P14_DELTA_X_LO_WIDTH, `REGA_P14_DELTA_X_LO, `P14_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P14_DELTA_X_HI_WIDTH                                  0
`define REGA_P14_DELTA_X_HI                                   13'he04
`define P14_DELTA_X_HI                                        `P14_DELTA_X_HI_WIDTH, `REGA_P14_DELTA_X_HI, `P14_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P14_DELTA_Y_LO_WIDTH                                  0
`define REGA_P14_DELTA_Y_LO                                   13'he05
`define P14_DELTA_Y_LO                                        `P14_DELTA_Y_LO_WIDTH, `REGA_P14_DELTA_Y_LO, `P14_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P14_DELTA_Y_HI_WIDTH                                  0
`define REGA_P14_DELTA_Y_HI                                   13'he06
`define P14_DELTA_Y_HI                                        `P14_DELTA_Y_HI_WIDTH, `REGA_P14_DELTA_Y_HI, `P14_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P14_SQUAL_WIDTH                                       0
`define REGA_P14_SQUAL                                        13'he07
`define P14_SQUAL                                             `P14_SQUAL_WIDTH, `REGA_P14_SQUAL, `P14_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P14_PIX_ACCUM_WIDTH                                   0
`define REGA_P14_PIX_ACCUM                                    13'he08
`define P14_PIX_ACCUM                                         `P14_PIX_ACCUM_WIDTH, `REGA_P14_PIX_ACCUM, `P14_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P14_PIX_MAX_WIDTH                                     0
`define REGA_P14_PIX_MAX                                      13'he09
`define P14_PIX_MAX                                           `P14_PIX_MAX_WIDTH, `REGA_P14_PIX_MAX, `P14_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P14_PIX_MIN_WIDTH                                     0
`define REGA_P14_PIX_MIN                                      13'he0a
`define P14_PIX_MIN                                           `P14_PIX_MIN_WIDTH, `REGA_P14_PIX_MIN, `P14_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P14_SHUT_LO_WIDTH                                     0
`define REGA_P14_SHUT_LO                                      13'he0b
`define P14_SHUT_LO                                           `P14_SHUT_LO_WIDTH, `REGA_P14_SHUT_LO, `P14_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P14_SHUT_HI_WIDTH                                     0
`define REGA_P14_SHUT_HI                                      13'he0c
`define P14_SHUT_HI                                           `P14_SHUT_HI_WIDTH, `REGA_P14_SHUT_HI, `P14_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P14_EXT_WAKEUP_WIDTH                                  0
`define REGA_P14_EXT_WAKEUP                                   13'he0d
`define P14_EXT_WAKEUP                                        `P14_EXT_WAKEUP_WIDTH, `REGA_P14_EXT_WAKEUP, `P14_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P14_RESERVED_E_WIDTH                                  0
`define REGA_P14_RESERVED_E                                   13'he0e
`define P14_RESERVED_E                                        `P14_RESERVED_E_WIDTH, `REGA_P14_RESERVED_E, `P14_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P14_SKIP_FRAMES_CNT_LO_WIDTH                          0
`define REGA_P14_SKIP_FRAMES_CNT_LO                           13'he0f
`define P14_SKIP_FRAMES_CNT_LO                                `P14_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P14_SKIP_FRAMES_CNT_LO, `P14_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P14_SKIP_FRAMES_CNT_HI_WIDTH                          0
`define REGA_P14_SKIP_FRAMES_CNT_HI                           13'he10
`define P14_SKIP_FRAMES_CNT_HI                                `P14_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P14_SKIP_FRAMES_CNT_HI, `P14_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P14_CVFR_PERIOD_LO_WIDTH                              0
`define REGA_P14_CVFR_PERIOD_LO                               13'he11
`define P14_CVFR_PERIOD_LO                                    `P14_CVFR_PERIOD_LO_WIDTH, `REGA_P14_CVFR_PERIOD_LO, `P14_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P14_CVFR_PERIOD_HI_WIDTH                              0
`define REGA_P14_CVFR_PERIOD_HI                               13'he12
`define P14_CVFR_PERIOD_HI                                    `P14_CVFR_PERIOD_HI_WIDTH, `REGA_P14_CVFR_PERIOD_HI, `P14_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P14_OBSERVATION_WIDTH                                 0
`define REGA_P14_OBSERVATION                                  13'he15
`define P14_OBSERVATION                                       `P14_OBSERVATION_WIDTH, `REGA_P14_OBSERVATION, `P14_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P14_BURST_MOTION_WIDTH                                0
`define REGA_P14_BURST_MOTION                                 13'he16
`define P14_BURST_MOTION                                      `P14_BURST_MOTION_WIDTH, `REGA_P14_BURST_MOTION, `P14_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P14_SQUAL2_WIDTH                                      0
`define REGA_P14_SQUAL2                                       13'he17
`define P14_SQUAL2                                            `P14_SQUAL2_WIDTH, `REGA_P14_SQUAL2, `P14_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P14_SPI_MODE_WIDTH                                    0
`define REGA_P14_SPI_MODE                                     13'he18
`define P14_SPI_MODE                                          `P14_SPI_MODE_WIDTH, `REGA_P14_SPI_MODE, `P14_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P14_OSC_TUNE_INSTR_WIDTH                              0
`define REGA_P14_OSC_TUNE_INSTR                               13'he22
`define P14_OSC_TUNE_INSTR                                    `P14_OSC_TUNE_INSTR_WIDTH, `REGA_P14_OSC_TUNE_INSTR, `P14_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P14_OSC_TUNE_INSTR_SLOW_WIDTH                         0
`define REGA_P14_OSC_TUNE_INSTR_SLOW                          13'he23
`define P14_OSC_TUNE_INSTR_SLOW                               `P14_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P14_OSC_TUNE_INSTR_SLOW, `P14_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P14_PRBS_MODE_WIDTH                                   0
`define REGA_P14_PRBS_MODE                                    13'he30
`define P14_PRBS_MODE                                         `P14_PRBS_MODE_WIDTH, `REGA_P14_PRBS_MODE, `P14_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P14_POWERDOWN_WIDTH                                   0
`define REGA_P14_POWERDOWN                                    13'he32
`define P14_POWERDOWN                                         `P14_POWERDOWN_WIDTH, `REGA_P14_POWERDOWN, `P14_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P14_CRC0_WIDTH                                        0
`define REGA_P14_CRC0                                         13'he33
`define P14_CRC0                                              `P14_CRC0_WIDTH, `REGA_P14_CRC0, `P14_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P14_CRC1_WIDTH                                        0
`define REGA_P14_CRC1                                         13'he34
`define P14_CRC1                                              `P14_CRC1_WIDTH, `REGA_P14_CRC1, `P14_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P14_CRC2_WIDTH                                        0
`define REGA_P14_CRC2                                         13'he35
`define P14_CRC2                                              `P14_CRC2_WIDTH, `REGA_P14_CRC2, `P14_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P14_CRC3_WIDTH                                        0
`define REGA_P14_CRC3                                         13'he36
`define P14_CRC3                                              `P14_CRC3_WIDTH, `REGA_P14_CRC3, `P14_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P14_IOSTATUS_WIDTH                                    0
`define REGA_P14_IOSTATUS                                     13'he37
`define P14_IOSTATUS                                          `P14_IOSTATUS_WIDTH, `REGA_P14_IOSTATUS, `P14_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P14_TAP_KEY_WO_WIDTH                                  0
`define REGA_P14_TAP_KEY_WO                                   13'he38
`define P14_TAP_KEY_WO                                        `P14_TAP_KEY_WO_WIDTH, `REGA_P14_TAP_KEY_WO, `P14_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P14_TAP_KEY_WIDTH                                     0
`define REGA_P14_TAP_KEY                                      13'he39
`define P14_TAP_KEY                                           `P14_TAP_KEY_WIDTH, `REGA_P14_TAP_KEY, `P14_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P14_POWER_UP_RESET_WIDTH                              0
`define REGA_P14_POWER_UP_RESET                               13'he3a
`define P14_POWER_UP_RESET                                    `P14_POWER_UP_RESET_WIDTH, `REGA_P14_POWER_UP_RESET, `P14_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P14_SHUTDOWN_WIDTH                                    0
`define REGA_P14_SHUTDOWN                                     13'he3b
`define P14_SHUTDOWN                                          `P14_SHUTDOWN_WIDTH, `REGA_P14_SHUTDOWN, `P14_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P14_SCAN_MODE_WIDTH                                   0
`define REGA_P14_SCAN_MODE                                    13'he3c
`define P14_SCAN_MODE                                         `P14_SCAN_MODE_WIDTH, `REGA_P14_SCAN_MODE, `P14_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P14_SPI_PAGE_WIDTH                                    0
`define REGA_P14_SPI_PAGE                                     13'he7f
`define P14_SPI_PAGE                                          `P14_SPI_PAGE_WIDTH, `REGA_P14_SPI_PAGE, `P14_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define EFUSE_COMPL0_WIDTH                                    8
`define REGA_EFUSE_COMPL0                                     13'he40
`define EFUSE_COMPL0_DEFAULT                                  8'h0
`define EFUSE_COMPL0_CHECK                                    8'h0
`define EFUSE_COMPL0                                          `EFUSE_COMPL0_WIDTH, `REGA_EFUSE_COMPL0, `EFUSE_COMPL0_DEFAULT
//  access       rw
//  atype        AP
//  7:0  0x0     EFUSE_COMPL0_VAL
//                  This is the first of a pair complementary register which prevent unintentional access to EFUSE registers.
//                  To access the EFUSE register block, a pair of complementary bit patterns have to be written to COMPL0 and COMPL1 registers.

`define EFUSE_COMPL1_WIDTH                                    8
`define REGA_EFUSE_COMPL1                                     13'he41
`define EFUSE_COMPL1_DEFAULT                                  8'h0
`define EFUSE_COMPL1_CHECK                                    8'h0
`define EFUSE_COMPL1                                          `EFUSE_COMPL1_WIDTH, `REGA_EFUSE_COMPL1, `EFUSE_COMPL1_DEFAULT
//  access       rw
//  atype        AP
//  7:0  0x0     EFUSE_COMPL1_VAL
//                  This is the second of a pair complementary register which prevent unintentional access to EFUSE registers.
//                  To access the EFUSE register block, a pair of complementary bit patterns have to be written to COMPL0 and COMPL1 registers.

`define EFUSE_DATA_WIDTH                                      8
`define REGA_EFUSE_DATA                                       13'he42
`define EFUSE_DATA_DEFAULT                                    8'h0
`define EFUSE_DATA_CHECK                                      8'h0
`define EFUSE_DATA                                            `EFUSE_DATA_WIDTH, `REGA_EFUSE_DATA, `EFUSE_DATA_DEFAULT
//  access       rw
//  atype        AP
//  7:0  0x0     EFUSE_DATA_VAL
//                  This register specifies the 8-bit value to be burned for a given base address.

`define EFUSE_CTL0_WIDTH                                      8
`define REGA_EFUSE_CTL0                                       13'he43
`define EFUSE_CTL0_DEFAULT                                    8'h0
`define EFUSE_CTL0_CHECK                                      8'h0
`define EFUSE_CTL0                                            `EFUSE_CTL0_WIDTH, `REGA_EFUSE_CTL0, `EFUSE_CTL0_DEFAULT
//  access       rw
//  atype        AP
//  7:6  0x0     SPARE
//                  Spare bits
//    5  0x0     EFUSE_BURN_START
//                  Start burn process.
//    4  0x0     EFUSE_READ_START
//                  Start read process.
//  3:0  0x0     EFUSE_BASE_ADDR
//                  EFUSE base address.  Select byte to be burned.

`define EFUSE_MCOMPL0_WIDTH                                   8
`define REGA_EFUSE_MCOMPL0                                    13'he44
`define EFUSE_MCOMPL0_DEFAULT                                 8'h0
`define EFUSE_MCOMPL0_CHECK                                   8'h0
`define EFUSE_MCOMPL0                                         `EFUSE_MCOMPL0_WIDTH, `REGA_EFUSE_MCOMPL0, `EFUSE_MCOMPL0_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     EFUSE_MOD_COMPL0_VAL
//                  This is the first of a pair complementary register which prevent unintentional access to EFUSE registers.
//                  To access the EFUSE register block, a pair of complementary bit patterns have to be written to COMPL0 and COMPL1 registers.

`define EFUSE_MCOMPL1_WIDTH                                   8
`define REGA_EFUSE_MCOMPL1                                    13'he45
`define EFUSE_MCOMPL1_DEFAULT                                 8'h0
`define EFUSE_MCOMPL1_CHECK                                   8'h0
`define EFUSE_MCOMPL1                                         `EFUSE_MCOMPL1_WIDTH, `REGA_EFUSE_MCOMPL1, `EFUSE_MCOMPL1_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     EFUSE_MOD_COMPL1_VAL
//                  This is the second of a pair complementary register which prevent unintentional access to EFUSE registers.
//                  To access the EFUSE register block, a pair of complementary bit patterns have to be written to COMPL0 and COMPL1 registers.

`define EFUSE_MDATA_WIDTH                                     8
`define REGA_EFUSE_MDATA                                      13'he46
`define EFUSE_MDATA_DEFAULT                                   8'h0
`define EFUSE_MDATA_CHECK                                     8'h0
`define EFUSE_MDATA                                           `EFUSE_MDATA_WIDTH, `REGA_EFUSE_MDATA, `EFUSE_MDATA_DEFAULT
//  access       ro
//  atype        AP
//  7:0  0x0     EFUSE_MOD_DATA_VAL
//                  This register specifies the 8-bit value to be burned for a given base address.

`define EFUSE_MCTL0_WIDTH                                     8
`define REGA_EFUSE_MCTL0                                      13'he47
`define EFUSE_MCTL0_DEFAULT                                   8'h0
`define EFUSE_MCTL0_CHECK                                     8'h0
`define EFUSE_MCTL0                                           `EFUSE_MCTL0_WIDTH, `REGA_EFUSE_MCTL0, `EFUSE_MCTL0_DEFAULT
//  access       ro
//  atype        AP
//    7  0x0     EFUSE_MOD_READ_DONE
//                  Return a '1' if read is done.
//    6  0x0     EFUSE_MOD_BURN_DONE
//                  Return a '1' if burn is done.
//    5  0x0     EFUSE_MOD_BURN_START
//                  Start burn process.
//    4  0x0     EFUSE_MOD_READ_START
//                  Start read process.
//  3:0  0x0     EFUSE_MOD_BASE_ADDR
//                  EFUSE base address.  Select byte to be burned.

`define EFUSE_CTL1_WIDTH                                      8
`define REGA_EFUSE_CTL1                                       13'he48
`define EFUSE_CTL1_DEFAULT                                    8'h0
`define EFUSE_CTL1_CHECK                                      8'h0
`define EFUSE_CTL1                                            `EFUSE_CTL1_WIDTH, `REGA_EFUSE_CTL1, `EFUSE_CTL1_DEFAULT
//  access       rw
//  atype        AP
//  7:1  0x0     SPARE
//                  Spare bit
//    0  0x0     EFUSE_OVR_BANK_SEL
//                  1: Override lock to allow further burns to any unburned bits even though fuse bit 31 (lower bank lock) or 63 (upper bank lock) has been burned; 0: No override.

`define EFUSE_STATUS0_WIDTH                                   8
`define REGA_EFUSE_STATUS0                                    13'he4c
`define EFUSE_STATUS0_DEFAULT                                 8'h0
`define EFUSE_STATUS0_CHECK                                   8'h0
`define EFUSE_STATUS0                                         `EFUSE_STATUS0_WIDTH, `REGA_EFUSE_STATUS0, `EFUSE_STATUS0_DEFAULT
//  access       ro
//  atype        AP
//    7  0x0     EFUSE_LOAD_REG
//                  EFUSE LOAD_REG.
//    6  0x0     EFUSE_BURN_CLEAR
//                  EFUSE BURN_CLEAR.
//    5  0x0     EFUSE_BURN_REG
//                  EFUSE BURN_REG.
//    4  0x0     EFUSE_DO_BURN
//                  EFUSE DO_BURN.
//  3:0  0x0     EFUSE_FSM_STATE
//                  EFUSE FSM STATE.

`define EFUSE_STATUS1_WIDTH                                   8
`define REGA_EFUSE_STATUS1                                    13'he4d
`define EFUSE_STATUS1_DEFAULT                                 8'h0
`define EFUSE_STATUS1_CHECK                                   8'h0
`define EFUSE_STATUS1                                         `EFUSE_STATUS1_WIDTH, `REGA_EFUSE_STATUS1, `EFUSE_STATUS1_DEFAULT
//  access       ro
//  atype        AP
//    7  0x0     EFUSE_START
//                  EFUSE START.
//    6  0x0     EFUSE_DONE
//                  EFUSE DONE.
//    5  0x0     EFUSE_LOCKED
//                  EFUSE LOCKED.
//    4  0x0     EFUSE_LOCK_OVR
//                  EFUSE LOCK OVR.
//    3  0x0     EFUSE_COMPL_REG
//                  EFUSE COMPL REG.
//    2  0x0     EFUSE_READ_CLEAR
//                  EFUSE READ CLEAR.
//    1  0x0     EFUSE_READ_REG
//                  EFUSE READ REG.
//    0  0x0     EFUSE_LOAD_DONE
//                  EFUSE LOAD DONE.

`define EFUSE_STATUS2_WIDTH                                   8
`define REGA_EFUSE_STATUS2                                    13'he4e
`define EFUSE_STATUS2_DEFAULT                                 8'h0
`define EFUSE_STATUS2_CHECK                                   8'h0
`define EFUSE_STATUS2                                         `EFUSE_STATUS2_WIDTH, `REGA_EFUSE_STATUS2, `EFUSE_STATUS2_DEFAULT
//  access       ro
//  atype        AP
//    7  0x0     EFUSE_VDDQ_ON_B
//                  EFUSE VDDQ_ON_B.
//  6:0  0x0     EFUSE_A_MUX
//                  EFUSE_A_MUX.

`define EFUSE_STATUS3_WIDTH                                   8
`define REGA_EFUSE_STATUS3                                    13'he4f
`define EFUSE_STATUS3_DEFAULT                                 8'h0
`define EFUSE_STATUS3_CHECK                                   8'h0
`define EFUSE_STATUS3                                         `EFUSE_STATUS3_WIDTH, `REGA_EFUSE_STATUS3, `EFUSE_STATUS3_DEFAULT
//  access       ro
//  atype        AP
//  7:3  0x0     Reserved
//                  Reserved.
//    2  0x0     EFUSE_CLK_READY
//                  EFUSE clock ready.
//    1  0x0     EFUSE_DO_READ
//                  EFUSE DO_READ.
//    0  0x0     EFUSE_BLANK
//                  EFUSE blank.

`define EFUSE_TIMING0_WIDTH                                   8
`define REGA_EFUSE_TIMING0                                    13'he50
`define EFUSE_TIMING0_DEFAULT                                 8'ha6
`define EFUSE_TIMING0_CHECK                                   8'ha6
`define EFUSE_TIMING0                                         `EFUSE_TIMING0_WIDTH, `REGA_EFUSE_TIMING0, `EFUSE_TIMING0_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xa6    EFUSE_TPGM
//                  This register contains burn pulse width (TPGM) in terms of 4 EFUSE clock pulses.
//                  The duration is therefore: (0xA6 + 0x4) * 4 * 1/(68e6)= 10us =~ 10.012us

`define EFUSE_TIMING1_WIDTH                                   8
`define REGA_EFUSE_TIMING1                                    13'he51
`define EFUSE_TIMING1_DEFAULT                                 8'h6
`define EFUSE_TIMING1_CHECK                                   8'h6
`define EFUSE_TIMING1                                         `EFUSE_TIMING1_WIDTH, `REGA_EFUSE_TIMING1, `EFUSE_TIMING1_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x6     EFUSE_VDDQ_ASSERT
//                  This register contains waiting time needed for VDDQ to assert after requeset is issued in terms of 2 EFUSE clock pulses.
//                  The duration is therefore: (0x6*2) * 1/(68e6)= 176ns =~ 150ns (PFET delay)

`define EFUSE_TIMING2_WIDTH                                   8
`define REGA_EFUSE_TIMING2                                    13'he52
`define EFUSE_TIMING2_DEFAULT                                 8'h6
`define EFUSE_TIMING2_CHECK                                   8'h6
`define EFUSE_TIMING2                                         `EFUSE_TIMING2_WIDTH, `REGA_EFUSE_TIMING2, `EFUSE_TIMING2_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x6     EFUSE_VDDQ_DEASSERT
//                  This register contains waiting time needed for VDDQ to deassert after requeset is removed in terms of 2 EFUSE clock pulses.
//                  The duration is therefore: (0x6*2) * 4 * 1/(68e6)= 176ns =~ 150ns (PFET_delay)

`define EFUSE_TIMING3_WIDTH                                   8
`define REGA_EFUSE_TIMING3                                    13'he53
`define EFUSE_TIMING3_DEFAULT                                 8'h5
`define EFUSE_TIMING3_CHECK                                   8'h5
`define EFUSE_TIMING3                                         `EFUSE_TIMING3_WIDTH, `REGA_EFUSE_TIMING3, `EFUSE_TIMING3_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x5     EFUSE_TRD
//                  This register contains read strobe pulse width (Trd) in terms of EFUSE clock pulses.
//                  The highest operating frequency is assumend to be 100MHz
//                  The duration is therefore: (0x5 + 1) * 1/(50e6)= 60ns

`define EFUSE_MAIN_CTL0_WIDTH                                 8
`define REGA_EFUSE_MAIN_CTL0                                  13'he54
`define EFUSE_MAIN_CTL0_DEFAULT                               8'h1
`define EFUSE_MAIN_CTL0_CHECK                                 8'h1
`define EFUSE_MAIN_CTL0                                       `EFUSE_MAIN_CTL0_WIDTH, `REGA_EFUSE_MAIN_CTL0, `EFUSE_MAIN_CTL0_DEFAULT
//  access       rw
//  atype        A
//  7:3  0x0     SPARE
//                  Spare bits
//    2  0x0     PAD_16M_EN_FAST
//                  to chose the PAD to be 16M filter signal when set to 1
//    1  0x0     SUPDET_EN_EFUSE
//                  SUPDET_EN_EFUSE
//    0  0x1     EFUSE_MACRO_PWR_EN
//                  Unused, a spare bit for future usage
//                  0: EFUSE macro is not powered; 1: EFUSE macro is powered.

`define EFUSE_MAIN_CTL1_WIDTH                                 8
`define REGA_EFUSE_MAIN_CTL1                                  13'he55
`define EFUSE_MAIN_CTL1_DEFAULT                               8'h0
`define EFUSE_MAIN_CTL1_CHECK                                 8'h0
`define EFUSE_MAIN_CTL1                                       `EFUSE_MAIN_CTL1_WIDTH, `REGA_EFUSE_MAIN_CTL1, `EFUSE_MAIN_CTL1_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     OSC68M_S_SEL_68M
//                  Select for OSC68M_S_SEL_68M value 0: Use SPI register value; 1: Use EFUSE value.
//    6  0x0     OSC68M_S_CODE_DCN
//                  Select for OSC68M_S_CODE_DCN value 0: Use SPI register value; 1: Use EFUSE value.
//    5  0x0     OSC68M_S_CODE_DCP
//                  Select for OSC68M_S_CODE_DCP value 0: Use SPI register value; 1: Use EFUSE value.
//    4  0x0     OSC68M_S_CAP
//                  Select for OSC68M_S_CAP value 0: Use SPI register value; 1: Use EFUSE value.
//    3  0x0     OSC68M_S_CODE_I
//                  Select for OSC68M_S_CODE_I value 0: Use SPI register value; 1: Use EFUSE value.
//    2  0x0     OSC1M_S_BAND_SEL
//                  Select for OSC1M_S_BAND_SEL value 0: Use SPI register value; 1: Use EFUSE value.
//    1  0x0     OSC1M_S_RANGE_SEL
//                  Select for OSC1M_S_RANGE_SEL value 0: Use SPI register value; 1: Use EFUSE value.
//    0  0x0     IREF_S_B
//                  Select for IREF_S_B value 0: Use SPI register value; 1: Use EFUSE value.

`define EFUSE_MAIN_CTL2_WIDTH                                 8
`define REGA_EFUSE_MAIN_CTL2                                  13'he56
`define EFUSE_MAIN_CTL2_DEFAULT                               8'h0
`define EFUSE_MAIN_CTL2_CHECK                                 8'h0
`define EFUSE_MAIN_CTL2                                       `EFUSE_MAIN_CTL2_WIDTH, `REGA_EFUSE_MAIN_CTL2, `EFUSE_MAIN_CTL2_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     LSR_S_RBIN_SEL
//                  Select for LSR_S_RBIN_SEL value 0: Use SPI register value; 1: Use EFUSE value.
//    6  0x0     LSR_S_ICTRL_B
//                  Select for LSR_S_ICTRL_B value 0: Use SPI register value; 1: Use EFUSE value.
//    5  0x0     LSR_S_ICTRL
//                  Select for LSR_S_ICTRL value 0: Use SPI register value; 1: Use EFUSE value.
//    4  0x0     LDO_S_TRIM
//                  Select for LDO_S_TRIM value 0: Use SPI register value; 1: Use EFUSE value.
//    3  0x0     LDOCL_S_RTRIM
//                  Select for LDOCL_S_RTRIM value 0: Use SPI register value; 1: Use EFUSE value.
//    2  0x0     OSC5K_S_SEL
//                  Select for OSC5K_S_SEL value 0: Use SPI register value; 1: Use EFUSE value.
//    1  0x0     OSC5K_S_FREQ_C_FINE
//                  Select for OSC5K_S_FREQ_C_FINE value 0: Use SPI register value; 1: Use EFUSE value.
//    0  0x0     OSC5K_S_FREQ_C_SEL
//                  Select for OSC5K_S_FREQ_C_SEL value 0: Use SPI register value; 1: Use EFUSE value.

`define EFUSE_MAIN_CTL3_WIDTH                                 8
`define REGA_EFUSE_MAIN_CTL3                                  13'he57
`define EFUSE_MAIN_CTL3_DEFAULT                               8'h0
`define EFUSE_MAIN_CTL3_CHECK                                 8'h0
`define EFUSE_MAIN_CTL3                                       `EFUSE_MAIN_CTL3_WIDTH, `REGA_EFUSE_MAIN_CTL3, `EFUSE_MAIN_CTL3_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     TA2_S_CH_OFF_TRIM_DIG
//                  Select for TA2_S_CH_OFF_TRIM_DIG value 0: Use SPI register value; 1: Use EFUSE value.
//    6  0x0     TA_OFF_TRIM_CH_SEL_DIG
//                  Select for TA_OFF_TRIM_CH_SEL_DIG value 0: Use SPI register value; 1: Use EFUSE value.
//    5  0x0     ADC_OFFSET
//                  Select for ADC_OFFSET value 0: Use SPI register value; 1: Use EFUSE value.
//    4  0x0     CONSTGM_S_SEL
//                  Select for CONSTGM_S_SEL value 0: Use SPI register value; 1: Use EFUSE value.
//    3  0x0     CONSTGM_S_Y
//                  Select for CONSTGM_S_Y value 0: Use SPI register value; 1: Use EFUSE value.
//    2  0x0     LED_S_TRIM
//                  Select for LED_S_TRIM value 0: Use SPI register value; 1: Use EFUSE value.
//    1  0x0     NLED_LASER
//                  Select for NLED_LASER value 0: Use SPI register value; 1: Use EFUSE value.
//    0  0x0     LSR_S_RBIN_SEL_B
//                  Select for LSR_S_RBIN_SEL_B value 0: Use SPI register value; 1: Use EFUSE value.

`define EFUSE_MAIN_CTL4_WIDTH                                 8
`define REGA_EFUSE_MAIN_CTL4                                  13'he58
`define EFUSE_MAIN_CTL4_DEFAULT                               8'h0
`define EFUSE_MAIN_CTL4_CHECK                                 8'h0
`define EFUSE_MAIN_CTL4                                       `EFUSE_MAIN_CTL4_WIDTH, `REGA_EFUSE_MAIN_CTL4, `EFUSE_MAIN_CTL4_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     PIX_1ST_COL_OFFSET
//                  Select for PIX_1ST_COL_OFFSET value 0: Use SPI register value; 1: Use EFUSE value.
//    6  0x0     CH_SEL_EN_1ST_COL_OFFSET
//                  Select for CH_SEL_EN_1ST_COL_OFFSET value 0: Use SPI register value; 1: Use EFUSE value.
//    5  0x0     SPARE_REG_S0_LO
//                  Select for SPARE_REG_S0_LO value 0: Use SPI register value; 1: Use EFUSE value.
//    4  0x0     VDET_S_CLAMPREF_TRIM
//                  Select for VDET_S_CLAMPREF_TRIM value 0: Use SPI register value; 1: Use EFUSE value.
//    3  0x0     PAD_16M_EN_FAST
//                  Select for PAD_16M_EN value 1: Use SPI register value; 0: Use EFUSE value.
//    2  0x0     PAD_S_SPI_CONFIG
//                  Select for PAD_S_SPI_CONFIG value 0: Use SPI register value; 1: Use EFUSE value.
//    1  0x0     PROD_ID
//                  Select for PROD_ID value 0: Use SPI register value; 1: Use EFUSE value.
//    0  0x0     CLAMP_S_TRIM
//                  Select for CLAMP_S_TRIM value 0: Use SPI register value; 1: Use EFUSE value.

`define EFUSE_MAIN_CTL5_WIDTH                                 8
`define REGA_EFUSE_MAIN_CTL5                                  13'he59
`define EFUSE_MAIN_CTL5_DEFAULT                               8'h0
`define EFUSE_MAIN_CTL5_CHECK                                 8'h0
`define EFUSE_MAIN_CTL5                                       `EFUSE_MAIN_CTL5_WIDTH, `REGA_EFUSE_MAIN_CTL5, `EFUSE_MAIN_CTL5_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     ENABLE_SPI_OVERWRITE
//                  Select for CH_SEL_EN_1ST_COL_OFFSET value 0: Use SPI register value; 1: Use EFUSE value.
//    6  0x0     RESERVED
//                  Reserved
//    5  0x0     SPEED_RES_UNCLIP
//                  0 = Speed and Resolution locked
//                  1 = Speed and Resolution SPI register controlled
//    4  0x0     MAX_SPEED_SEL
//                  0 = Razer
//                  1 = ROW
//    3  0x0     MAX_FRAME_RATE_SEL
//                  0 = 20kfps
//                  1 = Unclipped
//    2  0x0     DPI_STEP_SEL
//                  0 = 50 dpi
//                  1 = 1 dpi
//  1:0  0x0     MAX_RES_SEL
//                  Max Resolution (2 bits)
//                  00 = 20k
//                  01 = 22k
//                  10 = 25k
//                  11 = 28k

`define EFUSE_DOUT0_WIDTH                                     8
`define REGA_EFUSE_DOUT0                                      13'he60
`define EFUSE_DOUT0_DEFAULT                                   8'h0
`define EFUSE_DOUT0_CHECK                                     8'h0
`define EFUSE_DOUT0                                           `EFUSE_DOUT0_WIDTH, `REGA_EFUSE_DOUT0, `EFUSE_DOUT0_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     EFUSE_DOUT0_VAL
//                  In summary a '1' indicates that the fuse bit is burned while '0' indicates that the fuse in not burned.

`define EFUSE_DOUT1_WIDTH                                     8
`define REGA_EFUSE_DOUT1                                      13'he61
`define EFUSE_DOUT1_DEFAULT                                   8'h0
`define EFUSE_DOUT1_CHECK                                     8'h0
`define EFUSE_DOUT1                                           `EFUSE_DOUT1_WIDTH, `REGA_EFUSE_DOUT1, `EFUSE_DOUT1_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     EFUSE_DOUT1_VAL
//                  In summary a '1' indicates that the fuse bit is burned while '0' indicates that the fuse in not burned.

`define EFUSE_DOUT2_WIDTH                                     8
`define REGA_EFUSE_DOUT2                                      13'he62
`define EFUSE_DOUT2_DEFAULT                                   8'h0
`define EFUSE_DOUT2_CHECK                                     8'h0
`define EFUSE_DOUT2                                           `EFUSE_DOUT2_WIDTH, `REGA_EFUSE_DOUT2, `EFUSE_DOUT2_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     EFUSE_DOUT2_VAL
//                  In summary a '1' indicates that the fuse bit is burned while '0' indicates that the fuse in not burned.

`define EFUSE_DOUT3_WIDTH                                     8
`define REGA_EFUSE_DOUT3                                      13'he63
`define EFUSE_DOUT3_DEFAULT                                   8'h0
`define EFUSE_DOUT3_CHECK                                     8'h0
`define EFUSE_DOUT3                                           `EFUSE_DOUT3_WIDTH, `REGA_EFUSE_DOUT3, `EFUSE_DOUT3_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     EFUSE_DOUT3_VAL
//                  In summary a '1' indicates that the fuse bit is burned while '0' indicates that the fuse in not burned.

`define EFUSE_DOUT4_WIDTH                                     8
`define REGA_EFUSE_DOUT4                                      13'he64
`define EFUSE_DOUT4_DEFAULT                                   8'h0
`define EFUSE_DOUT4_CHECK                                     8'h0
`define EFUSE_DOUT4                                           `EFUSE_DOUT4_WIDTH, `REGA_EFUSE_DOUT4, `EFUSE_DOUT4_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     EFUSE_DOUT4_VAL
//                  In summary a '1' indicates that the fuse bit is burned while '0' indicates that the fuse in not burned.

`define EFUSE_DOUT5_WIDTH                                     8
`define REGA_EFUSE_DOUT5                                      13'he65
`define EFUSE_DOUT5_DEFAULT                                   8'h0
`define EFUSE_DOUT5_CHECK                                     8'h0
`define EFUSE_DOUT5                                           `EFUSE_DOUT5_WIDTH, `REGA_EFUSE_DOUT5, `EFUSE_DOUT5_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     EFUSE_DOUT5_VAL
//                  In summary a '1' indicates that the fuse bit is burned while '0' indicates that the fuse in not burned.

`define EFUSE_DOUT6_WIDTH                                     8
`define REGA_EFUSE_DOUT6                                      13'he66
`define EFUSE_DOUT6_DEFAULT                                   8'h0
`define EFUSE_DOUT6_CHECK                                     8'h0
`define EFUSE_DOUT6                                           `EFUSE_DOUT6_WIDTH, `REGA_EFUSE_DOUT6, `EFUSE_DOUT6_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     EFUSE_DOUT6_VAL
//                  In summary a '1' indicates that the fuse bit is burned while '0' indicates that the fuse in not burned.

`define EFUSE_DOUT7_WIDTH                                     8
`define REGA_EFUSE_DOUT7                                      13'he67
`define EFUSE_DOUT7_DEFAULT                                   8'h0
`define EFUSE_DOUT7_CHECK                                     8'h0
`define EFUSE_DOUT7                                           `EFUSE_DOUT7_WIDTH, `REGA_EFUSE_DOUT7, `EFUSE_DOUT7_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     EFUSE_DOUT7_VAL
//                  In summary a '1' indicates that the fuse bit is burned while '0' indicates that the fuse in not burned.

`define EFUSE_DOUT8_WIDTH                                     8
`define REGA_EFUSE_DOUT8                                      13'he68
`define EFUSE_DOUT8_DEFAULT                                   8'h0
`define EFUSE_DOUT8_CHECK                                     8'h0
`define EFUSE_DOUT8                                           `EFUSE_DOUT8_WIDTH, `REGA_EFUSE_DOUT8, `EFUSE_DOUT8_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     EFUSE_DOUT8_VAL
//                  In summary a '1' indicates that the fuse bit is burned while '0' indicates that the fuse in not burned.

`define EFUSE_DOUT9_WIDTH                                     8
`define REGA_EFUSE_DOUT9                                      13'he69
`define EFUSE_DOUT9_DEFAULT                                   8'h0
`define EFUSE_DOUT9_CHECK                                     8'h0
`define EFUSE_DOUT9                                           `EFUSE_DOUT9_WIDTH, `REGA_EFUSE_DOUT9, `EFUSE_DOUT9_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     EFUSE_DOUT9_VAL
//                  In summary a '1' indicates that the fuse bit is burned while '0' indicates that the fuse in not burned.

`define EFUSE_DOUT10_WIDTH                                    8
`define REGA_EFUSE_DOUT10                                     13'he6a
`define EFUSE_DOUT10_DEFAULT                                  8'h0
`define EFUSE_DOUT10_CHECK                                    8'h0
`define EFUSE_DOUT10                                          `EFUSE_DOUT10_WIDTH, `REGA_EFUSE_DOUT10, `EFUSE_DOUT10_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     EFUSE_DOUT10_VAL
//                  In summary a '1' indicates that the fuse bit is burned while '0' indicates that the fuse in not burned.

`define EFUSE_DOUT11_WIDTH                                    8
`define REGA_EFUSE_DOUT11                                     13'he6b
`define EFUSE_DOUT11_DEFAULT                                  8'h0
`define EFUSE_DOUT11_CHECK                                    8'h0
`define EFUSE_DOUT11                                          `EFUSE_DOUT11_WIDTH, `REGA_EFUSE_DOUT11, `EFUSE_DOUT11_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     EFUSE_DOUT11_VAL
//                  In summary a '1' indicates that the fuse bit is burned while '0' indicates that the fuse in not burned.

`define EFUSE_DOUT12_WIDTH                                    8
`define REGA_EFUSE_DOUT12                                     13'he6c
`define EFUSE_DOUT12_DEFAULT                                  8'h0
`define EFUSE_DOUT12_CHECK                                    8'h0
`define EFUSE_DOUT12                                          `EFUSE_DOUT12_WIDTH, `REGA_EFUSE_DOUT12, `EFUSE_DOUT12_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     EFUSE_DOUT12_VAL
//                  In summary a '1' indicates that the fuse bit is burned while '0' indicates that the fuse in not burned.

`define EFUSE_DOUT13_WIDTH                                    8
`define REGA_EFUSE_DOUT13                                     13'he6d
`define EFUSE_DOUT13_DEFAULT                                  8'h0
`define EFUSE_DOUT13_CHECK                                    8'h0
`define EFUSE_DOUT13                                          `EFUSE_DOUT13_WIDTH, `REGA_EFUSE_DOUT13, `EFUSE_DOUT13_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     EFUSE_DOUT13_VAL
//                  In summary a '1' indicates that the fuse bit is burned while '0' indicates that the fuse in not burned.

`define EFUSE_DOUT14_WIDTH                                    8
`define REGA_EFUSE_DOUT14                                     13'he6e
`define EFUSE_DOUT14_DEFAULT                                  8'h0
`define EFUSE_DOUT14_CHECK                                    8'h0
`define EFUSE_DOUT14                                          `EFUSE_DOUT14_WIDTH, `REGA_EFUSE_DOUT14, `EFUSE_DOUT14_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     EFUSE_DOUT14_VAL
//                  In summary a '1' indicates that the fuse bit is burned while '0' indicates that the fuse in not burned.

`define EFUSE_DOUT15_WIDTH                                    8
`define REGA_EFUSE_DOUT15                                     13'he6f
`define EFUSE_DOUT15_DEFAULT                                  8'h0
`define EFUSE_DOUT15_CHECK                                    8'h0
`define EFUSE_DOUT15                                          `EFUSE_DOUT15_WIDTH, `REGA_EFUSE_DOUT15, `EFUSE_DOUT15_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     EFUSE_DOUT15_VAL
//                  In summary a '1' indicates that the fuse bit is burned while '0' indicates that the fuse in not burned.


`define P15_PROD_ID_WIDTH                                     0
`define REGA_P15_PROD_ID                                      13'hf00
`define P15_PROD_ID                                           `P15_PROD_ID_WIDTH, `REGA_P15_PROD_ID, `P15_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P15_REV_ID_WIDTH                                      0
`define REGA_P15_REV_ID                                       13'hf01
`define P15_REV_ID                                            `P15_REV_ID_WIDTH, `REGA_P15_REV_ID, `P15_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P15_MOTION_WIDTH                                      0
`define REGA_P15_MOTION                                       13'hf02
`define P15_MOTION                                            `P15_MOTION_WIDTH, `REGA_P15_MOTION, `P15_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P15_DELTA_X_LO_WIDTH                                  0
`define REGA_P15_DELTA_X_LO                                   13'hf03
`define P15_DELTA_X_LO                                        `P15_DELTA_X_LO_WIDTH, `REGA_P15_DELTA_X_LO, `P15_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P15_DELTA_X_HI_WIDTH                                  0
`define REGA_P15_DELTA_X_HI                                   13'hf04
`define P15_DELTA_X_HI                                        `P15_DELTA_X_HI_WIDTH, `REGA_P15_DELTA_X_HI, `P15_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P15_DELTA_Y_LO_WIDTH                                  0
`define REGA_P15_DELTA_Y_LO                                   13'hf05
`define P15_DELTA_Y_LO                                        `P15_DELTA_Y_LO_WIDTH, `REGA_P15_DELTA_Y_LO, `P15_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P15_DELTA_Y_HI_WIDTH                                  0
`define REGA_P15_DELTA_Y_HI                                   13'hf06
`define P15_DELTA_Y_HI                                        `P15_DELTA_Y_HI_WIDTH, `REGA_P15_DELTA_Y_HI, `P15_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P15_SQUAL_WIDTH                                       0
`define REGA_P15_SQUAL                                        13'hf07
`define P15_SQUAL                                             `P15_SQUAL_WIDTH, `REGA_P15_SQUAL, `P15_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P15_PIX_ACCUM_WIDTH                                   0
`define REGA_P15_PIX_ACCUM                                    13'hf08
`define P15_PIX_ACCUM                                         `P15_PIX_ACCUM_WIDTH, `REGA_P15_PIX_ACCUM, `P15_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P15_PIX_MAX_WIDTH                                     0
`define REGA_P15_PIX_MAX                                      13'hf09
`define P15_PIX_MAX                                           `P15_PIX_MAX_WIDTH, `REGA_P15_PIX_MAX, `P15_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P15_PIX_MIN_WIDTH                                     0
`define REGA_P15_PIX_MIN                                      13'hf0a
`define P15_PIX_MIN                                           `P15_PIX_MIN_WIDTH, `REGA_P15_PIX_MIN, `P15_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P15_SHUT_LO_WIDTH                                     0
`define REGA_P15_SHUT_LO                                      13'hf0b
`define P15_SHUT_LO                                           `P15_SHUT_LO_WIDTH, `REGA_P15_SHUT_LO, `P15_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P15_SHUT_HI_WIDTH                                     0
`define REGA_P15_SHUT_HI                                      13'hf0c
`define P15_SHUT_HI                                           `P15_SHUT_HI_WIDTH, `REGA_P15_SHUT_HI, `P15_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P15_EXT_WAKEUP_WIDTH                                  0
`define REGA_P15_EXT_WAKEUP                                   13'hf0d
`define P15_EXT_WAKEUP                                        `P15_EXT_WAKEUP_WIDTH, `REGA_P15_EXT_WAKEUP, `P15_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P15_RESERVED_E_WIDTH                                  0
`define REGA_P15_RESERVED_E                                   13'hf0e
`define P15_RESERVED_E                                        `P15_RESERVED_E_WIDTH, `REGA_P15_RESERVED_E, `P15_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P15_SKIP_FRAMES_CNT_LO_WIDTH                          0
`define REGA_P15_SKIP_FRAMES_CNT_LO                           13'hf0f
`define P15_SKIP_FRAMES_CNT_LO                                `P15_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P15_SKIP_FRAMES_CNT_LO, `P15_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P15_SKIP_FRAMES_CNT_HI_WIDTH                          0
`define REGA_P15_SKIP_FRAMES_CNT_HI                           13'hf10
`define P15_SKIP_FRAMES_CNT_HI                                `P15_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P15_SKIP_FRAMES_CNT_HI, `P15_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P15_CVFR_PERIOD_LO_WIDTH                              0
`define REGA_P15_CVFR_PERIOD_LO                               13'hf11
`define P15_CVFR_PERIOD_LO                                    `P15_CVFR_PERIOD_LO_WIDTH, `REGA_P15_CVFR_PERIOD_LO, `P15_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P15_CVFR_PERIOD_HI_WIDTH                              0
`define REGA_P15_CVFR_PERIOD_HI                               13'hf12
`define P15_CVFR_PERIOD_HI                                    `P15_CVFR_PERIOD_HI_WIDTH, `REGA_P15_CVFR_PERIOD_HI, `P15_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P15_OBSERVATION_WIDTH                                 0
`define REGA_P15_OBSERVATION                                  13'hf15
`define P15_OBSERVATION                                       `P15_OBSERVATION_WIDTH, `REGA_P15_OBSERVATION, `P15_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P15_BURST_MOTION_WIDTH                                0
`define REGA_P15_BURST_MOTION                                 13'hf16
`define P15_BURST_MOTION                                      `P15_BURST_MOTION_WIDTH, `REGA_P15_BURST_MOTION, `P15_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P15_SQUAL2_WIDTH                                      0
`define REGA_P15_SQUAL2                                       13'hf17
`define P15_SQUAL2                                            `P15_SQUAL2_WIDTH, `REGA_P15_SQUAL2, `P15_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P15_SPI_MODE_WIDTH                                    0
`define REGA_P15_SPI_MODE                                     13'hf18
`define P15_SPI_MODE                                          `P15_SPI_MODE_WIDTH, `REGA_P15_SPI_MODE, `P15_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P15_OSC_TUNE_INSTR_WIDTH                              0
`define REGA_P15_OSC_TUNE_INSTR                               13'hf22
`define P15_OSC_TUNE_INSTR                                    `P15_OSC_TUNE_INSTR_WIDTH, `REGA_P15_OSC_TUNE_INSTR, `P15_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P15_OSC_TUNE_INSTR_SLOW_WIDTH                         0
`define REGA_P15_OSC_TUNE_INSTR_SLOW                          13'hf23
`define P15_OSC_TUNE_INSTR_SLOW                               `P15_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P15_OSC_TUNE_INSTR_SLOW, `P15_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P15_PRBS_MODE_WIDTH                                   0
`define REGA_P15_PRBS_MODE                                    13'hf30
`define P15_PRBS_MODE                                         `P15_PRBS_MODE_WIDTH, `REGA_P15_PRBS_MODE, `P15_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P15_POWERDOWN_WIDTH                                   0
`define REGA_P15_POWERDOWN                                    13'hf32
`define P15_POWERDOWN                                         `P15_POWERDOWN_WIDTH, `REGA_P15_POWERDOWN, `P15_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P15_CRC0_WIDTH                                        0
`define REGA_P15_CRC0                                         13'hf33
`define P15_CRC0                                              `P15_CRC0_WIDTH, `REGA_P15_CRC0, `P15_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P15_CRC1_WIDTH                                        0
`define REGA_P15_CRC1                                         13'hf34
`define P15_CRC1                                              `P15_CRC1_WIDTH, `REGA_P15_CRC1, `P15_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P15_CRC2_WIDTH                                        0
`define REGA_P15_CRC2                                         13'hf35
`define P15_CRC2                                              `P15_CRC2_WIDTH, `REGA_P15_CRC2, `P15_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P15_CRC3_WIDTH                                        0
`define REGA_P15_CRC3                                         13'hf36
`define P15_CRC3                                              `P15_CRC3_WIDTH, `REGA_P15_CRC3, `P15_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P15_IOSTATUS_WIDTH                                    0
`define REGA_P15_IOSTATUS                                     13'hf37
`define P15_IOSTATUS                                          `P15_IOSTATUS_WIDTH, `REGA_P15_IOSTATUS, `P15_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P15_TAP_KEY_WO_WIDTH                                  0
`define REGA_P15_TAP_KEY_WO                                   13'hf38
`define P15_TAP_KEY_WO                                        `P15_TAP_KEY_WO_WIDTH, `REGA_P15_TAP_KEY_WO, `P15_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P15_TAP_KEY_WIDTH                                     0
`define REGA_P15_TAP_KEY                                      13'hf39
`define P15_TAP_KEY                                           `P15_TAP_KEY_WIDTH, `REGA_P15_TAP_KEY, `P15_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P15_POWER_UP_RESET_WIDTH                              0
`define REGA_P15_POWER_UP_RESET                               13'hf3a
`define P15_POWER_UP_RESET                                    `P15_POWER_UP_RESET_WIDTH, `REGA_P15_POWER_UP_RESET, `P15_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P15_SHUTDOWN_WIDTH                                    0
`define REGA_P15_SHUTDOWN                                     13'hf3b
`define P15_SHUTDOWN                                          `P15_SHUTDOWN_WIDTH, `REGA_P15_SHUTDOWN, `P15_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P15_SCAN_MODE_WIDTH                                   0
`define REGA_P15_SCAN_MODE                                    13'hf3c
`define P15_SCAN_MODE                                         `P15_SCAN_MODE_WIDTH, `REGA_P15_SCAN_MODE, `P15_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P15_SPI_PAGE_WIDTH                                    0
`define REGA_P15_SPI_PAGE                                     13'hf7f
`define P15_SPI_PAGE                                          `P15_SPI_PAGE_WIDTH, `REGA_P15_SPI_PAGE, `P15_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define MEM_BIST_WIDTH                                        8
`define REGA_MEM_BIST                                         13'hf41
`define MEM_BIST_DEFAULT                                      8'h0
`define MEM_BIST_CHECK                                        8'h0
`define MEM_BIST                                              `MEM_BIST_WIDTH, `REGA_MEM_BIST, `MEM_BIST_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     BIST_MODE
//                  0: Disable
//                  1: Enable
//    6  0x0     RESERVED
//                  reserved
//  5:4  0x0     MEM_SEL
//                  00: NONE
//                  01: RAM512 x 4 MEM0
//                  10: RAM512 x 4 MEM1
//    3  0x0     BIST_START
//    2  0x0     BIST_DONE
//                  *READ ONLY
//    1  0x0     MEMBIST_RESULT RW0101
//                  1: Fail
//                  0: Pass
//                  *READ ONLY
//    0  0x0     MEMBIST_RESULT RW1010
//                  1: Fail
//                  0: Pass
//                  *READ ONLY

`define BIST_DONE_WIDTH                                       8
`define REGA_BIST_DONE                                        13'hf44
`define BIST_DONE_DEFAULT                                     8'h0
`define BIST_DONE_CHECK                                       8'h0
`define BIST_DONE                                             `BIST_DONE_WIDTH, `REGA_BIST_DONE, `BIST_DONE_DEFAULT
//  access       ro
//  atype        A
//  7:4  0x0     RESERVED
//                  Reserved
//    3  0x0     BIST_DONE3
//                  CMEM1 BIST DONE status
//                  0: Not Done
//                  1: Done
//    2  0x0     BIST_DONE2
//                  CMEM0 BIST DONE status
//                  0: Not Done
//                  1: Done
//    1  0x0     BIST_DONE1
//                  COR BIST DONE status
//                  0: Not Done
//                  1: Done
//    0  0x0     BIST_DONE0
//                  DCR BIST DONE status
//                  0: Not Done
//                  1: Done

`define MEMBIST_RESULT_FINAL_WIDTH                            8
`define REGA_MEMBIST_RESULT_FINAL                             13'hf45
`define MEMBIST_RESULT_FINAL_DEFAULT                          8'h0
`define MEMBIST_RESULT_FINAL_CHECK                            8'h0
`define MEMBIST_RESULT_FINAL                                  `MEMBIST_RESULT_FINAL_WIDTH, `REGA_MEMBIST_RESULT_FINAL, `MEMBIST_RESULT_FINAL_DEFAULT
//  access       ro
//  atype        S
//  7:4  0x0     RESERVED
//                  Reserved
//    3  0x0     MEMBIST_RESULT3
//                  CMEM1 membist result
//                  1: Fail
//                  0: Pass
//    2  0x0     MEMBIST_RESULT2
//                  CMEM0 membist result
//                  1: Fail
//                  0: Pass
//    1  0x0     MEMBIST_RESULT1
//                  COR membist result
//                  1: Fail
//                  0: Pass
//    0  0x0     MEMBIST_RESULT0
//                  DCR membist result
//                  1: Fail
//                  0: Pass


`define P16_PROD_ID_WIDTH                                     0
`define REGA_P16_PROD_ID                                      13'h1000
`define P16_PROD_ID                                           `P16_PROD_ID_WIDTH, `REGA_P16_PROD_ID, `P16_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P16_REV_ID_WIDTH                                      0
`define REGA_P16_REV_ID                                       13'h1001
`define P16_REV_ID                                            `P16_REV_ID_WIDTH, `REGA_P16_REV_ID, `P16_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P16_MOTION_WIDTH                                      0
`define REGA_P16_MOTION                                       13'h1002
`define P16_MOTION                                            `P16_MOTION_WIDTH, `REGA_P16_MOTION, `P16_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P16_DELTA_X_LO_WIDTH                                  0
`define REGA_P16_DELTA_X_LO                                   13'h1003
`define P16_DELTA_X_LO                                        `P16_DELTA_X_LO_WIDTH, `REGA_P16_DELTA_X_LO, `P16_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P16_DELTA_X_HI_WIDTH                                  0
`define REGA_P16_DELTA_X_HI                                   13'h1004
`define P16_DELTA_X_HI                                        `P16_DELTA_X_HI_WIDTH, `REGA_P16_DELTA_X_HI, `P16_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P16_DELTA_Y_LO_WIDTH                                  0
`define REGA_P16_DELTA_Y_LO                                   13'h1005
`define P16_DELTA_Y_LO                                        `P16_DELTA_Y_LO_WIDTH, `REGA_P16_DELTA_Y_LO, `P16_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P16_DELTA_Y_HI_WIDTH                                  0
`define REGA_P16_DELTA_Y_HI                                   13'h1006
`define P16_DELTA_Y_HI                                        `P16_DELTA_Y_HI_WIDTH, `REGA_P16_DELTA_Y_HI, `P16_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P16_SQUAL_WIDTH                                       0
`define REGA_P16_SQUAL                                        13'h1007
`define P16_SQUAL                                             `P16_SQUAL_WIDTH, `REGA_P16_SQUAL, `P16_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P16_PIX_ACCUM_WIDTH                                   0
`define REGA_P16_PIX_ACCUM                                    13'h1008
`define P16_PIX_ACCUM                                         `P16_PIX_ACCUM_WIDTH, `REGA_P16_PIX_ACCUM, `P16_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P16_PIX_MAX_WIDTH                                     0
`define REGA_P16_PIX_MAX                                      13'h1009
`define P16_PIX_MAX                                           `P16_PIX_MAX_WIDTH, `REGA_P16_PIX_MAX, `P16_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P16_PIX_MIN_WIDTH                                     0
`define REGA_P16_PIX_MIN                                      13'h100a
`define P16_PIX_MIN                                           `P16_PIX_MIN_WIDTH, `REGA_P16_PIX_MIN, `P16_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P16_SHUT_LO_WIDTH                                     0
`define REGA_P16_SHUT_LO                                      13'h100b
`define P16_SHUT_LO                                           `P16_SHUT_LO_WIDTH, `REGA_P16_SHUT_LO, `P16_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P16_SHUT_HI_WIDTH                                     0
`define REGA_P16_SHUT_HI                                      13'h100c
`define P16_SHUT_HI                                           `P16_SHUT_HI_WIDTH, `REGA_P16_SHUT_HI, `P16_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P16_EXT_WAKEUP_WIDTH                                  0
`define REGA_P16_EXT_WAKEUP                                   13'h100d
`define P16_EXT_WAKEUP                                        `P16_EXT_WAKEUP_WIDTH, `REGA_P16_EXT_WAKEUP, `P16_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P16_RESERVED_E_WIDTH                                  0
`define REGA_P16_RESERVED_E                                   13'h100e
`define P16_RESERVED_E                                        `P16_RESERVED_E_WIDTH, `REGA_P16_RESERVED_E, `P16_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P16_SKIP_FRAMES_CNT_LO_WIDTH                          0
`define REGA_P16_SKIP_FRAMES_CNT_LO                           13'h100f
`define P16_SKIP_FRAMES_CNT_LO                                `P16_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P16_SKIP_FRAMES_CNT_LO, `P16_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P16_SKIP_FRAMES_CNT_HI_WIDTH                          0
`define REGA_P16_SKIP_FRAMES_CNT_HI                           13'h1010
`define P16_SKIP_FRAMES_CNT_HI                                `P16_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P16_SKIP_FRAMES_CNT_HI, `P16_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P16_CVFR_PERIOD_LO_WIDTH                              0
`define REGA_P16_CVFR_PERIOD_LO                               13'h1011
`define P16_CVFR_PERIOD_LO                                    `P16_CVFR_PERIOD_LO_WIDTH, `REGA_P16_CVFR_PERIOD_LO, `P16_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P16_CVFR_PERIOD_HI_WIDTH                              0
`define REGA_P16_CVFR_PERIOD_HI                               13'h1012
`define P16_CVFR_PERIOD_HI                                    `P16_CVFR_PERIOD_HI_WIDTH, `REGA_P16_CVFR_PERIOD_HI, `P16_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P16_OBSERVATION_WIDTH                                 0
`define REGA_P16_OBSERVATION                                  13'h1015
`define P16_OBSERVATION                                       `P16_OBSERVATION_WIDTH, `REGA_P16_OBSERVATION, `P16_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P16_BURST_MOTION_WIDTH                                0
`define REGA_P16_BURST_MOTION                                 13'h1016
`define P16_BURST_MOTION                                      `P16_BURST_MOTION_WIDTH, `REGA_P16_BURST_MOTION, `P16_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P16_SQUAL2_WIDTH                                      0
`define REGA_P16_SQUAL2                                       13'h1017
`define P16_SQUAL2                                            `P16_SQUAL2_WIDTH, `REGA_P16_SQUAL2, `P16_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P16_SPI_MODE_WIDTH                                    0
`define REGA_P16_SPI_MODE                                     13'h1018
`define P16_SPI_MODE                                          `P16_SPI_MODE_WIDTH, `REGA_P16_SPI_MODE, `P16_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P16_OSC_TUNE_INSTR_WIDTH                              0
`define REGA_P16_OSC_TUNE_INSTR                               13'h1022
`define P16_OSC_TUNE_INSTR                                    `P16_OSC_TUNE_INSTR_WIDTH, `REGA_P16_OSC_TUNE_INSTR, `P16_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P16_OSC_TUNE_INSTR_SLOW_WIDTH                         0
`define REGA_P16_OSC_TUNE_INSTR_SLOW                          13'h1023
`define P16_OSC_TUNE_INSTR_SLOW                               `P16_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P16_OSC_TUNE_INSTR_SLOW, `P16_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P16_PRBS_MODE_WIDTH                                   0
`define REGA_P16_PRBS_MODE                                    13'h1030
`define P16_PRBS_MODE                                         `P16_PRBS_MODE_WIDTH, `REGA_P16_PRBS_MODE, `P16_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P16_POWERDOWN_WIDTH                                   0
`define REGA_P16_POWERDOWN                                    13'h1032
`define P16_POWERDOWN                                         `P16_POWERDOWN_WIDTH, `REGA_P16_POWERDOWN, `P16_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P16_CRC0_WIDTH                                        0
`define REGA_P16_CRC0                                         13'h1033
`define P16_CRC0                                              `P16_CRC0_WIDTH, `REGA_P16_CRC0, `P16_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P16_CRC1_WIDTH                                        0
`define REGA_P16_CRC1                                         13'h1034
`define P16_CRC1                                              `P16_CRC1_WIDTH, `REGA_P16_CRC1, `P16_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P16_CRC2_WIDTH                                        0
`define REGA_P16_CRC2                                         13'h1035
`define P16_CRC2                                              `P16_CRC2_WIDTH, `REGA_P16_CRC2, `P16_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P16_CRC3_WIDTH                                        0
`define REGA_P16_CRC3                                         13'h1036
`define P16_CRC3                                              `P16_CRC3_WIDTH, `REGA_P16_CRC3, `P16_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P16_IOSTATUS_WIDTH                                    0
`define REGA_P16_IOSTATUS                                     13'h1037
`define P16_IOSTATUS                                          `P16_IOSTATUS_WIDTH, `REGA_P16_IOSTATUS, `P16_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P16_TAP_KEY_WO_WIDTH                                  0
`define REGA_P16_TAP_KEY_WO                                   13'h1038
`define P16_TAP_KEY_WO                                        `P16_TAP_KEY_WO_WIDTH, `REGA_P16_TAP_KEY_WO, `P16_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P16_TAP_KEY_WIDTH                                     0
`define REGA_P16_TAP_KEY                                      13'h1039
`define P16_TAP_KEY                                           `P16_TAP_KEY_WIDTH, `REGA_P16_TAP_KEY, `P16_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P16_POWER_UP_RESET_WIDTH                              0
`define REGA_P16_POWER_UP_RESET                               13'h103a
`define P16_POWER_UP_RESET                                    `P16_POWER_UP_RESET_WIDTH, `REGA_P16_POWER_UP_RESET, `P16_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P16_SHUTDOWN_WIDTH                                    0
`define REGA_P16_SHUTDOWN                                     13'h103b
`define P16_SHUTDOWN                                          `P16_SHUTDOWN_WIDTH, `REGA_P16_SHUTDOWN, `P16_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P16_SCAN_MODE_WIDTH                                   0
`define REGA_P16_SCAN_MODE                                    13'h103c
`define P16_SCAN_MODE                                         `P16_SCAN_MODE_WIDTH, `REGA_P16_SCAN_MODE, `P16_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P16_SPI_PAGE_WIDTH                                    0
`define REGA_P16_SPI_PAGE                                     13'h107f
`define P16_SPI_PAGE                                          `P16_SPI_PAGE_WIDTH, `REGA_P16_SPI_PAGE, `P16_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define OSC_COUNT_UPPER2_FAST_WIDTH                           8
`define REGA_OSC_COUNT_UPPER2_FAST                            13'h1041
`define OSC_COUNT_UPPER2_FAST_DEFAULT                         8'h2
`define OSC_COUNT_UPPER2_FAST_CHECK                           8'h2
`define OSC_COUNT_UPPER2_FAST                                 `OSC_COUNT_UPPER2_FAST_WIDTH, `REGA_OSC_COUNT_UPPER2_FAST, `OSC_COUNT_UPPER2_FAST_DEFAULT
//  access       rw
//  atype        A
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x2     OSC_COUNT_UPPER_FAST
//                  OSC_COUNT_UPPER_FAST[20:16]

`define OSC_COUNT_UPPER1_FAST_WIDTH                           8
`define REGA_OSC_COUNT_UPPER1_FAST                            13'h1042
`define OSC_COUNT_UPPER1_FAST_DEFAULT                         8'h1e
`define OSC_COUNT_UPPER1_FAST_CHECK                           8'h1e
`define OSC_COUNT_UPPER1_FAST                                 `OSC_COUNT_UPPER1_FAST_WIDTH, `REGA_OSC_COUNT_UPPER1_FAST, `OSC_COUNT_UPPER1_FAST_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x1e    OSC_COUNT_UPPER_FAST
//                  OSC_COUNT_UPPER_FAST[15:8]

`define OSC_COUNT_UPPER0_FAST_WIDTH                           8
`define REGA_OSC_COUNT_UPPER0_FAST                            13'h1043
`define OSC_COUNT_UPPER0_FAST_DEFAULT                         8'hf0
`define OSC_COUNT_UPPER0_FAST_CHECK                           8'hf0
`define OSC_COUNT_UPPER0_FAST                                 `OSC_COUNT_UPPER0_FAST_WIDTH, `REGA_OSC_COUNT_UPPER0_FAST, `OSC_COUNT_UPPER0_FAST_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xf0    OSC_COUNT_UPPER_FAST
//                  OSC_COUNT_UPPER_FAST[7:0]

`define OSC_COUNT_LOWER2_FAST_WIDTH                           8
`define REGA_OSC_COUNT_LOWER2_FAST                            13'h1044
`define OSC_COUNT_LOWER2_FAST_DEFAULT                         8'h2
`define OSC_COUNT_LOWER2_FAST_CHECK                           8'h2
`define OSC_COUNT_LOWER2_FAST                                 `OSC_COUNT_LOWER2_FAST_WIDTH, `REGA_OSC_COUNT_LOWER2_FAST, `OSC_COUNT_LOWER2_FAST_DEFAULT
//  access       rw
//  atype        A
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x2     OSC_COUNT_LOWER_FAST
//                  OSC_COUNT_LOWER_FAST[20:16]

`define OSC_COUNT_LOWER1_FAST_WIDTH                           8
`define REGA_OSC_COUNT_LOWER1_FAST                            13'h1045
`define OSC_COUNT_LOWER1_FAST_DEFAULT                         8'hf
`define OSC_COUNT_LOWER1_FAST_CHECK                           8'hf
`define OSC_COUNT_LOWER1_FAST                                 `OSC_COUNT_LOWER1_FAST_WIDTH, `REGA_OSC_COUNT_LOWER1_FAST, `OSC_COUNT_LOWER1_FAST_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xf     OSC_COUNT_LOWER_FAST
//                  OSC_COUNT_LOWER_FAST[15:8]

`define OSC_COUNT_LOWER0_FAST_WIDTH                           8
`define REGA_OSC_COUNT_LOWER0_FAST                            13'h1046
`define OSC_COUNT_LOWER0_FAST_DEFAULT                         8'h51
`define OSC_COUNT_LOWER0_FAST_CHECK                           8'h51
`define OSC_COUNT_LOWER0_FAST                                 `OSC_COUNT_LOWER0_FAST_WIDTH, `REGA_OSC_COUNT_LOWER0_FAST, `OSC_COUNT_LOWER0_FAST_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x51    OSC_COUNT_LOWER_FAST
//                  OSC_COUNT_LOWER_FAST[7:0]

`define OSC_COUNT_UPPER2_MED_WIDTH                            8
`define REGA_OSC_COUNT_UPPER2_MED                             13'h1047
`define OSC_COUNT_UPPER2_MED_DEFAULT                          8'h0
`define OSC_COUNT_UPPER2_MED_CHECK                            8'h0
`define OSC_COUNT_UPPER2_MED                                  `OSC_COUNT_UPPER2_MED_WIDTH, `REGA_OSC_COUNT_UPPER2_MED, `OSC_COUNT_UPPER2_MED_DEFAULT
//  access       rw
//  atype        A
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x0     OSC_COUNT_UPPER_MED
//                  OSC_COUNT_UPPER_MED[20:16]

`define OSC_COUNT_UPPER1_MED_WIDTH                            8
`define REGA_OSC_COUNT_UPPER1_MED                             13'h1048
`define OSC_COUNT_UPPER1_MED_DEFAULT                          8'h8
`define OSC_COUNT_UPPER1_MED_CHECK                            8'h8
`define OSC_COUNT_UPPER1_MED                                  `OSC_COUNT_UPPER1_MED_WIDTH, `REGA_OSC_COUNT_UPPER1_MED, `OSC_COUNT_UPPER1_MED_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x8     OSC_COUNT_UPPER_MED
//                  OSC_COUNT_UPPER_MED[15:8]

`define OSC_COUNT_UPPER0_MED_WIDTH                            8
`define REGA_OSC_COUNT_UPPER0_MED                             13'h1049
`define OSC_COUNT_UPPER0_MED_DEFAULT                          8'hc
`define OSC_COUNT_UPPER0_MED_CHECK                            8'hc
`define OSC_COUNT_UPPER0_MED                                  `OSC_COUNT_UPPER0_MED_WIDTH, `REGA_OSC_COUNT_UPPER0_MED, `OSC_COUNT_UPPER0_MED_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xc     OSC_COUNT_UPPER_MED
//                  OSC_COUNT_UPPER_MED[7:0]

`define OSC_COUNT_LOWER2_MED_WIDTH                            8
`define REGA_OSC_COUNT_LOWER2_MED                             13'h104a
`define OSC_COUNT_LOWER2_MED_DEFAULT                          8'h0
`define OSC_COUNT_LOWER2_MED_CHECK                            8'h0
`define OSC_COUNT_LOWER2_MED                                  `OSC_COUNT_LOWER2_MED_WIDTH, `REGA_OSC_COUNT_LOWER2_MED, `OSC_COUNT_LOWER2_MED_DEFAULT
//  access       rw
//  atype        A
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x0     OSC_COUNT_LOWER_MED
//                  OSC_COUNT_LOWER_MED[20:16]

`define OSC_COUNT_LOWER1_MED_WIDTH                            8
`define REGA_OSC_COUNT_LOWER1_MED                             13'h104b
`define OSC_COUNT_LOWER1_MED_DEFAULT                          8'h7
`define OSC_COUNT_LOWER1_MED_CHECK                            8'h7
`define OSC_COUNT_LOWER1_MED                                  `OSC_COUNT_LOWER1_MED_WIDTH, `REGA_OSC_COUNT_LOWER1_MED, `OSC_COUNT_LOWER1_MED_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x7     OSC_COUNT_LOWER_MED
//                  OSC_COUNT_LOWER_MED[15:8]

`define OSC_COUNT_LOWER0_MED_WIDTH                            8
`define REGA_OSC_COUNT_LOWER0_MED                             13'h104c
`define OSC_COUNT_LOWER0_MED_DEFAULT                          8'he3
`define OSC_COUNT_LOWER0_MED_CHECK                            8'he3
`define OSC_COUNT_LOWER0_MED                                  `OSC_COUNT_LOWER0_MED_WIDTH, `REGA_OSC_COUNT_LOWER0_MED, `OSC_COUNT_LOWER0_MED_DEFAULT
//  access       rw
//  atype        A
//  7:0  0xe3    OSC_COUNT_LOWER_MED
//                  OSC_COUNT_LOWER_MED[7:0]

`define OSC_COUNT_UPPER2_SLOW_WIDTH                           8
`define REGA_OSC_COUNT_UPPER2_SLOW                            13'h104d
`define OSC_COUNT_UPPER2_SLOW_DEFAULT                         8'h0
`define OSC_COUNT_UPPER2_SLOW_CHECK                           8'h0
`define OSC_COUNT_UPPER2_SLOW                                 `OSC_COUNT_UPPER2_SLOW_WIDTH, `REGA_OSC_COUNT_UPPER2_SLOW, `OSC_COUNT_UPPER2_SLOW_DEFAULT
//  access       rw
//  atype        A
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x0     OSC_COUNT_UPPER_SLOW
//                  OSC_COUNT_UPPER_SLOW[20:16]

`define OSC_COUNT_UPPER1_SLOW_WIDTH                           8
`define REGA_OSC_COUNT_UPPER1_SLOW                            13'h104e
`define OSC_COUNT_UPPER1_SLOW_DEFAULT                         8'h6e
`define OSC_COUNT_UPPER1_SLOW_CHECK                           8'h6e
`define OSC_COUNT_UPPER1_SLOW                                 `OSC_COUNT_UPPER1_SLOW_WIDTH, `REGA_OSC_COUNT_UPPER1_SLOW, `OSC_COUNT_UPPER1_SLOW_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x6e    OSC_COUNT_UPPER_SLOW
//                  OSC_COUNT_UPPER_SLOW[15:8]

`define OSC_COUNT_UPPER0_SLOW_WIDTH                           8
`define REGA_OSC_COUNT_UPPER0_SLOW                            13'h104f
`define OSC_COUNT_UPPER0_SLOW_DEFAULT                         8'h8f
`define OSC_COUNT_UPPER0_SLOW_CHECK                           8'h8f
`define OSC_COUNT_UPPER0_SLOW                                 `OSC_COUNT_UPPER0_SLOW_WIDTH, `REGA_OSC_COUNT_UPPER0_SLOW, `OSC_COUNT_UPPER0_SLOW_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x8f    OSC_COUNT_UPPER_SLOW
//                  OSC_COUNT_UPPER_SLOW[7:0]

`define OSC_COUNT_LOWER2_SLOW_WIDTH                           8
`define REGA_OSC_COUNT_LOWER2_SLOW                            13'h1050
`define OSC_COUNT_LOWER2_SLOW_DEFAULT                         8'h0
`define OSC_COUNT_LOWER2_SLOW_CHECK                           8'h0
`define OSC_COUNT_LOWER2_SLOW                                 `OSC_COUNT_LOWER2_SLOW_WIDTH, `REGA_OSC_COUNT_LOWER2_SLOW, `OSC_COUNT_LOWER2_SLOW_DEFAULT
//  access       rw
//  atype        A
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x0     OSC_COUNT_LOWER_SLOW
//                  OSC_COUNT_LOWER_SLOW[20:16]

`define OSC_COUNT_LOWER1_SLOW_WIDTH                           8
`define REGA_OSC_COUNT_LOWER1_SLOW                            13'h1051
`define OSC_COUNT_LOWER1_SLOW_DEFAULT                         8'h66
`define OSC_COUNT_LOWER1_SLOW_CHECK                           8'h66
`define OSC_COUNT_LOWER1_SLOW                                 `OSC_COUNT_LOWER1_SLOW_WIDTH, `REGA_OSC_COUNT_LOWER1_SLOW, `OSC_COUNT_LOWER1_SLOW_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x66    OSC_COUNT_LOWER_SLOW
//                  OSC_COUNT_LOWER_SLOW[15:8]

`define OSC_COUNT_LOWER0_SLOW_WIDTH                           8
`define REGA_OSC_COUNT_LOWER0_SLOW                            13'h1052
`define OSC_COUNT_LOWER0_SLOW_DEFAULT                         8'h43
`define OSC_COUNT_LOWER0_SLOW_CHECK                           8'h43
`define OSC_COUNT_LOWER0_SLOW                                 `OSC_COUNT_LOWER0_SLOW_WIDTH, `REGA_OSC_COUNT_LOWER0_SLOW, `OSC_COUNT_LOWER0_SLOW_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x43    OSC_COUNT_LOWER_SLOW
//                  OSC_COUNT_LOWER_SLOW[7:0]

`define OSC_STEPSIZE1_WIDTH                                   8
`define REGA_OSC_STEPSIZE1                                    13'h1053
`define OSC_STEPSIZE1_DEFAULT                                 8'h5b
`define OSC_STEPSIZE1_CHECK                                   8'h5b
`define OSC_STEPSIZE1                                         `OSC_STEPSIZE1_WIDTH, `REGA_OSC_STEPSIZE1, `OSC_STEPSIZE1_DEFAULT
//  access       rw
//  atype        A
//  7:6  0x1     STEPSIZE_80M_OVER
//                  Range of the Step size
//                  0x00: Trim Count deduct by 10 steps
//                  0x01: Trim Count deduct by 20 steps
//                  0x02: Trim Count deduct by 30 steps
//                  0x03: Trim Count deduct by 40 steps
//  5:4  0x1     STEPSIZE_75M_80M
//                  Range of the Step size
//                  0x00: Trim Count deduct by 5 steps
//                  0x01: Trim Count deduct by 10 steps
//                  0x02: Trim Count deduct by 15 steps
//                  0x03: Trim Count deduct by 20 steps
//  3:2  0x2     STEPSIZE_70M_75M
//                  Range of the Step size
//                  0x00: Trim Count deduct by 1 steps
//                  0x01: Trim Count deduct by 3 steps
//                  0x02: Trim Count deduct by 5 steps
//                  0x03: Trim Count deduct by 7 steps
//  1:0  0x3     STEPSIZE_65M_67M
//                  Range of the Step size
//                  0x00: Trim Count increase by 1 steps
//                  0x01: Trim Count increase by 2 steps
//                  0x02: Trim Count increase by 3 steps
//                  0x03: Trim Count increase by 4 steps

`define OSC_STEPSIZE0_WIDTH                                   8
`define REGA_OSC_STEPSIZE0                                    13'h1054
`define OSC_STEPSIZE0_DEFAULT                                 8'hee
`define OSC_STEPSIZE0_CHECK                                   8'hee
`define OSC_STEPSIZE0                                         `OSC_STEPSIZE0_WIDTH, `REGA_OSC_STEPSIZE0, `OSC_STEPSIZE0_DEFAULT
//  access       rw
//  atype        A
//  7:6  0x3     STEPSIZE_48M_65M
//                  Range of the Step size
//                  0x00: Trim Count increase by 5 steps
//                  0x01: Trim Count increase by 10 steps
//                  0x02: Trim Count increase by 15 steps
//                  0x03: Trim Count increase by 20 steps
//  5:3  0x5     STEPSIZE_40M_48M
//                  Range of the Step size
//                  0x00: Trim Count increase by 5 steps
//                  0x01: Trim Count increase by 10 steps
//                  0x02: Trim Count increase by 20 steps
//                  0x03: Trim Count increase by 30 steps
//                  0x04: Trim Count increase by 40 steps
//                  0x05: Trim Count increase by 50 steps
//                  0x06: Trim Count increase by 60 steps
//                  0x07: Trim Count increase by 70 steps
//  2:0  0x6     STEPSIZE_40M_LOWER
//                  Range of the Step size
//                  0x00: Trim Count increase by 20 steps
//                  0x01: Trim Count increase by 30 steps
//                  0x02: Trim Count increase by 40 steps
//                  0x03: Trim Count increase by 50 steps
//                  0x04: Trim Count increase by 60 steps
//                  0x05: Trim Count increase by 70 steps
//                  0x06: Trim Count increase by 80 steps
//                  0x07: Trim Count increase by 90 steps

`define NUM_OF_WAIT_EDGE_AUTO_MED_WIDTH                       8
`define REGA_NUM_OF_WAIT_EDGE_AUTO_MED                        13'h1055
`define NUM_OF_WAIT_EDGE_AUTO_MED_DEFAULT                     8'h31
`define NUM_OF_WAIT_EDGE_AUTO_MED_CHECK                       8'h31
`define NUM_OF_WAIT_EDGE_AUTO_MED                             `NUM_OF_WAIT_EDGE_AUTO_MED_WIDTH, `REGA_NUM_OF_WAIT_EDGE_AUTO_MED, `NUM_OF_WAIT_EDGE_AUTO_MED_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x31    NUM_OF_WAIT_EDGE_AUTO_MED
//                  Number of slow clocks wait edge + 1 then multiplied by 2 for oscillator frequency to settle down in Med Clock Tuning

`define NUM_OF_WAIT_EDGE_AUTO_SLOW_WIDTH                      8
`define REGA_NUM_OF_WAIT_EDGE_AUTO_SLOW                       13'h1056
`define NUM_OF_WAIT_EDGE_AUTO_SLOW_DEFAULT                    8'h1
`define NUM_OF_WAIT_EDGE_AUTO_SLOW_CHECK                      8'h1
`define NUM_OF_WAIT_EDGE_AUTO_SLOW                            `NUM_OF_WAIT_EDGE_AUTO_SLOW_WIDTH, `REGA_NUM_OF_WAIT_EDGE_AUTO_SLOW, `NUM_OF_WAIT_EDGE_AUTO_SLOW_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x1     NUM_OF_WAIT_EDGE_AUTO_SLOW
//                  Number of slow clocks wait edge + 1 then multiplied by 2 for oscillator frequency to settle down in Slow Clock Tuning

`define SLOW_PERIOD_THRESH_MED_WIDTH                          8
`define REGA_SLOW_PERIOD_THRESH_MED                           13'h1057
`define SLOW_PERIOD_THRESH_MED_DEFAULT                        8'hf
`define SLOW_PERIOD_THRESH_MED_CHECK                          8'hf
`define SLOW_PERIOD_THRESH_MED                                `SLOW_PERIOD_THRESH_MED_WIDTH, `REGA_SLOW_PERIOD_THRESH_MED, `SLOW_PERIOD_THRESH_MED_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x0     RESERVED
//                  Reserved
//  3:0  0xf     SLOW_PERIOD_THRESH_MED
//                  0 is an invalid number, this is number of slow clock require in multiple of 2 for med clock tuning

`define SLOW_PERIOD_THRESH_SLOW_WIDTH                         8
`define REGA_SLOW_PERIOD_THRESH_SLOW                          13'h1058
`define SLOW_PERIOD_THRESH_SLOW_DEFAULT                       8'h1
`define SLOW_PERIOD_THRESH_SLOW_CHECK                         8'h1
`define SLOW_PERIOD_THRESH_SLOW                               `SLOW_PERIOD_THRESH_SLOW_WIDTH, `REGA_SLOW_PERIOD_THRESH_SLOW, `SLOW_PERIOD_THRESH_SLOW_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x0     RESERVED
//                  Reserved
//  3:0  0x1     SLOW_PERIOD_THRESH_SLOW
//                  0 is an invalid number, this is number of slow clock require in multiple of 2 for slow clock tuning

`define TABLE_SWEEPING_WIDTH                                  8
`define REGA_TABLE_SWEEPING                                   13'h105a
`define TABLE_SWEEPING_DEFAULT                                8'h90
`define TABLE_SWEEPING_CHECK                                  8'h90
`define TABLE_SWEEPING                                        `TABLE_SWEEPING_WIDTH, `REGA_TABLE_SWEEPING, `TABLE_SWEEPING_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x9     MAX_SWEEP_ATTEMPT
//                  max sweep attempt for fast clock tuning
//  3:2  0x0     Reserved
//                  Reserved
//    1  0x0     SWEEP_FROM_BOTTOM
//                  Sweep from the bottom of the oscillator tuning table
//                  1: Enable
//                  0: Disable
//    0  0x0     SWEEP_FROM_TOP
//                  Sweep from the top of the oscillator tuning table
//                  1: Enable
//                  0: Disable

`define MAIN_OSC_RANGE_WIDTH                                  8
`define REGA_MAIN_OSC_RANGE                                   13'h105b
`define MAIN_OSC_RANGE_DEFAULT                                8'h0
`define MAIN_OSC_RANGE_CHECK                                  8'h0
`define MAIN_OSC_RANGE                                        `MAIN_OSC_RANGE_WIDTH, `REGA_MAIN_OSC_RANGE, `MAIN_OSC_RANGE_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     MAIN_OSC_RANGE_SIGN
//                  Sign of the number, 1 means negative and 0 means positive
//  6:0  0x0     MAIN_OSC_RANGE
//                  The range of MAIN_OSC is allowed to shift to higher value during auto tuning
//                  0 means defaulted at 68M, increasing the count by 1 move the lock frequency to be increased by 250kHz
//                  To increase the lock frequency to 75MHz, then it will be addition of 7MHz, so this filed will be 8'h1C
//                  Corresponding OSC_COUNT bound values need to be adjusted properly


`define P17_PROD_ID_WIDTH                                     0
`define REGA_P17_PROD_ID                                      13'h1100
`define P17_PROD_ID                                           `P17_PROD_ID_WIDTH, `REGA_P17_PROD_ID, `P17_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P17_REV_ID_WIDTH                                      0
`define REGA_P17_REV_ID                                       13'h1101
`define P17_REV_ID                                            `P17_REV_ID_WIDTH, `REGA_P17_REV_ID, `P17_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P17_MOTION_WIDTH                                      0
`define REGA_P17_MOTION                                       13'h1102
`define P17_MOTION                                            `P17_MOTION_WIDTH, `REGA_P17_MOTION, `P17_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P17_DELTA_X_LO_WIDTH                                  0
`define REGA_P17_DELTA_X_LO                                   13'h1103
`define P17_DELTA_X_LO                                        `P17_DELTA_X_LO_WIDTH, `REGA_P17_DELTA_X_LO, `P17_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P17_DELTA_X_HI_WIDTH                                  0
`define REGA_P17_DELTA_X_HI                                   13'h1104
`define P17_DELTA_X_HI                                        `P17_DELTA_X_HI_WIDTH, `REGA_P17_DELTA_X_HI, `P17_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P17_DELTA_Y_LO_WIDTH                                  0
`define REGA_P17_DELTA_Y_LO                                   13'h1105
`define P17_DELTA_Y_LO                                        `P17_DELTA_Y_LO_WIDTH, `REGA_P17_DELTA_Y_LO, `P17_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P17_DELTA_Y_HI_WIDTH                                  0
`define REGA_P17_DELTA_Y_HI                                   13'h1106
`define P17_DELTA_Y_HI                                        `P17_DELTA_Y_HI_WIDTH, `REGA_P17_DELTA_Y_HI, `P17_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P17_SQUAL_WIDTH                                       0
`define REGA_P17_SQUAL                                        13'h1107
`define P17_SQUAL                                             `P17_SQUAL_WIDTH, `REGA_P17_SQUAL, `P17_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P17_PIX_ACCUM_WIDTH                                   0
`define REGA_P17_PIX_ACCUM                                    13'h1108
`define P17_PIX_ACCUM                                         `P17_PIX_ACCUM_WIDTH, `REGA_P17_PIX_ACCUM, `P17_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P17_PIX_MAX_WIDTH                                     0
`define REGA_P17_PIX_MAX                                      13'h1109
`define P17_PIX_MAX                                           `P17_PIX_MAX_WIDTH, `REGA_P17_PIX_MAX, `P17_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P17_PIX_MIN_WIDTH                                     0
`define REGA_P17_PIX_MIN                                      13'h110a
`define P17_PIX_MIN                                           `P17_PIX_MIN_WIDTH, `REGA_P17_PIX_MIN, `P17_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P17_SHUT_LO_WIDTH                                     0
`define REGA_P17_SHUT_LO                                      13'h110b
`define P17_SHUT_LO                                           `P17_SHUT_LO_WIDTH, `REGA_P17_SHUT_LO, `P17_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P17_SHUT_HI_WIDTH                                     0
`define REGA_P17_SHUT_HI                                      13'h110c
`define P17_SHUT_HI                                           `P17_SHUT_HI_WIDTH, `REGA_P17_SHUT_HI, `P17_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P17_EXT_WAKEUP_WIDTH                                  0
`define REGA_P17_EXT_WAKEUP                                   13'h110d
`define P17_EXT_WAKEUP                                        `P17_EXT_WAKEUP_WIDTH, `REGA_P17_EXT_WAKEUP, `P17_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P17_RESERVED_E_WIDTH                                  0
`define REGA_P17_RESERVED_E                                   13'h110e
`define P17_RESERVED_E                                        `P17_RESERVED_E_WIDTH, `REGA_P17_RESERVED_E, `P17_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P17_SKIP_FRAMES_CNT_LO_WIDTH                          0
`define REGA_P17_SKIP_FRAMES_CNT_LO                           13'h110f
`define P17_SKIP_FRAMES_CNT_LO                                `P17_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P17_SKIP_FRAMES_CNT_LO, `P17_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P17_SKIP_FRAMES_CNT_HI_WIDTH                          0
`define REGA_P17_SKIP_FRAMES_CNT_HI                           13'h1110
`define P17_SKIP_FRAMES_CNT_HI                                `P17_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P17_SKIP_FRAMES_CNT_HI, `P17_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P17_CVFR_PERIOD_LO_WIDTH                              0
`define REGA_P17_CVFR_PERIOD_LO                               13'h1111
`define P17_CVFR_PERIOD_LO                                    `P17_CVFR_PERIOD_LO_WIDTH, `REGA_P17_CVFR_PERIOD_LO, `P17_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P17_CVFR_PERIOD_HI_WIDTH                              0
`define REGA_P17_CVFR_PERIOD_HI                               13'h1112
`define P17_CVFR_PERIOD_HI                                    `P17_CVFR_PERIOD_HI_WIDTH, `REGA_P17_CVFR_PERIOD_HI, `P17_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P17_OBSERVATION_WIDTH                                 0
`define REGA_P17_OBSERVATION                                  13'h1115
`define P17_OBSERVATION                                       `P17_OBSERVATION_WIDTH, `REGA_P17_OBSERVATION, `P17_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P17_BURST_MOTION_WIDTH                                0
`define REGA_P17_BURST_MOTION                                 13'h1116
`define P17_BURST_MOTION                                      `P17_BURST_MOTION_WIDTH, `REGA_P17_BURST_MOTION, `P17_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P17_SQUAL2_WIDTH                                      0
`define REGA_P17_SQUAL2                                       13'h1117
`define P17_SQUAL2                                            `P17_SQUAL2_WIDTH, `REGA_P17_SQUAL2, `P17_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P17_SPI_MODE_WIDTH                                    0
`define REGA_P17_SPI_MODE                                     13'h1118
`define P17_SPI_MODE                                          `P17_SPI_MODE_WIDTH, `REGA_P17_SPI_MODE, `P17_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P17_OSC_TUNE_INSTR_WIDTH                              0
`define REGA_P17_OSC_TUNE_INSTR                               13'h1122
`define P17_OSC_TUNE_INSTR                                    `P17_OSC_TUNE_INSTR_WIDTH, `REGA_P17_OSC_TUNE_INSTR, `P17_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P17_OSC_TUNE_INSTR_SLOW_WIDTH                         0
`define REGA_P17_OSC_TUNE_INSTR_SLOW                          13'h1123
`define P17_OSC_TUNE_INSTR_SLOW                               `P17_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P17_OSC_TUNE_INSTR_SLOW, `P17_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P17_PRBS_MODE_WIDTH                                   0
`define REGA_P17_PRBS_MODE                                    13'h1130
`define P17_PRBS_MODE                                         `P17_PRBS_MODE_WIDTH, `REGA_P17_PRBS_MODE, `P17_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P17_POWERDOWN_WIDTH                                   0
`define REGA_P17_POWERDOWN                                    13'h1132
`define P17_POWERDOWN                                         `P17_POWERDOWN_WIDTH, `REGA_P17_POWERDOWN, `P17_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P17_CRC0_WIDTH                                        0
`define REGA_P17_CRC0                                         13'h1133
`define P17_CRC0                                              `P17_CRC0_WIDTH, `REGA_P17_CRC0, `P17_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P17_CRC1_WIDTH                                        0
`define REGA_P17_CRC1                                         13'h1134
`define P17_CRC1                                              `P17_CRC1_WIDTH, `REGA_P17_CRC1, `P17_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P17_CRC2_WIDTH                                        0
`define REGA_P17_CRC2                                         13'h1135
`define P17_CRC2                                              `P17_CRC2_WIDTH, `REGA_P17_CRC2, `P17_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P17_CRC3_WIDTH                                        0
`define REGA_P17_CRC3                                         13'h1136
`define P17_CRC3                                              `P17_CRC3_WIDTH, `REGA_P17_CRC3, `P17_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P17_IOSTATUS_WIDTH                                    0
`define REGA_P17_IOSTATUS                                     13'h1137
`define P17_IOSTATUS                                          `P17_IOSTATUS_WIDTH, `REGA_P17_IOSTATUS, `P17_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P17_TAP_KEY_WO_WIDTH                                  0
`define REGA_P17_TAP_KEY_WO                                   13'h1138
`define P17_TAP_KEY_WO                                        `P17_TAP_KEY_WO_WIDTH, `REGA_P17_TAP_KEY_WO, `P17_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P17_TAP_KEY_WIDTH                                     0
`define REGA_P17_TAP_KEY                                      13'h1139
`define P17_TAP_KEY                                           `P17_TAP_KEY_WIDTH, `REGA_P17_TAP_KEY, `P17_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P17_POWER_UP_RESET_WIDTH                              0
`define REGA_P17_POWER_UP_RESET                               13'h113a
`define P17_POWER_UP_RESET                                    `P17_POWER_UP_RESET_WIDTH, `REGA_P17_POWER_UP_RESET, `P17_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P17_SHUTDOWN_WIDTH                                    0
`define REGA_P17_SHUTDOWN                                     13'h113b
`define P17_SHUTDOWN                                          `P17_SHUTDOWN_WIDTH, `REGA_P17_SHUTDOWN, `P17_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P17_SCAN_MODE_WIDTH                                   0
`define REGA_P17_SCAN_MODE                                    13'h113c
`define P17_SCAN_MODE                                         `P17_SCAN_MODE_WIDTH, `REGA_P17_SCAN_MODE, `P17_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P17_SPI_PAGE_WIDTH                                    0
`define REGA_P17_SPI_PAGE                                     13'h117f
`define P17_SPI_PAGE                                          `P17_SPI_PAGE_WIDTH, `REGA_P17_SPI_PAGE, `P17_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define PRBS_TEST_WIDTH                                       8
`define REGA_PRBS_TEST                                        13'h116b
`define PRBS_TEST_DEFAULT                                     8'h0
`define PRBS_TEST_CHECK                                       8'h0
`define PRBS_TEST                                             `PRBS_TEST_WIDTH, `REGA_PRBS_TEST, `PRBS_TEST_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x0     RESERVED
//                  Reserved
//    3  0x0     1_WORD
//                  1_word 1 reg in crc
//    2  0x0     STATIC_PRBS
//                  0: normal operation
//                  1: output static prbs image
//    1  0x0     1_STEP
//                  1_step single step
//    0  0x0     Test_Ctrl
//                  0: normal operation
//                  1: start PRBS self-test

`define PRBS_WORD_SPI_PAGE_WIDTH                              8
`define REGA_PRBS_WORD_SPI_PAGE                               13'h116c
`define PRBS_WORD_SPI_PAGE_DEFAULT                            8'h0
`define PRBS_WORD_SPI_PAGE_CHECK                              8'h0
`define PRBS_WORD_SPI_PAGE                                    `PRBS_WORD_SPI_PAGE_WIDTH, `REGA_PRBS_WORD_SPI_PAGE, `PRBS_WORD_SPI_PAGE_DEFAULT
//  access       rw
//  atype        A
//  7:5  0x0     RESERVED
//                  Reserved
//  4:0  0x0     1_WORD_SPI_PAGE
//                  spi page for the PRBS_1_WORD register

`define PRBS_1_WORD_WIDTH                                     8
`define REGA_PRBS_1_WORD                                      13'h116d
`define PRBS_1_WORD_DEFAULT                                   8'h0
`define PRBS_1_WORD_CHECK                                     8'h0
`define PRBS_1_WORD                                           `PRBS_1_WORD_WIDTH, `REGA_PRBS_1_WORD, `PRBS_1_WORD_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     PRBS_1_WORD
//                  When running PRBS test in word 1 mode, indicates which register is included in CRC.  Spi page for this register can be in PRBS_TEST register.


`define P18_PROD_ID_WIDTH                                     0
`define REGA_P18_PROD_ID                                      13'h1200
`define P18_PROD_ID                                           `P18_PROD_ID_WIDTH, `REGA_P18_PROD_ID, `P18_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P18_REV_ID_WIDTH                                      0
`define REGA_P18_REV_ID                                       13'h1201
`define P18_REV_ID                                            `P18_REV_ID_WIDTH, `REGA_P18_REV_ID, `P18_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P18_MOTION_WIDTH                                      0
`define REGA_P18_MOTION                                       13'h1202
`define P18_MOTION                                            `P18_MOTION_WIDTH, `REGA_P18_MOTION, `P18_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P18_DELTA_X_LO_WIDTH                                  0
`define REGA_P18_DELTA_X_LO                                   13'h1203
`define P18_DELTA_X_LO                                        `P18_DELTA_X_LO_WIDTH, `REGA_P18_DELTA_X_LO, `P18_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P18_DELTA_X_HI_WIDTH                                  0
`define REGA_P18_DELTA_X_HI                                   13'h1204
`define P18_DELTA_X_HI                                        `P18_DELTA_X_HI_WIDTH, `REGA_P18_DELTA_X_HI, `P18_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P18_DELTA_Y_LO_WIDTH                                  0
`define REGA_P18_DELTA_Y_LO                                   13'h1205
`define P18_DELTA_Y_LO                                        `P18_DELTA_Y_LO_WIDTH, `REGA_P18_DELTA_Y_LO, `P18_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P18_DELTA_Y_HI_WIDTH                                  0
`define REGA_P18_DELTA_Y_HI                                   13'h1206
`define P18_DELTA_Y_HI                                        `P18_DELTA_Y_HI_WIDTH, `REGA_P18_DELTA_Y_HI, `P18_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P18_SQUAL_WIDTH                                       0
`define REGA_P18_SQUAL                                        13'h1207
`define P18_SQUAL                                             `P18_SQUAL_WIDTH, `REGA_P18_SQUAL, `P18_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P18_PIX_ACCUM_WIDTH                                   0
`define REGA_P18_PIX_ACCUM                                    13'h1208
`define P18_PIX_ACCUM                                         `P18_PIX_ACCUM_WIDTH, `REGA_P18_PIX_ACCUM, `P18_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P18_PIX_MAX_WIDTH                                     0
`define REGA_P18_PIX_MAX                                      13'h1209
`define P18_PIX_MAX                                           `P18_PIX_MAX_WIDTH, `REGA_P18_PIX_MAX, `P18_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P18_PIX_MIN_WIDTH                                     0
`define REGA_P18_PIX_MIN                                      13'h120a
`define P18_PIX_MIN                                           `P18_PIX_MIN_WIDTH, `REGA_P18_PIX_MIN, `P18_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P18_SHUT_LO_WIDTH                                     0
`define REGA_P18_SHUT_LO                                      13'h120b
`define P18_SHUT_LO                                           `P18_SHUT_LO_WIDTH, `REGA_P18_SHUT_LO, `P18_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P18_SHUT_HI_WIDTH                                     0
`define REGA_P18_SHUT_HI                                      13'h120c
`define P18_SHUT_HI                                           `P18_SHUT_HI_WIDTH, `REGA_P18_SHUT_HI, `P18_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P18_EXT_WAKEUP_WIDTH                                  0
`define REGA_P18_EXT_WAKEUP                                   13'h120d
`define P18_EXT_WAKEUP                                        `P18_EXT_WAKEUP_WIDTH, `REGA_P18_EXT_WAKEUP, `P18_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P18_RESERVED_E_WIDTH                                  0
`define REGA_P18_RESERVED_E                                   13'h120e
`define P18_RESERVED_E                                        `P18_RESERVED_E_WIDTH, `REGA_P18_RESERVED_E, `P18_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P18_SKIP_FRAMES_CNT_LO_WIDTH                          0
`define REGA_P18_SKIP_FRAMES_CNT_LO                           13'h120f
`define P18_SKIP_FRAMES_CNT_LO                                `P18_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P18_SKIP_FRAMES_CNT_LO, `P18_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P18_SKIP_FRAMES_CNT_HI_WIDTH                          0
`define REGA_P18_SKIP_FRAMES_CNT_HI                           13'h1210
`define P18_SKIP_FRAMES_CNT_HI                                `P18_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P18_SKIP_FRAMES_CNT_HI, `P18_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P18_CVFR_PERIOD_LO_WIDTH                              0
`define REGA_P18_CVFR_PERIOD_LO                               13'h1211
`define P18_CVFR_PERIOD_LO                                    `P18_CVFR_PERIOD_LO_WIDTH, `REGA_P18_CVFR_PERIOD_LO, `P18_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P18_CVFR_PERIOD_HI_WIDTH                              0
`define REGA_P18_CVFR_PERIOD_HI                               13'h1212
`define P18_CVFR_PERIOD_HI                                    `P18_CVFR_PERIOD_HI_WIDTH, `REGA_P18_CVFR_PERIOD_HI, `P18_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P18_OBSERVATION_WIDTH                                 0
`define REGA_P18_OBSERVATION                                  13'h1215
`define P18_OBSERVATION                                       `P18_OBSERVATION_WIDTH, `REGA_P18_OBSERVATION, `P18_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P18_BURST_MOTION_WIDTH                                0
`define REGA_P18_BURST_MOTION                                 13'h1216
`define P18_BURST_MOTION                                      `P18_BURST_MOTION_WIDTH, `REGA_P18_BURST_MOTION, `P18_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P18_SQUAL2_WIDTH                                      0
`define REGA_P18_SQUAL2                                       13'h1217
`define P18_SQUAL2                                            `P18_SQUAL2_WIDTH, `REGA_P18_SQUAL2, `P18_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P18_SPI_MODE_WIDTH                                    0
`define REGA_P18_SPI_MODE                                     13'h1218
`define P18_SPI_MODE                                          `P18_SPI_MODE_WIDTH, `REGA_P18_SPI_MODE, `P18_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P18_OSC_TUNE_INSTR_WIDTH                              0
`define REGA_P18_OSC_TUNE_INSTR                               13'h1222
`define P18_OSC_TUNE_INSTR                                    `P18_OSC_TUNE_INSTR_WIDTH, `REGA_P18_OSC_TUNE_INSTR, `P18_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P18_OSC_TUNE_INSTR_SLOW_WIDTH                         0
`define REGA_P18_OSC_TUNE_INSTR_SLOW                          13'h1223
`define P18_OSC_TUNE_INSTR_SLOW                               `P18_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P18_OSC_TUNE_INSTR_SLOW, `P18_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P18_PRBS_MODE_WIDTH                                   0
`define REGA_P18_PRBS_MODE                                    13'h1230
`define P18_PRBS_MODE                                         `P18_PRBS_MODE_WIDTH, `REGA_P18_PRBS_MODE, `P18_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P18_POWERDOWN_WIDTH                                   0
`define REGA_P18_POWERDOWN                                    13'h1232
`define P18_POWERDOWN                                         `P18_POWERDOWN_WIDTH, `REGA_P18_POWERDOWN, `P18_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P18_CRC0_WIDTH                                        0
`define REGA_P18_CRC0                                         13'h1233
`define P18_CRC0                                              `P18_CRC0_WIDTH, `REGA_P18_CRC0, `P18_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P18_CRC1_WIDTH                                        0
`define REGA_P18_CRC1                                         13'h1234
`define P18_CRC1                                              `P18_CRC1_WIDTH, `REGA_P18_CRC1, `P18_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P18_CRC2_WIDTH                                        0
`define REGA_P18_CRC2                                         13'h1235
`define P18_CRC2                                              `P18_CRC2_WIDTH, `REGA_P18_CRC2, `P18_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P18_CRC3_WIDTH                                        0
`define REGA_P18_CRC3                                         13'h1236
`define P18_CRC3                                              `P18_CRC3_WIDTH, `REGA_P18_CRC3, `P18_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P18_IOSTATUS_WIDTH                                    0
`define REGA_P18_IOSTATUS                                     13'h1237
`define P18_IOSTATUS                                          `P18_IOSTATUS_WIDTH, `REGA_P18_IOSTATUS, `P18_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P18_TAP_KEY_WO_WIDTH                                  0
`define REGA_P18_TAP_KEY_WO                                   13'h1238
`define P18_TAP_KEY_WO                                        `P18_TAP_KEY_WO_WIDTH, `REGA_P18_TAP_KEY_WO, `P18_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P18_TAP_KEY_WIDTH                                     0
`define REGA_P18_TAP_KEY                                      13'h1239
`define P18_TAP_KEY                                           `P18_TAP_KEY_WIDTH, `REGA_P18_TAP_KEY, `P18_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P18_POWER_UP_RESET_WIDTH                              0
`define REGA_P18_POWER_UP_RESET                               13'h123a
`define P18_POWER_UP_RESET                                    `P18_POWER_UP_RESET_WIDTH, `REGA_P18_POWER_UP_RESET, `P18_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P18_SHUTDOWN_WIDTH                                    0
`define REGA_P18_SHUTDOWN                                     13'h123b
`define P18_SHUTDOWN                                          `P18_SHUTDOWN_WIDTH, `REGA_P18_SHUTDOWN, `P18_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P18_SCAN_MODE_WIDTH                                   0
`define REGA_P18_SCAN_MODE                                    13'h123c
`define P18_SCAN_MODE                                         `P18_SCAN_MODE_WIDTH, `REGA_P18_SCAN_MODE, `P18_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P18_SPI_PAGE_WIDTH                                    0
`define REGA_P18_SPI_PAGE                                     13'h127f
`define P18_SPI_PAGE                                          `P18_SPI_PAGE_WIDTH, `REGA_P18_SPI_PAGE, `P18_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define PAD_TEST_WIDTH                                        8
`define REGA_PAD_TEST                                         13'h1240
`define PAD_TEST_DEFAULT                                      8'h0
`define PAD_TEST_CHECK                                        8'h0
`define PAD_TEST                                              `PAD_TEST_WIDTH, `REGA_PAD_TEST, `PAD_TEST_DEFAULT
//  access       rw
//  atype        S
//  7:4  0x0     Pad test output selection
//                  0: Normal mode
//                  1: Output to XCLK pad
//                  2: Output to MOTION pad
//                  3: Output to SCLK pad
//                  4: Output to MOSI pad
//                  5: Output to MISO pad
//                  6: Output to NCS pad
//                  7: Output to VID5 pad
//                  8: Output to VID6 pad
//                  others: Normal mode
//  3:0  0x0     Pad test input selection
//                  0: Normal mode
//                  1: GPIO signal selected as input, the pad follow Pad output and Pad direction bits from PAD_FUNC
//                  2: MOTION signal selected as input, the pad follow Pad output and Pad direction bits from PAD_FUNC
//                  3: SCLK signal selected as input, the pad follow Pad output and Pad direction bits from PAD_FUNC
//                  4: MOSI signal selected as input, the pad follow Pad output and Pad direction bits from PAD_FUNC
//                  5: MISO signal selected as input, the pad follow Pad output and Pad direction bits from PAD_FUNC
//                  6: NCS signal selected as input, the pad follow Pad output and Pad direction bits from PAD_FUNC
//                  7: VID5 signal selected as input, the pad follow Pad output and Pad direction bits from PAD_FUNC
//                  8: VID6 signal selected as input, the pad follow Pad output and Pad direction bits from PAD_FUNC
//                  others: Normal mode

`define PAD_FUNC_WIDTH                                        8
`define REGA_PAD_FUNC                                         13'h1241
`define PAD_FUNC_DEFAULT                                      8'h10
`define PAD_FUNC_CHECK                                        8'h10
`define PAD_FUNC                                              `PAD_FUNC_WIDTH, `REGA_PAD_FUNC, `PAD_FUNC_DEFAULT
//  access       rw
//  atype        S
//  7:6  0x0     Reserved
//                  Reserved
//    5  0x0     DIV_CLK_EN
//                  Enable DIV CLK in Clock TEST mode
//                  1: Enable the generation of 1kHz DIV CLK
//                  0: Disable the generation of 1kHz DIV CLK
//    4  0x1     FAST_MISO_EN
//                  MISO path delay reduction inside PADMUX
//                  1: MISO to go through the path with shorter timing delay
//                  0: MISO to go through the path with nominal timing delay
//    3  0x0     Pad output
//                  1: High
//                  0: Low
//    2  0x0     Pad direction
//                  1: Input
//                  0: Output
//  1:0  0x0     PAD_FUNC[1:0]
//                  0: Normal mode
//                  1: Analog test mode
//                  2: Observation DIG test mode, refer to DTEST_FUNC register

`define DTEST_FUNC0_WIDTH                                     8
`define REGA_DTEST_FUNC0                                      13'h1242
`define DTEST_FUNC0_DEFAULT                                   8'h0
`define DTEST_FUNC0_CHECK                                     8'h0
`define DTEST_FUNC0                                           `DTEST_FUNC0_WIDTH, `REGA_DTEST_FUNC0, `DTEST_FUNC0_DEFAULT
//  access       rw
//  atype        S
//  7:6  0x0     Reserved
//                  Reserved
//  5:0  0x0     TD[0] signal select
//                  0x0: 0
//                  0x1: adc_valid_org
//                  0x2: PIX_D_SHUTTER
//                  0x3: ana_start2
//                  0x4: LED_DS_EN
//                  0x5: PIX_DPS_BS_RST_DIG
//                  0x6: ADC2_DS_PD
//                  0x7: ANACLK_DS_CLK
//                  0x8: ADC_VALID_DIG
//                  0x9: TA_D_RDUM
//                  0xA: PIXSUPPLY_DPS_PD
//                  0xB: PIX_DPS_PD
//                  0xC: xfer_done
//                  0xD: status_flags[4]
//                  0xE: status_flags[0]
//                  0xF: LSR_D_NFAULT_XYLSR2
//                  0x10: LSR_DPS_NPULL_UP
//                  0x11: LSR_DPS_XYLS_NEN
//                  0x12: LSR_S_ICTRL[4]
//                  0x13: LSR_S_ICTRL[0]
//                  0x14: laser_en
//                  0x15: fd_run_req
//                  0x16: efuse_pgenb
//                  0x17: efuse_a[4]
//                  0x18: efuse_a[0]
//                  0x19: clkseq_done
//                  0x1A: OSC5K_DS_PD
//                  0x1B: fpc_overlap
//                  0x1C: bigcor_run
//                  0x1D: skate_15x45
//                  0x1E: cor_start
//                  0x1F: rest_req
//                  0x20: nav_done
//                  0x21: extclk_sel
//                  0x22: lift_done
//                  0x23: tlx_done
//                  0x24: supdet_done
//                  0x25: fd_done
//                  0x26: ep_mode

`define DTEST_FUNC1_WIDTH                                     8
`define REGA_DTEST_FUNC1                                      13'h1243
`define DTEST_FUNC1_DEFAULT                                   8'h0
`define DTEST_FUNC1_CHECK                                     8'h0
`define DTEST_FUNC1                                           `DTEST_FUNC1_WIDTH, `REGA_DTEST_FUNC1, `DTEST_FUNC1_DEFAULT
//  access       rw
//  atype        S
//  7:6  0x0     Reserved
//                  Reserved
//  5:0  0x0     TD[1] signal select
//                  0x0: 0
//                  0x1: adc_valid_org
//                  0x2: PIX_D_SHUTTER
//                  0x3: ana_start2
//                  0x4: PIX_DPS_PD
//                  0x5: PIX_DPS_BS_RST_DIG
//                  0x6: ADC_DS_PD
//                  0x7: ANACLK_DS_CLK
//                  0x8: PIX_DP_ALL
//                  0x9: PIX_D_SHIFT_RESET
//                  0xA: PIXSUPPLY_DPS_PD
//                  0xB: PIX_D_COL_EN
//                  0xC: xfer_done
//                  0xD: status_flags[5]
//                  0xE: status_flags[1]
//                  0xF: LSR_D_NFAULT_XYLSR1
//                  0x10: LSR_DPS_PD_LSR
//                  0x11: LSR_S_RBIN_SEL
//                  0x12: LSR_S_ICTRL[5]
//                  0x13: LSR_S_ICTRL[1]
//                  0x14: LSR_DS_PD_PU
//                  0x15: fd_done
//                  0x16: efuse_csb
//                  0x17: efuse_a[5]
//                  0x18: efuse_a[1]
//                  0x19: start_fpc2
//                  0x1A: OSC1M_DS_PD
//                  0x1B: fpc_overlap
//                  0x1C: cor_ext_en
//                  0x1D: skating_done
//                  0x1E: runaway2
//                  0x1F: decor_wakeup
//                  0x20: dcrpix_start
//                  0x21: shutdown
//                  0x22: pixmon_done
//                  0x23: nav_done
//                  0x24: clampref_done
//                  0x25: lsr_start
//                  0x26: OSC5K_DS_PD

`define DTEST_FUNC2_WIDTH                                     8
`define REGA_DTEST_FUNC2                                      13'h1244
`define DTEST_FUNC2_DEFAULT                                   8'h0
`define DTEST_FUNC2_CHECK                                     8'h0
`define DTEST_FUNC2                                           `DTEST_FUNC2_WIDTH, `REGA_DTEST_FUNC2, `DTEST_FUNC2_DEFAULT
//  access       rw
//  atype        S
//  7:6  0x0     Reserved
//                  Reserved
//  5:0  0x0     TD[2] signal select
//                  0x0: 0
//                  0x1: adc_valid_org
//                  0x2: PIX_D_SHUTTER
//                  0x3: ana_start2
//                  0x4: PIX_D_PBB_CLK
//                  0x5: PIX_DPS_BS_RST_DIG
//                  0x6: TA2_DS_PD
//                  0x7: ANACLK_DS_CLK
//                  0x8: ANACLK_DS_PD_ADC_CLK
//                  0x9: PIX_D_SHIFT_RESET_COL
//                  0xA: PIXSUPPLY_DPS_PD
//                  0xB: PIX_D_ROW_CLK
//                  0xC: xfer_done
//                  0xD: status_flags[6]
//                  0xE: status_flags[2]
//                  0xF: fd_done
//                  0x10: laser_en
//                  0x11: PAD_DPS_IN_LSR_NEN
//                  0x12: LSR_S_ICTRL[6]
//                  0x13: LSR_S_ICTRL[2]
//                  0x14: LSR_DS_PD_FD
//                  0x15: LSR_DS_PULLDOWN
//                  0x16: efuse_strobe
//                  0x17: efuse_a[6]
//                  0x18: efuse_a[2]
//                  0x19: nav_done
//                  0x1A: OSC68M_D_PD
//                  0x1B: frame_stretch_flag
//                  0x1C: cor_done
//                  0x1D: skating_mode
//                  0x1E: runaway1
//                  0x1F: xc00_enable
//                  0x20: clk_nen_td1
//                  0x21: watchdog_timeout
//                  0x22: dcr_done
//                  0x23: cor_done
//                  0x24: ana_done
//                  0x25: nav_done
//                  0x26: OSC1M_DS_PD

`define DTEST_FUNC3_WIDTH                                     8
`define REGA_DTEST_FUNC3                                      13'h1245
`define DTEST_FUNC3_DEFAULT                                   8'h0
`define DTEST_FUNC3_CHECK                                     8'h0
`define DTEST_FUNC3                                           `DTEST_FUNC3_WIDTH, `REGA_DTEST_FUNC3, `DTEST_FUNC3_DEFAULT
//  access       rw
//  atype        S
//  7:6  0x0     Reserved
//                  Reserved
//  5:0  0x0     TD[3] signal select
//                  0x0: 0
//                  0x1: adc_valid_org
//                  0x2: PIX_D_SHUTTER
//                  0x3: ana_start2
//                  0x4: REFGEN_DPS_PD
//                  0x5: PIX_DPS_BS_RST_DIG
//                  0x6: TA_DS_PD
//                  0x7: ANACLK_DS_CLK
//                  0x8: ANACLK_DS_PD_TA_CLK
//                  0x9: xfer_start_i
//                  0xA: PIXSUPPLY_DPS_PD
//                  0xB: PIX_D_ROW_EN
//                  0xC: xfer_done
//                  0xD: status_flags[7]
//                  0xE: status_flags[3]
//                  0xF: lsr_start
//                  0x10: fd_run_req
//                  0x11: LSR_DPS_NXYLASER
//                  0x12: LSR_S_ICTRL[7]
//                  0x13: LSR_S_ICTRL[3]
//                  0x14: LSR_DPS_PRECHARGE_START
//                  0x15: LSR_DPS_PULLUP
//                  0x16: efuse_vddq_on_b
//                  0x17: efuse_load
//                  0x18: efuse_a[3]
//                  0x19: fpc_req_hs
//                  0x1A: clkseq_done
//                  0x1B: frame_stretch_flag
//                  0x1C: cor_start
//                  0x1D: cor_start
//                  0x1E: cor_en
//                  0x1F: cor_en
//                  0x20: clk_nen_td0
//                  0x21: watchdog_flag
//                  0x22: agc_done
//                  0x23: dcr_done
//                  0x24: fpc_done
//                  0x25: ana_start
//                  0x26: OSC68M_D_PD

`define CLK_TEST_MODE_WIDTH                                   8
`define REGA_CLK_TEST_MODE                                    13'h1246
`define CLK_TEST_MODE_DEFAULT                                 8'h0
`define CLK_TEST_MODE_CHECK                                   8'h0
`define CLK_TEST_MODE                                         `CLK_TEST_MODE_WIDTH, `REGA_CLK_TEST_MODE, `CLK_TEST_MODE_DEFAULT
//  access       rw
//  atype        S
//  7:5  0x0     Reserved
//                  Reserved
//    4  0x0     CLK_TEST_ASSORT
//                  Based on CLK_TEST_SEL, enable selected clock output to GPIO0 pin
//    3  0x0     CLK_TEST_HIB
//                  To configure PADMUX to enter HIB test mode
//  2:0  0x0     CLK_TEST_SEL
//                  0: No selection
//                  1: MAIN_OSC
//                  2: HIB_CLK
//                  3: FPC_CLK
//                  4: DIV_CLK
//                  5: SPI_1MS_PULSE
//                  6: No selection
//                  7: No selection


`define P19_PROD_ID_WIDTH                                     0
`define REGA_P19_PROD_ID                                      13'h1300
`define P19_PROD_ID                                           `P19_PROD_ID_WIDTH, `REGA_P19_PROD_ID, `P19_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P19_REV_ID_WIDTH                                      0
`define REGA_P19_REV_ID                                       13'h1301
`define P19_REV_ID                                            `P19_REV_ID_WIDTH, `REGA_P19_REV_ID, `P19_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P19_MOTION_WIDTH                                      0
`define REGA_P19_MOTION                                       13'h1302
`define P19_MOTION                                            `P19_MOTION_WIDTH, `REGA_P19_MOTION, `P19_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P19_DELTA_X_LO_WIDTH                                  0
`define REGA_P19_DELTA_X_LO                                   13'h1303
`define P19_DELTA_X_LO                                        `P19_DELTA_X_LO_WIDTH, `REGA_P19_DELTA_X_LO, `P19_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P19_DELTA_X_HI_WIDTH                                  0
`define REGA_P19_DELTA_X_HI                                   13'h1304
`define P19_DELTA_X_HI                                        `P19_DELTA_X_HI_WIDTH, `REGA_P19_DELTA_X_HI, `P19_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P19_DELTA_Y_LO_WIDTH                                  0
`define REGA_P19_DELTA_Y_LO                                   13'h1305
`define P19_DELTA_Y_LO                                        `P19_DELTA_Y_LO_WIDTH, `REGA_P19_DELTA_Y_LO, `P19_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P19_DELTA_Y_HI_WIDTH                                  0
`define REGA_P19_DELTA_Y_HI                                   13'h1306
`define P19_DELTA_Y_HI                                        `P19_DELTA_Y_HI_WIDTH, `REGA_P19_DELTA_Y_HI, `P19_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P19_SQUAL_WIDTH                                       0
`define REGA_P19_SQUAL                                        13'h1307
`define P19_SQUAL                                             `P19_SQUAL_WIDTH, `REGA_P19_SQUAL, `P19_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P19_PIX_ACCUM_WIDTH                                   0
`define REGA_P19_PIX_ACCUM                                    13'h1308
`define P19_PIX_ACCUM                                         `P19_PIX_ACCUM_WIDTH, `REGA_P19_PIX_ACCUM, `P19_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P19_PIX_MAX_WIDTH                                     0
`define REGA_P19_PIX_MAX                                      13'h1309
`define P19_PIX_MAX                                           `P19_PIX_MAX_WIDTH, `REGA_P19_PIX_MAX, `P19_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P19_PIX_MIN_WIDTH                                     0
`define REGA_P19_PIX_MIN                                      13'h130a
`define P19_PIX_MIN                                           `P19_PIX_MIN_WIDTH, `REGA_P19_PIX_MIN, `P19_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P19_SHUT_LO_WIDTH                                     0
`define REGA_P19_SHUT_LO                                      13'h130b
`define P19_SHUT_LO                                           `P19_SHUT_LO_WIDTH, `REGA_P19_SHUT_LO, `P19_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P19_SHUT_HI_WIDTH                                     0
`define REGA_P19_SHUT_HI                                      13'h130c
`define P19_SHUT_HI                                           `P19_SHUT_HI_WIDTH, `REGA_P19_SHUT_HI, `P19_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P19_EXT_WAKEUP_WIDTH                                  0
`define REGA_P19_EXT_WAKEUP                                   13'h130d
`define P19_EXT_WAKEUP                                        `P19_EXT_WAKEUP_WIDTH, `REGA_P19_EXT_WAKEUP, `P19_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P19_RESERVED_E_WIDTH                                  0
`define REGA_P19_RESERVED_E                                   13'h130e
`define P19_RESERVED_E                                        `P19_RESERVED_E_WIDTH, `REGA_P19_RESERVED_E, `P19_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P19_SKIP_FRAMES_CNT_LO_WIDTH                          0
`define REGA_P19_SKIP_FRAMES_CNT_LO                           13'h130f
`define P19_SKIP_FRAMES_CNT_LO                                `P19_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P19_SKIP_FRAMES_CNT_LO, `P19_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P19_SKIP_FRAMES_CNT_HI_WIDTH                          0
`define REGA_P19_SKIP_FRAMES_CNT_HI                           13'h1310
`define P19_SKIP_FRAMES_CNT_HI                                `P19_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P19_SKIP_FRAMES_CNT_HI, `P19_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P19_CVFR_PERIOD_LO_WIDTH                              0
`define REGA_P19_CVFR_PERIOD_LO                               13'h1311
`define P19_CVFR_PERIOD_LO                                    `P19_CVFR_PERIOD_LO_WIDTH, `REGA_P19_CVFR_PERIOD_LO, `P19_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P19_CVFR_PERIOD_HI_WIDTH                              0
`define REGA_P19_CVFR_PERIOD_HI                               13'h1312
`define P19_CVFR_PERIOD_HI                                    `P19_CVFR_PERIOD_HI_WIDTH, `REGA_P19_CVFR_PERIOD_HI, `P19_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P19_OBSERVATION_WIDTH                                 0
`define REGA_P19_OBSERVATION                                  13'h1315
`define P19_OBSERVATION                                       `P19_OBSERVATION_WIDTH, `REGA_P19_OBSERVATION, `P19_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P19_BURST_MOTION_WIDTH                                0
`define REGA_P19_BURST_MOTION                                 13'h1316
`define P19_BURST_MOTION                                      `P19_BURST_MOTION_WIDTH, `REGA_P19_BURST_MOTION, `P19_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P19_SQUAL2_WIDTH                                      0
`define REGA_P19_SQUAL2                                       13'h1317
`define P19_SQUAL2                                            `P19_SQUAL2_WIDTH, `REGA_P19_SQUAL2, `P19_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P19_SPI_MODE_WIDTH                                    0
`define REGA_P19_SPI_MODE                                     13'h1318
`define P19_SPI_MODE                                          `P19_SPI_MODE_WIDTH, `REGA_P19_SPI_MODE, `P19_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P19_OSC_TUNE_INSTR_WIDTH                              0
`define REGA_P19_OSC_TUNE_INSTR                               13'h1322
`define P19_OSC_TUNE_INSTR                                    `P19_OSC_TUNE_INSTR_WIDTH, `REGA_P19_OSC_TUNE_INSTR, `P19_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P19_OSC_TUNE_INSTR_SLOW_WIDTH                         0
`define REGA_P19_OSC_TUNE_INSTR_SLOW                          13'h1323
`define P19_OSC_TUNE_INSTR_SLOW                               `P19_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P19_OSC_TUNE_INSTR_SLOW, `P19_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P19_PRBS_MODE_WIDTH                                   0
`define REGA_P19_PRBS_MODE                                    13'h1330
`define P19_PRBS_MODE                                         `P19_PRBS_MODE_WIDTH, `REGA_P19_PRBS_MODE, `P19_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P19_POWERDOWN_WIDTH                                   0
`define REGA_P19_POWERDOWN                                    13'h1332
`define P19_POWERDOWN                                         `P19_POWERDOWN_WIDTH, `REGA_P19_POWERDOWN, `P19_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P19_CRC0_WIDTH                                        0
`define REGA_P19_CRC0                                         13'h1333
`define P19_CRC0                                              `P19_CRC0_WIDTH, `REGA_P19_CRC0, `P19_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P19_CRC1_WIDTH                                        0
`define REGA_P19_CRC1                                         13'h1334
`define P19_CRC1                                              `P19_CRC1_WIDTH, `REGA_P19_CRC1, `P19_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P19_CRC2_WIDTH                                        0
`define REGA_P19_CRC2                                         13'h1335
`define P19_CRC2                                              `P19_CRC2_WIDTH, `REGA_P19_CRC2, `P19_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P19_CRC3_WIDTH                                        0
`define REGA_P19_CRC3                                         13'h1336
`define P19_CRC3                                              `P19_CRC3_WIDTH, `REGA_P19_CRC3, `P19_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P19_IOSTATUS_WIDTH                                    0
`define REGA_P19_IOSTATUS                                     13'h1337
`define P19_IOSTATUS                                          `P19_IOSTATUS_WIDTH, `REGA_P19_IOSTATUS, `P19_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P19_TAP_KEY_WO_WIDTH                                  0
`define REGA_P19_TAP_KEY_WO                                   13'h1338
`define P19_TAP_KEY_WO                                        `P19_TAP_KEY_WO_WIDTH, `REGA_P19_TAP_KEY_WO, `P19_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P19_TAP_KEY_WIDTH                                     0
`define REGA_P19_TAP_KEY                                      13'h1339
`define P19_TAP_KEY                                           `P19_TAP_KEY_WIDTH, `REGA_P19_TAP_KEY, `P19_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P19_POWER_UP_RESET_WIDTH                              0
`define REGA_P19_POWER_UP_RESET                               13'h133a
`define P19_POWER_UP_RESET                                    `P19_POWER_UP_RESET_WIDTH, `REGA_P19_POWER_UP_RESET, `P19_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P19_SHUTDOWN_WIDTH                                    0
`define REGA_P19_SHUTDOWN                                     13'h133b
`define P19_SHUTDOWN                                          `P19_SHUTDOWN_WIDTH, `REGA_P19_SHUTDOWN, `P19_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P19_SCAN_MODE_WIDTH                                   0
`define REGA_P19_SCAN_MODE                                    13'h133c
`define P19_SCAN_MODE                                         `P19_SCAN_MODE_WIDTH, `REGA_P19_SCAN_MODE, `P19_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P19_SPI_PAGE_WIDTH                                    0
`define REGA_P19_SPI_PAGE                                     13'h137f
`define P19_SPI_PAGE                                          `P19_SPI_PAGE_WIDTH, `REGA_P19_SPI_PAGE, `P19_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define CLKSEQ_CTRL0_WIDTH                                    8
`define REGA_CLKSEQ_CTRL0                                     13'h1340
`define CLKSEQ_CTRL0_DEFAULT                                  8'h0
`define CLKSEQ_CTRL0_CHECK                                    8'h0
`define CLKSEQ_CTRL0                                          `CLKSEQ_CTRL0_WIDTH, `REGA_CLKSEQ_CTRL0, `CLKSEQ_CTRL0_DEFAULT
//  access       ro
//  atype        A
//    7  0x0     EFUSE_LOAD_INH
//                  1: EFUSE auto load inhibit.
//    6  0x0     FPCDIV2_SEL
//                  1: 1MHz fpc osc divided by 2 selected.
//    5  0x0     ALL_CLKS_OFF
//                  1: All clocks off selected.
//    4  0x0     ALL_CLKS_ON
//                  1: All clocks on selected.
//    3  0x0     SLOWDIV2_SEL
//                  1: 5kHz slow osc divided by 2 selected.
//    2  0x0     FASTDIV2_SEL
//                  1: 68MHz main osc divided by 2 selected.
//    1  0x0     POWERDOWN
//                  1: Chip powered down.
//    0  0x0     EXTCLK_SEL
//                  1: External clock selected.

`define CLKSEQ_CTRL8_WIDTH                                    8
`define REGA_CLKSEQ_CTRL8                                     13'h1347
`define CLKSEQ_CTRL8_DEFAULT                                  8'h60
`define CLKSEQ_CTRL8_CHECK                                    8'h60
`define CLKSEQ_CTRL8                                          `CLKSEQ_CTRL8_WIDTH, `REGA_CLKSEQ_CTRL8, `CLKSEQ_CTRL8_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     EXTRPL_CLK_ON
//                  Clock always on in extrapolation mode
//    6  0x1     REST_TO_RUN_FRAME_CLK_ON
//                  1: Clock remain on from last rest to first run frame.  Need to enable this bit if INSTANT_RUN_FRAME_EN is 1
//    5  0x1     HISPEED_CLK_ON
//                  1: Clock always on in Highspeed mode
//    4  0x0     MAIN_CLK_CTRL
//                  1: Enable main clock control by register [3:1]
//    3  0x0     OSC5K_PD_MAN_CTRL
//                  1: Manual Control for HIB clock off
//    2  0x0     OSC1M_PD_MAN_CTRL
//                  1: Manual Control for FPC clock off
//    1  0x0     OSC68M_PD_MAN_CTRL
//                  1: Manual Control for main clock off
//    0  0x0     WATCHDOG_INH_REG
//                  1: Inhibit watchdog

`define CLKSEQ_CTRL10_WIDTH                                   8
`define REGA_CLKSEQ_CTRL10                                    13'h1349
`define CLKSEQ_CTRL10_DEFAULT                                 8'h0
`define CLKSEQ_CTRL10_CHECK                                   8'h0
`define CLKSEQ_CTRL10                                         `CLKSEQ_CTRL10_WIDTH, `REGA_CLKSEQ_CTRL10, `CLKSEQ_CTRL10_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     skip_cor_dis
//                  0: Normal mode.  COR clk will skip frame on various signals.
//                  1: Skip COR clk disabled.  COR clk will run every frame.
//    6  0x0     force_skip_cor
//                  0: Normal mode
//                  1: Force COR clk to always skip.  This is to minimize power draw in fastvideo mode for capturing movies.  No tracking in this mode.
//    5  0x0     lsr_clken
//                  1: Enable LSR clock.
//  4:0  0x0     CLK_NEN_TD0
//                  0: gated_clk_nen
//                  1: ana_gated_nen
//                  2: tlx_gated_nen
//                  3: dcr_gated_nen
//                  4: pixmon_gated_nen
//                  5: lift_gated_nen
//                  6: cmem_gated_nen
//                  7: cor_gated_nen
//                  8: nav_gated_nen
//                  9: mot_gated_nen
//                  10: efuse_gated_nen
//                  11: OSC_TUNE_GATED_NEN
//                  12: pix_grab_gated_nen
//                  13: vid_gated_nen
//                  14: prbs_gated_nen
//                  15: crc_gated_nen
//                  16: lsr_gated_nen

`define CLKSEQ_CTRL11_WIDTH                                   8
`define REGA_CLKSEQ_CTRL11                                    13'h134a
`define CLKSEQ_CTRL11_DEFAULT                                 8'h0
`define CLKSEQ_CTRL11_CHECK                                   8'h0
`define CLKSEQ_CTRL11                                         `CLKSEQ_CTRL11_WIDTH, `REGA_CLKSEQ_CTRL11, `CLKSEQ_CTRL11_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     force_pix_grab_always_on
//                  1: Force PIX_GRAB clock always on.
//    6  0x0     force_efuse_always_on
//                  1: Force EFUSE clock always on.
//    5  0x0     force_lsr_always_on
//                  1: Force LSR clock always on.
//  4:0  0x0     CLK_NEN_TD1
//                  0: gated_clk_nen
//                  1: ana_gated_nen
//                  2: tlx_gated_nen
//                  3: dcr_gated_nen
//                  4: pixmon_gated_nen
//                  5: lift_gated_nen
//                  6: cmem_gated_nen
//                  7: cor_gated_nen
//                  8: nav_gated_nen
//                  9: mot_gated_nen
//                  10: efuse_gated_nen
//                  11: OSC_TUNE_GATED_NEN
//                  12: pix_grab_gated_nen
//                  13: vid_gated_nen
//                  14: prbs_gated_nen
//                  15: crc_gated_nen
//                  16: lsr_gated_nen

`define RP_OBSERVATION_WIDTH                                  8
`define REGA_RP_OBSERVATION                                   13'h134c
`define RP_OBSERVATION_DEFAULT                                8'h0
`define RP_OBSERVATION_CHECK                                  8'h0
`define RP_OBSERVATION                                        `RP_OBSERVATION_WIDTH, `REGA_RP_OBSERVATION, `RP_OBSERVATION_DEFAULT
//  access       ro
//  atype        A
//    7  0x0     FRAME_STRETCH_FLAG
//                  Indication that the frame is stretched
//  6:0  0x0     RESERVED
//                  RESERVED

`define PWM_MODE_WIDTH                                        8
`define REGA_PWM_MODE                                         13'h134d
`define PWM_MODE_DEFAULT                                      8'h0
`define PWM_MODE_CHECK                                        8'h0
`define PWM_MODE                                              `PWM_MODE_WIDTH, `REGA_PWM_MODE, `PWM_MODE_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     RESERVED
//                  Reserved
//    6  0x0     PWM_OUT_TO_XCLK
//                  Channel PWM OUT signal to XCLK pad
//    5  0x0     PWM_REST_DISABLE
//                  1: Disable PWM in rest mode
//                  0: Enable PWM in both rest and run mode
//    4  0x0     PWM_REST_POL
//                  PWM polarity in rest mode
//    3  0x0     PWM_SHUTDOWN_POL
//                  PWM polarity in shutdown mode
//    2  0x0     PWM_SCALE
//                  1: PWM period is 10ms
//                  0: PWM period is 1ms
//  1:0  0x0     PWM_MODE
//                  11: PWM outout follow register setting
//                  10: PWM output follow frame rate
//                  01: PWM output static HIGH
//                  00: PWM output static LOW

`define PWM_PERIOD_CNT_WIDTH                                  8
`define REGA_PWM_PERIOD_CNT                                   13'h134e
`define PWM_PERIOD_CNT_DEFAULT                                8'h0
`define PWM_PERIOD_CNT_CHECK                                  8'h0
`define PWM_PERIOD_CNT                                        `PWM_PERIOD_CNT_WIDTH, `REGA_PWM_PERIOD_CNT, `PWM_PERIOD_CNT_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     PWM PERIOD CNT
//                  Set the period of toggling signal to be multiple of period as in PWM_MODE[2]

`define PWM_WIDTH_CNT_WIDTH                                   8
`define REGA_PWM_WIDTH_CNT                                    13'h134f
`define PWM_WIDTH_CNT_DEFAULT                                 8'h0
`define PWM_WIDTH_CNT_CHECK                                   8'h0
`define PWM_WIDTH_CNT                                         `PWM_WIDTH_CNT_WIDTH, `REGA_PWM_WIDTH_CNT, `PWM_WIDTH_CNT_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     PWM WIDTH CNT
//                  Set the width of toggling signal when it is HIGH to be multiple of period as in PWM_MODE[2]


`define P20_PROD_ID_WIDTH                                     0
`define REGA_P20_PROD_ID                                      13'h1400
`define P20_PROD_ID                                           `P20_PROD_ID_WIDTH, `REGA_P20_PROD_ID, `P20_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P20_REV_ID_WIDTH                                      0
`define REGA_P20_REV_ID                                       13'h1401
`define P20_REV_ID                                            `P20_REV_ID_WIDTH, `REGA_P20_REV_ID, `P20_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P20_MOTION_WIDTH                                      0
`define REGA_P20_MOTION                                       13'h1402
`define P20_MOTION                                            `P20_MOTION_WIDTH, `REGA_P20_MOTION, `P20_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P20_DELTA_X_LO_WIDTH                                  0
`define REGA_P20_DELTA_X_LO                                   13'h1403
`define P20_DELTA_X_LO                                        `P20_DELTA_X_LO_WIDTH, `REGA_P20_DELTA_X_LO, `P20_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P20_DELTA_X_HI_WIDTH                                  0
`define REGA_P20_DELTA_X_HI                                   13'h1404
`define P20_DELTA_X_HI                                        `P20_DELTA_X_HI_WIDTH, `REGA_P20_DELTA_X_HI, `P20_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P20_DELTA_Y_LO_WIDTH                                  0
`define REGA_P20_DELTA_Y_LO                                   13'h1405
`define P20_DELTA_Y_LO                                        `P20_DELTA_Y_LO_WIDTH, `REGA_P20_DELTA_Y_LO, `P20_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P20_DELTA_Y_HI_WIDTH                                  0
`define REGA_P20_DELTA_Y_HI                                   13'h1406
`define P20_DELTA_Y_HI                                        `P20_DELTA_Y_HI_WIDTH, `REGA_P20_DELTA_Y_HI, `P20_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P20_SQUAL_WIDTH                                       0
`define REGA_P20_SQUAL                                        13'h1407
`define P20_SQUAL                                             `P20_SQUAL_WIDTH, `REGA_P20_SQUAL, `P20_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P20_PIX_ACCUM_WIDTH                                   0
`define REGA_P20_PIX_ACCUM                                    13'h1408
`define P20_PIX_ACCUM                                         `P20_PIX_ACCUM_WIDTH, `REGA_P20_PIX_ACCUM, `P20_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P20_PIX_MAX_WIDTH                                     0
`define REGA_P20_PIX_MAX                                      13'h1409
`define P20_PIX_MAX                                           `P20_PIX_MAX_WIDTH, `REGA_P20_PIX_MAX, `P20_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P20_PIX_MIN_WIDTH                                     0
`define REGA_P20_PIX_MIN                                      13'h140a
`define P20_PIX_MIN                                           `P20_PIX_MIN_WIDTH, `REGA_P20_PIX_MIN, `P20_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P20_SHUT_LO_WIDTH                                     0
`define REGA_P20_SHUT_LO                                      13'h140b
`define P20_SHUT_LO                                           `P20_SHUT_LO_WIDTH, `REGA_P20_SHUT_LO, `P20_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P20_SHUT_HI_WIDTH                                     0
`define REGA_P20_SHUT_HI                                      13'h140c
`define P20_SHUT_HI                                           `P20_SHUT_HI_WIDTH, `REGA_P20_SHUT_HI, `P20_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P20_EXT_WAKEUP_WIDTH                                  0
`define REGA_P20_EXT_WAKEUP                                   13'h140d
`define P20_EXT_WAKEUP                                        `P20_EXT_WAKEUP_WIDTH, `REGA_P20_EXT_WAKEUP, `P20_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P20_RESERVED_E_WIDTH                                  0
`define REGA_P20_RESERVED_E                                   13'h140e
`define P20_RESERVED_E                                        `P20_RESERVED_E_WIDTH, `REGA_P20_RESERVED_E, `P20_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P20_SKIP_FRAMES_CNT_LO_WIDTH                          0
`define REGA_P20_SKIP_FRAMES_CNT_LO                           13'h140f
`define P20_SKIP_FRAMES_CNT_LO                                `P20_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P20_SKIP_FRAMES_CNT_LO, `P20_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P20_SKIP_FRAMES_CNT_HI_WIDTH                          0
`define REGA_P20_SKIP_FRAMES_CNT_HI                           13'h1410
`define P20_SKIP_FRAMES_CNT_HI                                `P20_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P20_SKIP_FRAMES_CNT_HI, `P20_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P20_CVFR_PERIOD_LO_WIDTH                              0
`define REGA_P20_CVFR_PERIOD_LO                               13'h1411
`define P20_CVFR_PERIOD_LO                                    `P20_CVFR_PERIOD_LO_WIDTH, `REGA_P20_CVFR_PERIOD_LO, `P20_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P20_CVFR_PERIOD_HI_WIDTH                              0
`define REGA_P20_CVFR_PERIOD_HI                               13'h1412
`define P20_CVFR_PERIOD_HI                                    `P20_CVFR_PERIOD_HI_WIDTH, `REGA_P20_CVFR_PERIOD_HI, `P20_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P20_OBSERVATION_WIDTH                                 0
`define REGA_P20_OBSERVATION                                  13'h1415
`define P20_OBSERVATION                                       `P20_OBSERVATION_WIDTH, `REGA_P20_OBSERVATION, `P20_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P20_BURST_MOTION_WIDTH                                0
`define REGA_P20_BURST_MOTION                                 13'h1416
`define P20_BURST_MOTION                                      `P20_BURST_MOTION_WIDTH, `REGA_P20_BURST_MOTION, `P20_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P20_SQUAL2_WIDTH                                      0
`define REGA_P20_SQUAL2                                       13'h1417
`define P20_SQUAL2                                            `P20_SQUAL2_WIDTH, `REGA_P20_SQUAL2, `P20_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P20_SPI_MODE_WIDTH                                    0
`define REGA_P20_SPI_MODE                                     13'h1418
`define P20_SPI_MODE                                          `P20_SPI_MODE_WIDTH, `REGA_P20_SPI_MODE, `P20_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P20_OSC_TUNE_INSTR_WIDTH                              0
`define REGA_P20_OSC_TUNE_INSTR                               13'h1422
`define P20_OSC_TUNE_INSTR                                    `P20_OSC_TUNE_INSTR_WIDTH, `REGA_P20_OSC_TUNE_INSTR, `P20_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P20_OSC_TUNE_INSTR_SLOW_WIDTH                         0
`define REGA_P20_OSC_TUNE_INSTR_SLOW                          13'h1423
`define P20_OSC_TUNE_INSTR_SLOW                               `P20_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P20_OSC_TUNE_INSTR_SLOW, `P20_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P20_PRBS_MODE_WIDTH                                   0
`define REGA_P20_PRBS_MODE                                    13'h1430
`define P20_PRBS_MODE                                         `P20_PRBS_MODE_WIDTH, `REGA_P20_PRBS_MODE, `P20_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P20_POWERDOWN_WIDTH                                   0
`define REGA_P20_POWERDOWN                                    13'h1432
`define P20_POWERDOWN                                         `P20_POWERDOWN_WIDTH, `REGA_P20_POWERDOWN, `P20_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P20_CRC0_WIDTH                                        0
`define REGA_P20_CRC0                                         13'h1433
`define P20_CRC0                                              `P20_CRC0_WIDTH, `REGA_P20_CRC0, `P20_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P20_CRC1_WIDTH                                        0
`define REGA_P20_CRC1                                         13'h1434
`define P20_CRC1                                              `P20_CRC1_WIDTH, `REGA_P20_CRC1, `P20_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P20_CRC2_WIDTH                                        0
`define REGA_P20_CRC2                                         13'h1435
`define P20_CRC2                                              `P20_CRC2_WIDTH, `REGA_P20_CRC2, `P20_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P20_CRC3_WIDTH                                        0
`define REGA_P20_CRC3                                         13'h1436
`define P20_CRC3                                              `P20_CRC3_WIDTH, `REGA_P20_CRC3, `P20_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P20_IOSTATUS_WIDTH                                    0
`define REGA_P20_IOSTATUS                                     13'h1437
`define P20_IOSTATUS                                          `P20_IOSTATUS_WIDTH, `REGA_P20_IOSTATUS, `P20_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P20_TAP_KEY_WO_WIDTH                                  0
`define REGA_P20_TAP_KEY_WO                                   13'h1438
`define P20_TAP_KEY_WO                                        `P20_TAP_KEY_WO_WIDTH, `REGA_P20_TAP_KEY_WO, `P20_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P20_TAP_KEY_WIDTH                                     0
`define REGA_P20_TAP_KEY                                      13'h1439
`define P20_TAP_KEY                                           `P20_TAP_KEY_WIDTH, `REGA_P20_TAP_KEY, `P20_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P20_POWER_UP_RESET_WIDTH                              0
`define REGA_P20_POWER_UP_RESET                               13'h143a
`define P20_POWER_UP_RESET                                    `P20_POWER_UP_RESET_WIDTH, `REGA_P20_POWER_UP_RESET, `P20_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P20_SHUTDOWN_WIDTH                                    0
`define REGA_P20_SHUTDOWN                                     13'h143b
`define P20_SHUTDOWN                                          `P20_SHUTDOWN_WIDTH, `REGA_P20_SHUTDOWN, `P20_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P20_SCAN_MODE_WIDTH                                   0
`define REGA_P20_SCAN_MODE                                    13'h143c
`define P20_SCAN_MODE                                         `P20_SCAN_MODE_WIDTH, `REGA_P20_SCAN_MODE, `P20_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P20_SPI_PAGE_WIDTH                                    0
`define REGA_P20_SPI_PAGE                                     13'h147f
`define P20_SPI_PAGE                                          `P20_SPI_PAGE_WIDTH, `REGA_P20_SPI_PAGE, `P20_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define FOSC_S_CODE_WIDTH                                     8
`define REGA_FOSC_S_CODE                                      13'h1440
`define FOSC_S_CODE_DEFAULT                                   8'h20
`define FOSC_S_CODE_CHECK                                     8'h20
`define FOSC_S_CODE                                           `FOSC_S_CODE_WIDTH, `REGA_FOSC_S_CODE, `FOSC_S_CODE_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x20    OSC68M_S_CODE_I
//                  OSC68M_S_CODE_I

`define FOSC_S_S0_WIDTH                                       8
`define REGA_FOSC_S_S0                                        13'h1441
`define FOSC_S_S0_DEFAULT                                     8'hb
`define FOSC_S_S0_CHECK                                       8'hb
`define FOSC_S_S0                                             `FOSC_S_S0_WIDTH, `REGA_FOSC_S_S0, `FOSC_S_S0_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     SPARE
//                  Spare bit
//    6  0x0     OSC68M_S_INV_DUTY
//                  OSC68M_S_INV_DUTY
//    5  0x0     OSC68M_S_DIFF_ZERO
//                  OSC68M_S_DIFF_ZERO
//    4  0x0     OSC68M_S_SEL_DUTY
//                  OSC68M_S_SEL_DUTY
//    3  0x1     OSC68M_S_SEL_68M
//                  OSC68M_S_SEL_68M
//  2:0  0x3     OSC68M_S_CAP
//                  OSC68M_S_CAP

`define FOSC_S_S1_WIDTH                                       8
`define REGA_FOSC_S_S1                                        13'h1446
`define FOSC_S_S1_DEFAULT                                     8'h87
`define FOSC_S_S1_CHECK                                       8'h87
`define FOSC_S_S1                                             `FOSC_S_S1_WIDTH, `REGA_FOSC_S_S1, `FOSC_S_S1_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x8     OSC68M_S_CODE_DCN
//                  OSC68M_S_CODE_DCN
//  3:0  0x7     OSC68M_S_CODE_DCP
//                  OSC68M_S_CODE_DCP

`define FOSC_S_S2_WIDTH                                       8
`define REGA_FOSC_S_S2                                        13'h1447
`define FOSC_S_S2_DEFAULT                                     8'h1
`define FOSC_S_S2_CHECK                                       8'h1
`define FOSC_S_S2                                             `FOSC_S_S2_WIDTH, `REGA_FOSC_S_S2, `FOSC_S_S2_DEFAULT
//  access       rw
//  atype        A
//  7:3  0x0     RESERVED
//                  Reserved
//    2  0x0     OSC68M_S_SEL_TST_IOSC
//                  OSC68M_S_SEL_TST_IOSC
//    1  0x0     OSC68M_S_SEL_TST_VOSC
//                  OSC68M_S_SEL_TST_VOSC
//    0  0x1     OSC68M_S_PD_BUF
//                  OSC68M_S_PD_BUF

`define MOSC_CTRL0_WIDTH                                      8
`define REGA_MOSC_CTRL0                                       13'h1442
`define MOSC_CTRL0_DEFAULT                                    8'h3c
`define MOSC_CTRL0_CHECK                                      8'h3c
`define MOSC_CTRL0                                            `MOSC_CTRL0_WIDTH, `REGA_MOSC_CTRL0, `MOSC_CTRL0_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     OSC1M_S_BIAS_SEL
//                  OSC1M_S_BIAS_SEL
//  6:0  0x3c    OSC1M_S_BAND_SEL
//                  OSC1M_S_BAND_SEL

`define MOSC_CTRL1_WIDTH                                      8
`define REGA_MOSC_CTRL1                                       13'h1443
`define MOSC_CTRL1_DEFAULT                                    8'h48
`define MOSC_CTRL1_CHECK                                      8'h48
`define MOSC_CTRL1                                            `MOSC_CTRL1_WIDTH, `REGA_MOSC_CTRL1, `MOSC_CTRL1_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     SPARE
//                  Spare bit
//  6:4  0x4     OSC1M_S_FREQ_SHIFT
//                  OSC1M_S_FREQ_SHIFT
//  3:0  0x8     OSC1M_S_RANGE_SEL
//                  OSC1M_S_RANGE_SEL

`define SOSC_CTRL0_WIDTH                                      8
`define REGA_SOSC_CTRL0                                       13'h1444
`define SOSC_CTRL0_DEFAULT                                    8'h12
`define SOSC_CTRL0_CHECK                                      8'h12
`define SOSC_CTRL0                                            `SOSC_CTRL0_WIDTH, `REGA_SOSC_CTRL0, `SOSC_CTRL0_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     SPARE
//                  Spare bit
//    6  0x0     OSC5K_S_SEL
//                  OSC5K_S_SEL
//    5  0x0     RESERVED
//                  Reserved
//  4:0  0x12    OSC5K_S_FREQ_C_SEL
//                  OSC5K coarse trim setting.  Mapped to pseudo thermometer settings.

`define IREF_CTRL_WIDTH                                       8
`define REGA_IREF_CTRL                                        13'h1445
`define IREF_CTRL_DEFAULT                                     8'ha8
`define IREF_CTRL_CHECK                                       8'ha8
`define IREF_CTRL                                             `IREF_CTRL_WIDTH, `REGA_IREF_CTRL, `IREF_CTRL_DEFAULT
//  access       rw
//  atype        A
//  7:6  0x2     IREF_S_B_ADC
//                  IREF_S_B_ADC
//  5:0  0x28    IREF_S_B
//                  IREF_S_B

`define PIX_CTL0_WIDTH                                        8
`define REGA_PIX_CTL0                                         13'h1448
`define PIX_CTL0_DEFAULT                                      8'hea
`define PIX_CTL0_CHECK                                        8'hea
`define PIX_CTL0                                              `PIX_CTL0_WIDTH, `REGA_PIX_CTL0, `PIX_CTL0_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     PIX_S_OUT_BST_SEL1
//                  PIX_S_OUT_BST_SEL1
//    6  0x1     PIX_S_OUT_BST_SEL2
//                  PIX_S_OUT_BST_SEL2
//    5  0x1     PIX_S_PBB_R_NEN_SHRT
//                  PIX_S_PBB_R_NEN_SHRT
//    4  0x0     PIX_S_LOW_IARR
//                  PIX_S_LOW_IARR
//    3  0x1     PIX_S_OUT_BST_DW_DLY2
//                  PIX_S_OUT_BST_DW_DLY2
//    2  0x0     PIX_S_OUT_BST_DW_DLY1
//                  PIX_S_OUT_BST_DW_DLY1
//    1  0x1     PIX_S_PBB_DRIVE
//                  PIX_S_PBB_DRIVE
//    0  0x0     PIX_S_PUL_WID_REDUC
//                  PIX_S_PUL_WID_REDUC

`define PIX_CTL1_WIDTH                                        8
`define REGA_PIX_CTL1                                         13'h1449
`define PIX_CTL1_DEFAULT                                      8'h29
`define PIX_CTL1_CHECK                                        8'h29
`define PIX_CTL1                                              `PIX_CTL1_WIDTH, `REGA_PIX_CTL1, `PIX_CTL1_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     PIX_S_SELBYPASSPBB
//                  PIX_S_SELBYPASSPBB
//    6  0x0     PIX_S_BS_RST_LPWR
//                  PIX_S_BS_RST_LPWR
//    5  0x1     PIX_S_OUT_BST_DW_DLY_RST
//                  PIX_S_OUT_BST_DW_DLY_RST
//    4  0x0     PIX_S_OUT_BST_DW_DLY_SAMP
//                  PIX_S_OUT_BST_DW_DLY_SAMP
//    3  0x1     PIX_S_S2PCR_SEL
//                  PIX_S_S2PCR_SEL
//    2  0x0     PIX_S_SEL_DIG_COL_CLK
//                  PIX_S_SEL_DIG_COL_CLK
//    1  0x0     PIX_S_SEL_BS_DLY2
//                  PIX_S_SEL_BS_DLY2
//    0  0x1     PIX_S_SEL_BS_DLY1
//                  PIX_S_SEL_BS_DLY1

`define PIX_CTL2_WIDTH                                        8
`define REGA_PIX_CTL2                                         13'h144a
`define PIX_CTL2_DEFAULT                                      8'h92
`define PIX_CTL2_CHECK                                        8'h92
`define PIX_CTL2                                              `PIX_CTL2_WIDTH, `REGA_PIX_CTL2, `PIX_CTL2_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     PIX_BIASING_EN
//                  PIX_BIASING_EN
//  6:0  0x12    ANACLK_ADJ_REG
//                  ANACLK_ADJ_REG

`define TA_CTL0_WIDTH                                         8
`define REGA_TA_CTL0                                          13'h144b
`define TA_CTL0_DEFAULT                                       8'h28
`define TA_CTL0_CHECK                                         8'h28
`define TA_CTL0                                               `TA_CTL0_WIDTH, `REGA_TA_CTL0, `TA_CTL0_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     RESERVED
//                  Reserved
//  6:4  0x2     TA_S_GAIN_SELECT_FF
//                  TA_S_GAIN_SELECT_FF
//    3  0x1     TA_S_ADC_7BITS_ANA
//                  TA_S_ADC_7BITS_ANA
//    2  0x0     TA_S_SEL_TASF_EN
//                  TA_S_SEL_TASF_EN
//    0  0x0     RESERVED
//                  Reserved

`define TA_CTL1_WIDTH                                         8
`define REGA_TA_CTL1                                          13'h144c
`define TA_CTL1_DEFAULT                                       8'h2
`define TA_CTL1_CHECK                                         8'h2
`define TA_CTL1                                               `TA_CTL1_WIDTH, `REGA_TA_CTL1, `TA_CTL1_DEFAULT
//  access       rw
//  atype        A
//  7:3  0x0     RESERVED
//                  Reserved
//  2:0  0x2     TA_S_GAIN_SELECT_DFLAT
//                  TA_S_GAIN_SELECT_DFLAT

`define TA_CTL2_WIDTH                                         8
`define REGA_TA_CTL2                                          13'h144d
`define TA_CTL2_DEFAULT                                       8'h8
`define TA_CTL2_CHECK                                         8'h8
`define TA_CTL2                                               `TA_CTL2_WIDTH, `REGA_TA_CTL2, `TA_CTL2_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     RESERVED
//                  Reserved
//    6  0x0     TA_S_BIST
//                  TA_S_BIST
//    5  0x0     TA_PIX_DARK_EN
//                  TA_PIX_DARK_EN
//    4  0x0     TA_S_PIX_OFF_CANC_NEN
//                  TA_S_PIX_OFF_CANC_NEN
//    3  0x1     TA_S_VREFP_SEL
//                  TA_S_VREFP_SEL
//  2:0  0x0     RESERVED
//                  RESERVED

`define TA_CTL3_WIDTH                                         8
`define REGA_TA_CTL3                                          13'h144e
`define TA_CTL3_DEFAULT                                       8'h28
`define TA_CTL3_CHECK                                         8'h28
`define TA_CTL3                                               `TA_CTL3_WIDTH, `REGA_TA_CTL3, `TA_CTL3_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x2     TA_S_OTA_SPEED
//                  TA_S_OTA_SPEED
//  3:0  0x8     TA_S_FOL_SPEED
//                  TA_S_FOL_SPEED

`define TA_CTL4_WIDTH                                         8
`define REGA_TA_CTL4                                          13'h144f
`define TA_CTL4_DEFAULT                                       8'h0
`define TA_CTL4_CHECK                                         8'h0
`define TA_CTL4                                               `TA_CTL4_WIDTH, `REGA_TA_CTL4, `TA_CTL4_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     TA_OFF_TRIM_CH_SEL_DIG
//                  Channel selector for compensation
//                  0 = CH0
//                  1 = CH1
//  6:4  0x0     RESERVED
//                  Reserved
//  3:0  0x0     TA_S_CH_OFF_TRIM_DIG
//                  TA_S_CH_OFF_TRIM_DIG
//                  Digital channel offset compensation value

`define ADC_CTL0_WIDTH                                        8
`define REGA_ADC_CTL0                                         13'h1450
`define ADC_CTL0_DEFAULT                                      8'h1
`define ADC_CTL0_CHECK                                        8'h1
`define ADC_CTL0                                              `ADC_CTL0_WIDTH, `REGA_ADC_CTL0, `ADC_CTL0_DEFAULT
//  access       rw
//  atype        A
//  7:1  0x0     RESERVED
//                  Reserved
//    0  0x1     ADC_S_FAST_REC
//                  ADC_S_FAST_REC

`define ADC_CTL1_WIDTH                                        8
`define REGA_ADC_CTL1                                         13'h1451
`define ADC_CTL1_DEFAULT                                      8'h4
`define ADC_CTL1_CHECK                                        8'h4
`define ADC_CTL1                                              `ADC_CTL1_WIDTH, `REGA_ADC_CTL1, `ADC_CTL1_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x4     ADC_S_CFG
//                  ADC_S_CFG

`define ADC_CTL2_WIDTH                                        8
`define REGA_ADC_CTL2                                         13'h1452
`define ADC_CTL2_DEFAULT                                      8'h0
`define ADC_CTL2_CHECK                                        8'h0
`define ADC_CTL2                                              `ADC_CTL2_WIDTH, `REGA_ADC_CTL2, `ADC_CTL2_DEFAULT
//  access       rw
//  atype        A
//  7:6  0x0     Reserved
//                  Reserved
//  5:0  0x0     ADC_OFFSET
//                  ADC_OFFSET

`define LED_CTL0_WIDTH                                        8
`define REGA_LED_CTL0                                         13'h1453
`define LED_CTL0_DEFAULT                                      8'hb
`define LED_CTL0_CHECK                                        8'hb
`define LED_CTL0                                              `LED_CTL0_WIDTH, `REGA_LED_CTL0, `LED_CTL0_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x0     RESERVED
//                  Reserved
//  3:0  0xb     LED_S_TRIM
//                  LED_S_TRIM

`define LED_CTL1_WIDTH                                        8
`define REGA_LED_CTL1                                         13'h1454
`define LED_CTL1_DEFAULT                                      8'h0
`define LED_CTL1_CHECK                                        8'h0
`define LED_CTL1                                              `LED_CTL1_WIDTH, `REGA_LED_CTL1, `LED_CTL1_DEFAULT
//  access       rw
//  atype        A
//  7:6  0x0     PREFLASH_ALGO
//                  PREFLASH_ALGO
//  5:3  0x0     RESERVED
//                  RESERVED
//    2  0x0     PU_LED
//                  PU_LED
//    1  0x0     PD_LED
//                  PD_LED
//    0  0x0     RESERVED
//                  RESERVED

`define LDOCL_CTL0_WIDTH                                      8
`define REGA_LDOCL_CTL0                                       13'h1455
`define LDOCL_CTL0_DEFAULT                                    8'h0
`define LDOCL_CTL0_CHECK                                      8'h0
`define LDOCL_CTL0                                            `LDOCL_CTL0_WIDTH, `REGA_LDOCL_CTL0, `LDOCL_CTL0_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     LDOCL_S_SPIKEUP_BIASENB
//                  LDOCL_S_SPIKEUP_BIASENB
//  6:4  0x0     LDOCL_S_TR_LD
//                  LDOCL_S_TR_LD
//    3  0x0     LDOCL_S_SPIKE_UP_ENB
//                  LDOCL_S_SPIKE_UP_ENB
//  2:0  0x0     LDOCL_S_TR_SINK
//                  LDOCL_S_TR_SINK

`define LDOCL_CTL1_WIDTH                                      8
`define REGA_LDOCL_CTL1                                       13'h1456
`define LDOCL_CTL1_DEFAULT                                    8'ha0
`define LDOCL_CTL1_CHECK                                      8'ha0
`define LDOCL_CTL1                                            `LDOCL_CTL1_WIDTH, `REGA_LDOCL_CTL1, `LDOCL_CTL1_DEFAULT
//  access       rw
//  atype        A
//  7:4  0xa     LDOCL_S_RTRIM
//                  LDOCL_S_RTRIM
//    3  0x0     LDOCL_S_DRVLD_ENB
//                  LDOCL_S_DRVLD_ENB
//    2  0x0     LDOCL_S_LD_ENB
//                  LDOCL_S_LD_ENB
//  1:0  0x0     LDOCL_S_BW
//                  LDOCL_S_BW

`define LDOCL_CTL2_WIDTH                                      8
`define REGA_LDOCL_CTL2                                       13'h1457
`define LDOCL_CTL2_DEFAULT                                    8'h0
`define LDOCL_CTL2_CHECK                                      8'h0
`define LDOCL_CTL2                                            `LDOCL_CTL2_WIDTH, `REGA_LDOCL_CTL2, `LDOCL_CTL2_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x0     RESERVED
//                  Reserved
//    3  0x0     LDOCL_D_BYPASS_EN
//                  LDOCL_D_BYPASSEN
//    2  0x0     LDOCL_D_PD
//                  LDOCL_D_PD
//    1  0x0     LDOCL_S_BOOST_TAIL
//                  LDOCL_S_BOOST_TAIL
//    0  0x0     LDOCL_S_CLAMPVCC_EN
//                  LDOCL_S_CLAMPVCC_EN

`define LDOCL_CTL3_WIDTH                                      8
`define REGA_LDOCL_CTL3                                       13'h1458
`define LDOCL_CTL3_DEFAULT                                    8'h8
`define LDOCL_CTL3_CHECK                                      8'h8
`define LDOCL_CTL3                                            `LDOCL_CTL3_WIDTH, `REGA_LDOCL_CTL3, `LDOCL_CTL3_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     RESERVED
//                  Reserved
//    6  0x0     LDO_S_1P6V_SEL
//                  LDO_S_LDO_1P6V_SEL
//    5  0x0     LDO_S_TAILFB_ENB
//                  LDO_S_TAILFB_ENB
//  4:0  0x8     LDO_S_TRIM
//                  LDO_S_TRIM

`define WIN_REST_START_WIDTH                                  8
`define REGA_WIN_REST_START                                   13'h145b
`define WIN_REST_START_DEFAULT                                8'h98
`define WIN_REST_START_CHECK                                  8'h98
`define WIN_REST_START                                        `WIN_REST_START_WIDTH, `REGA_WIN_REST_START, `WIN_REST_START_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x9     PIX_S_COL_START_REST
//                  PIX_S_COL_START_REST
//  3:0  0x8     PIX_S_ROW_START_REST
//                  ROW_START_ADDR_REST

`define PIX_SUPPLY_WIDTH                                      8
`define REGA_PIX_SUPPLY                                       13'h145c
`define PIX_SUPPLY_DEFAULT                                    8'h20
`define PIX_SUPPLY_CHECK                                      8'h20
`define PIX_SUPPLY                                            `PIX_SUPPLY_WIDTH, `REGA_PIX_SUPPLY, `PIX_SUPPLY_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     PIX_SUPPLY_OFF
//                  PIX_SUPPLY_OFF
//    6  0x0     PIX_SUPPLY_ON_REST
//                  PIX_SUPPLY_ON_REST
//    5  0x1     PIX_SUPPLY_ON_RUN
//                  PIX_SUPPLY_ON_RUN
//    4  0x0     PIX_SUPPLY_OPT
//                  PIX_SUPPLY_OPT
//    3  0x0     LEAK_S_EN
//                  LEAK_S_EN
//  2:0  0x0     LEAK_S_CFG
//                  LEAK_S_CFG

`define SPARE_REG_S1_WIDTH                                    8
`define REGA_SPARE_REG_S1                                     13'h145d
`define SPARE_REG_S1_DEFAULT                                  8'h0
`define SPARE_REG_S1_CHECK                                    8'h0
`define SPARE_REG_S1                                          `SPARE_REG_S1_WIDTH, `REGA_SPARE_REG_S1, `SPARE_REG_S1_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     SPARE_REG_S1
//                  SPARE_REG_S1

`define ATST_CTL_WIDTH                                        8
`define REGA_ATST_CTL                                         13'h145e
`define ATST_CTL_DEFAULT                                      8'h40
`define ATST_CTL_CHECK                                        8'h40
`define ATST_CTL                                              `ATST_CTL_WIDTH, `REGA_ATST_CTL, `ATST_CTL_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     CONSTGM_C_VTST_PBIAS
//                  CONSTGM_C_VTST_PBIAS
//    6  0x1     ATST_S_PD
//                  ATST_S_PD
//    7  0x0     ATST_S_BUF_ON
//                  ATST_S_BUF_ON
//  4:0  0x0     ATST_S_CTRL
//                  ATST_S_CTRL

`define CLAMP_TRIM_WIDTH                                      8
`define REGA_CLAMP_TRIM                                       13'h145f
`define CLAMP_TRIM_DEFAULT                                    8'h6
`define CLAMP_TRIM_CHECK                                      8'h6
`define CLAMP_TRIM                                            `CLAMP_TRIM_WIDTH, `REGA_CLAMP_TRIM, `CLAMP_TRIM_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     LSR_S_RBIN_SEL
//                  LSR_S_RBIN_SEL
//  6:4  0x0     Reserved
//                  Reserved
//  3:0  0x6     CLAMP_S_TRIM
//                  CLAMP_S_TRIM

`define PIX_CTL3_WIDTH                                        8
`define REGA_PIX_CTL3                                         13'h1460
`define PIX_CTL3_DEFAULT                                      8'h0
`define PIX_CTL3_CHECK                                        8'h0
`define PIX_CTL3                                              `PIX_CTL3_WIDTH, `REGA_PIX_CTL3, `PIX_CTL3_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     CONT_BOOST_OPT
//                  0: Option 0, Cont_boost started from BS_RST, End by Register
//                  1: Option 1, Cont_boost started from Preflash, End by Shutter
//    6  0x0     CONT_BOOST_INV
//                  CONT_BOOST_INV
//  5:1  0x0     RESERVED
//                  RESERVED
//    0  0x0     STATIC_FVD_IMAGE
//                  0: Disabled
//                  1: Enabled, static increment of 1 LSB for each column from left to right

`define PIX_CTL4_WIDTH                                        8
`define REGA_PIX_CTL4                                         13'h1461
`define PIX_CTL4_DEFAULT                                      8'h44
`define PIX_CTL4_CHECK                                        8'h44
`define PIX_CTL4                                              `PIX_CTL4_WIDTH, `REGA_PIX_CTL4, `PIX_CTL4_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x44    SETTLE_TIME
//                  Settle Time from BS_RST to AGC_START
//                  This value must be greater than preflash values set in 0x1462, 0x1463, 0x154C and 0x1556)

`define PIX_CTL5_WIDTH                                        8
`define REGA_PIX_CTL5                                         13'h1462
`define PIX_CTL5_DEFAULT                                      8'h1e
`define PIX_CTL5_CHECK                                        8'h1e
`define PIX_CTL5                                              `PIX_CTL5_WIDTH, `REGA_PIX_CTL5, `PIX_CTL5_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x1e    PREFLASH_FF
//                  Preflash Time for FF, step size=0.5us
//                  The value set for this register must never exceed PIX_CTL4 (0x1461) else LED will never be turned on.

`define PIX_CTL6_WIDTH                                        8
`define REGA_PIX_CTL6                                         13'h1463
`define PIX_CTL6_DEFAULT                                      8'h1e
`define PIX_CTL6_CHECK                                        8'h1e
`define PIX_CTL6                                              `PIX_CTL6_WIDTH, `REGA_PIX_CTL6, `PIX_CTL6_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x1e    PREFLASH_DFLAT
//                  Preflash Time for Dflat, step size=0.5us
//                  The value set for this register must never exceed PIX_CTL4 (0x1461) else LED will never be turned on.

`define PD_CTL_WIDTH                                          8
`define REGA_PD_CTL                                           13'h1464
`define PD_CTL_DEFAULT                                        8'h4
`define PD_CTL_CHECK                                          8'h4
`define PD_CTL                                                `PD_CTL_WIDTH, `REGA_PD_CTL, `PD_CTL_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     CONT_BOOST_DC0
//    6  0x0     CONT_BOOST_DC1
//    5  0x0     BS_RST_DC0
//    4  0x0     BS_RST_DC1
//    3  0x0     REFGEN2_DPS_PD_REF_DC0
//    2  0x1     REFGEN2_DPS_PD_REF_DC1
//  1:0  0x0     RESERVED
//                  Reserved

`define SUPDET_SETTING1_WIDTH                                 8
`define REGA_SUPDET_SETTING1                                  13'h1465
`define SUPDET_SETTING1_DEFAULT                               8'hc8
`define SUPDET_SETTING1_CHECK                                 8'hc8
`define SUPDET_SETTING1                                       `SUPDET_SETTING1_WIDTH, `REGA_SUPDET_SETTING1, `SUPDET_SETTING1_DEFAULT
//  access       rw
//  atype        A
//  7:4  0xc     SUPDET_1P8_THD
//                  Supply Detection 1.8V Threshold
//  3:0  0x8     SUPDET_1P9_THD
//                  Supply Detection 1.9V Threshold

`define SUPDET_SETTING2_WIDTH                                 8
`define REGA_SUPDET_SETTING2                                  13'h1466
`define SUPDET_SETTING2_DEFAULT                               8'h40
`define SUPDET_SETTING2_CHECK                                 8'h40
`define SUPDET_SETTING2                                       `SUPDET_SETTING2_WIDTH, `REGA_SUPDET_SETTING2, `SUPDET_SETTING2_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x4     SUPDET_2P0_THD
//                  Supply Detection 2.0V Threshold
//  3:0  0x0     SUPDET_2P1_THD
//                  Supply Detection 2.1V Threshold

`define SUPDET_SETTING3_WIDTH                                 8
`define REGA_SUPDET_SETTING3                                  13'h1467
`define SUPDET_SETTING3_DEFAULT                               8'h3
`define SUPDET_SETTING3_CHECK                                 8'h3
`define SUPDET_SETTING3                                       `SUPDET_SETTING3_WIDTH, `REGA_SUPDET_SETTING3, `SUPDET_SETTING3_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x0     SUPDET_LDO_1P7
//                  LDO 1.7V Threshold
//  3:0  0x3     SUPDET_LDO_1P8
//                  LDO 1.8V Threshold

`define SUPDET_SETTING4_WIDTH                                 8
`define REGA_SUPDET_SETTING4                                  13'h1468
`define SUPDET_SETTING4_DEFAULT                               8'h3a
`define SUPDET_SETTING4_CHECK                                 8'h3a
`define SUPDET_SETTING4                                       `SUPDET_SETTING4_WIDTH, `REGA_SUPDET_SETTING4, `SUPDET_SETTING4_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     SUPDET_EN_EFUSE_REG
//                  SUPDET_EN_EFUSE_REG
//    6  0x0     CLAMPREF_SUPDET_CLK
//                  clampref and supdet clock always on
//  5:4  0x3     SUPDET_FILT_DLY
//                  00: 200us
//                  01: 400us
//                  10: 600us
//                  11: 800us
//  3:0  0xa     SUPDET_LDO_DEFAULT
//                  SUPDET_LDO_DEFAULT

`define SUPDET_CONFIG_WIDTH                                   8
`define REGA_SUPDET_CONFIG                                    13'h1469
`define SUPDET_CONFIG_DEFAULT                                 8'h10
`define SUPDET_CONFIG_CHECK                                   8'h10
`define SUPDET_CONFIG                                         `SUPDET_CONFIG_WIDTH, `REGA_SUPDET_CONFIG, `SUPDET_CONFIG_DEFAULT
//  access       rw
//  atype        S
//    7  0x0     SUPDET_OPT
//                  0: detect 1.8V with Vreg 1.7V
//                  1: detect 2.0v/1.8v
//    6  0x0     SUPDET_BYPASS_REG
//                  Supply detection bypass control.
//    5  0x0     VDET_DEBUG_MODE
//                  Supply detection debug mode.  Control by bit [1:0] in this register.
//  4:2  0x4     SUPDET_TIME_CONFIG
//                  Supply detection update per configuration time = Rest3_Rate * Config Register
//                  Example: Rest3_Rate = 500
//                  000: Disable
//                  001: 500 * 2048 = 0.284 hour
//                  010: 500 * 4096 = 0.568 hour
//                  011: 500 * 6144 = 0.853 hour
//                  100: 500 * 8192 = 1.137 hour
//                  101: 500 * 10240 = 1.422 hour
//                  110: 500 * 12288 = 1.706 hour
//                  111: 500 * 14336 = 1.991 hour
//    1  0x0     VDET_COMPOUT_REG
//                  Supply detection debug mode setting.
//    0  0x0     VDET_DEBUG_STEP
//                  Supply detection debug mode setting.

`define SUPDET_RESULTS_WIDTH                                  8
`define REGA_SUPDET_RESULTS                                   13'h146a
`define SUPDET_RESULTS_DEFAULT                                8'h0
`define SUPDET_RESULTS_CHECK                                  8'h0
`define SUPDET_RESULTS                                        `SUPDET_RESULTS_WIDTH, `REGA_SUPDET_RESULTS, `SUPDET_RESULTS_DEFAULT
//  access       ro
//  atype        A
//    7  0x0     CASE8
//                  from greater 2.1V to Less than 1.8V
//    6  0x0     CASE7
//                  from greater 2.1V to LDO 1.8V Mode
//    5  0x0     CASE6
//                  from greater 2.0V to LDO 1.7V Mode
//    4  0x0     CASE5
//                  from greater 2.0V to LDO 1.8V Mode
//    3  0x0     CASE4
//                  from greater 1.9V to LDO Bypass Mode
//    2  0x0     CASE3
//                  from greater 1.9V to LDO 1.7 Mode
//    1  0x0     CASE2
//                  from greater 1.8V to LDO Bypass Mode
//    0  0x0     CASE1
//                  from greater 1.8V to LDO 1.7 Mode

`define SOSC_CTRL1_WIDTH                                      8
`define REGA_SOSC_CTRL1                                       13'h146b
`define SOSC_CTRL1_DEFAULT                                    8'hb8
`define SOSC_CTRL1_CHECK                                      8'hb8
`define SOSC_CTRL1                                            `SOSC_CTRL1_WIDTH, `REGA_SOSC_CTRL1, `SOSC_CTRL1_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     OSC5K_S_SHUNT_85_NEN
//                  OSC5K_S_SHUNT_NEN
//    6  0x0     OSC5K_S_SHUNT_NEN
//                  OSC5K_S_SHUNT_NEN
//  5:4  0x3     OSC5K_S_SHUNT_C
//                  OSC5K_S_SHUNT_C
//  3:0  0x8     OSC5K_S_FREQ_C_FINE
//                  OSC5K fine trim setting

`define OSC_TUNE_OVERRIDE_EN_WIDTH                            4
`define REGA_OSC_TUNE_OVERRIDE_EN                             13'h146c
`define OSC_TUNE_OVERRIDE_EN_DEFAULT                          4'hf
`define OSC_TUNE_OVERRIDE_EN_CHECK                            4'hf
`define OSC_TUNE_OVERRIDE_EN                                  `OSC_TUNE_OVERRIDE_EN_WIDTH, `REGA_OSC_TUNE_OVERRIDE_EN, `OSC_TUNE_OVERRIDE_EN_DEFAULT
//  access       rw
//  atype        A
//    3  0x1     FAST_TRIM_OVERRIDE_EN
//                  1: OSC_TUNE value to be overriden to OSC when auto TRIM is running
//                  0: OSC_TUNE value following the register setting or EFUSE value
//    2  0x1     MED_TRIM_OVERRIDE_EN
//                  1: OSC_TUNE value to be overriden to OSC when auto TRIM is running
//                  0: OSC_TUNE value following the register setting or EFUSE value
//    1  0x1     SLOW_TRIM_OVERRIDE_EN
//                  1: OSC_TUNE value to be overriden to OSC when auto TRIM is running
//                  0: OSC_TUNE value following the register setting or EFUSE value
//    0  0x1     SLOW_FINE_TRIM_OVERRIDE_EN
//                  1: OSC_TUNE value to be overriden to OSC when auto TRIM is running
//                  0: OSC_TUNE value following the register setting or EFUSE value

`define SPARE_REG_S0_HI_WIDTH                                 8
`define REGA_SPARE_REG_S0_HI                                  13'h146d
`define SPARE_REG_S0_HI_DEFAULT                               8'h0
`define SPARE_REG_S0_HI_CHECK                                 8'h0
`define SPARE_REG_S0_HI                                       `SPARE_REG_S0_HI_WIDTH, `REGA_SPARE_REG_S0_HI, `SPARE_REG_S0_HI_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     SPARE_REG_S0_HI
//                  SPARE_REG_S0_HI

`define SPARE_REG_S0_LO_WIDTH                                 8
`define REGA_SPARE_REG_S0_LO                                  13'h146e
`define SPARE_REG_S0_LO_DEFAULT                               8'h4
`define SPARE_REG_S0_LO_CHECK                                 8'h4
`define SPARE_REG_S0_LO                                       `SPARE_REG_S0_LO_WIDTH, `REGA_SPARE_REG_S0_LO, `SPARE_REG_S0_LO_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x4     SPARE_REG_S0_LO
//                  SPARE_REG_S0_LO

`define CLAMPREF_CTL1_WIDTH                                   8
`define REGA_CLAMPREF_CTL1                                    13'h1470
`define CLAMPREF_CTL1_DEFAULT                                 8'h0
`define CLAMPREF_CTL1_CHECK                                   8'h0
`define CLAMPREF_CTL1                                         `CLAMPREF_CTL1_WIDTH, `REGA_CLAMPREF_CTL1, `CLAMPREF_CTL1_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x0     CLAMPREF_REG
//                  Register Configuration for Clampref Voltage.  Need to enable bit[2]
//    3  0x0     CLAMPREF_TRIG
//                  Manual Mode for CLAMPREF Trigger.
//    2  0x0     CLAMPREF_REG_EN
//                  Enable clampref max voltage to be copied.
//    1  0x0     CLAMP_SEL_REG
//                  Clamp select register.
//    0  0x0     CLAMP_SEL_REG_EN
//                  Enable clmap select.

`define CLAMPREF_CTL2_WIDTH                                   8
`define REGA_CLAMPREF_CTL2                                    13'h1471
`define CLAMPREF_CTL2_DEFAULT                                 8'h5
`define CLAMPREF_CTL2_CHECK                                   8'h5
`define CLAMPREF_CTL2                                         `CLAMPREF_CTL2_WIDTH, `REGA_CLAMPREF_CTL2, `CLAMPREF_CTL2_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     CLR_CLAMPREF_DONE
//                  Clear CLAMPREF DONE flag.  User need to deassert this bit manually after set this bit to high.
//  6:5  0x0     RESERVED
//                  Reserved
//    4  0x0     CLAMPREF_DONE
//                  To Indicate that clampref cal completed
//                  *READ ONLY
//  3:0  0x5     CLAMPREF_TRIM
//                  Clampref tune results
//                  *READ ONLY

`define CLAMPREF_CTL3_WIDTH                                   8
`define REGA_CLAMPREF_CTL3                                    13'h1472
`define CLAMPREF_CTL3_DEFAULT                                 8'h5
`define CLAMPREF_CTL3_CHECK                                   8'h5
`define CLAMPREF_CTL3                                         `CLAMPREF_CTL3_WIDTH, `REGA_CLAMPREF_CTL3, `CLAMPREF_CTL3_DEFAULT
//  access       r
//  atype        A
//  7:4  0x0     RESERVED
//                  Reserved
//  3:0  0x5     CLAMPREF_TRIM_FINAL
//                  Clampref trim voltage final
//                  This is final clampref trim setting based on
//                  EFUSE_MAIN_CTL4[4] - CLAMPREF_TRIM setting from EFUSE
//                  CLAMPREF_REG_EN - CLAMPREF_TRIM setting from clampref_ctl1[7:4] register
//                  Default - CLAMPREF_TRIM setting from clampref tuning.
//                  *READ ONLY

`define PAD_DRV_CTL0_WIDTH                                    8
`define REGA_PAD_DRV_CTL0                                     13'h1473
`define PAD_DRV_CTL0_DEFAULT                                  8'h88
`define PAD_DRV_CTL0_CHECK                                    8'h88
`define PAD_DRV_CTL0                                          `PAD_DRV_CTL0_WIDTH, `REGA_PAD_DRV_CTL0, `PAD_DRV_CTL0_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     PAD_S_NCS_LDRV
//                  NCS low drive
//    6  0x0     PAD_S_NCS_HDRV
//                  NCS high drive
//    5  0x0     PAD_S_MOTION_LDRV
//                  MOTION low drive
//    4  0x0     PAD_S_MOTION_HDRV
//                  MOTION high drive
//    3  0x1     PAD_S_MOSI_LDRV
//                  MOSI low drive
//    2  0x0     PAD_S_MOSI_HDRV
//                  MOSI high drive
//    1  0x0     PAD_S_MISO_LDRV
//                  MISO low drive
//    0  0x0     PAD_S_MISO_HDRV
//                  MISO high drive

`define PAD_DRV_CTL1_WIDTH                                    8
`define REGA_PAD_DRV_CTL1                                     13'h1474
`define PAD_DRV_CTL1_DEFAULT                                  8'h8a
`define PAD_DRV_CTL1_CHECK                                    8'h8a
`define PAD_DRV_CTL1                                          `PAD_DRV_CTL1_WIDTH, `REGA_PAD_DRV_CTL1, `PAD_DRV_CTL1_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     PAD_S_VID6_LDRV
//                  VID6 low drive
//    6  0x0     PAD_S_VID6_HDRV
//                  VID6 high drive
//    5  0x0     PAD_S_XCLK_LDRV
//                  EXTERNAL CLOCK low drive
//    4  0x0     PAD_S_XCLK_HDRV
//                  EXTERNAL CLOCK high drive
//    3  0x1     PAD_S_SCLK_LDRV
//                  SCLK low drive
//    2  0x0     PAD_S_SCLK_HDRV
//                  SCLK high drive
//    1  0x1     PAD_S_VID5_LDRV
//                  VID5 low drive
//    0  0x0     PAD_S_VID5_HDRV
//                  VID5 high drive

`define CONSTGM_WIDTH                                         8
`define REGA_CONSTGM                                          13'h1475
`define CONSTGM_DEFAULT                                       8'h0
`define CONSTGM_CHECK                                         8'h0
`define CONSTGM                                               `CONSTGM_WIDTH, `REGA_CONSTGM, `CONSTGM_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     CONSTGM2_C_ITST_P68U
//                  CONSTGM2_C_ITST_P68U
//    6  0x0     CONSTGM_C_ITST_1U
//                  CONSTGM_C_ITST_1U
//    5  0x0     CONSTGM_S_SEL
//                  CONSTGM_S_SEL
//  4:0  0x0     CONSTGM_S_Y
//                  CONSTGM_S_Y

`define CONSTGM2_WIDTH                                        8
`define REGA_CONSTGM2                                         13'h1476
`define CONSTGM2_DEFAULT                                      8'h0
`define CONSTGM2_CHECK                                        8'h0
`define CONSTGM2                                              `CONSTGM2_WIDTH, `REGA_CONSTGM2, `CONSTGM2_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     CONSTGM2_S_PD
//                  CONSTGM2_S_PD
//    6  0x0     CONSTGM2_S_SEL
//                  CONSTGM2_S_SEL
//  5:0  0x0     CONSTGM2_S_B
//                  CONSTGM2_S_B

`define CONSTGM2_S_Y_WIDTH                                    8
`define REGA_CONSTGM2_S_Y                                     13'h1477
`define CONSTGM2_S_Y_DEFAULT                                  8'h0
`define CONSTGM2_S_Y_CHECK                                    8'h0
`define CONSTGM2_S_Y                                          `CONSTGM2_S_Y_WIDTH, `REGA_CONSTGM2_S_Y, `CONSTGM2_S_Y_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     CONSTGM2_S_Y
//                  CONSTGM2_S_Y

`define ANA_PROD_ID_WIDTH                                     8
`define REGA_ANA_PROD_ID                                      13'h1478
`define ANA_PROD_ID_DEFAULT                                   8'h0
`define ANA_PROD_ID_CHECK                                     8'h0
`define ANA_PROD_ID                                           `ANA_PROD_ID_WIDTH, `REGA_ANA_PROD_ID, `ANA_PROD_ID_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     ANA_PROD_ID
//                  ANA_PROD_ID

`define PAD_CFG_WIDTH                                         8
`define REGA_PAD_CFG                                          13'h1479
`define PAD_CFG_DEFAULT                                       8'h7
`define PAD_CFG_CHECK                                         8'h7
`define PAD_CFG                                               `PAD_CFG_WIDTH, `REGA_PAD_CFG, `PAD_CFG_DEFAULT
//  access       rw
//  atype        A
//  7:3  0x0     RESERVED
//                  Reserved
//  2:0  0x7     PAD_S_SPI_CFG
//                  PAD_S_SPI_CONFIG[2]-Set to use CFG signal of SCLK,MOSI,MOTION
//                  PAD_S_SPI_CONFIG[1]-Set to use CFG signal of NCS,MISO,VID3
//                  PAD_S_SPI_CONFIG[0]-Set to use CFG signal of NRESET,VID6


`define P21_PROD_ID_WIDTH                                     0
`define REGA_P21_PROD_ID                                      13'h1500
`define P21_PROD_ID                                           `P21_PROD_ID_WIDTH, `REGA_P21_PROD_ID, `P21_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P21_REV_ID_WIDTH                                      0
`define REGA_P21_REV_ID                                       13'h1501
`define P21_REV_ID                                            `P21_REV_ID_WIDTH, `REGA_P21_REV_ID, `P21_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P21_MOTION_WIDTH                                      0
`define REGA_P21_MOTION                                       13'h1502
`define P21_MOTION                                            `P21_MOTION_WIDTH, `REGA_P21_MOTION, `P21_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P21_DELTA_X_LO_WIDTH                                  0
`define REGA_P21_DELTA_X_LO                                   13'h1503
`define P21_DELTA_X_LO                                        `P21_DELTA_X_LO_WIDTH, `REGA_P21_DELTA_X_LO, `P21_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P21_DELTA_X_HI_WIDTH                                  0
`define REGA_P21_DELTA_X_HI                                   13'h1504
`define P21_DELTA_X_HI                                        `P21_DELTA_X_HI_WIDTH, `REGA_P21_DELTA_X_HI, `P21_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P21_DELTA_Y_LO_WIDTH                                  0
`define REGA_P21_DELTA_Y_LO                                   13'h1505
`define P21_DELTA_Y_LO                                        `P21_DELTA_Y_LO_WIDTH, `REGA_P21_DELTA_Y_LO, `P21_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P21_DELTA_Y_HI_WIDTH                                  0
`define REGA_P21_DELTA_Y_HI                                   13'h1506
`define P21_DELTA_Y_HI                                        `P21_DELTA_Y_HI_WIDTH, `REGA_P21_DELTA_Y_HI, `P21_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P21_SQUAL_WIDTH                                       0
`define REGA_P21_SQUAL                                        13'h1507
`define P21_SQUAL                                             `P21_SQUAL_WIDTH, `REGA_P21_SQUAL, `P21_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P21_PIX_ACCUM_WIDTH                                   0
`define REGA_P21_PIX_ACCUM                                    13'h1508
`define P21_PIX_ACCUM                                         `P21_PIX_ACCUM_WIDTH, `REGA_P21_PIX_ACCUM, `P21_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P21_PIX_MAX_WIDTH                                     0
`define REGA_P21_PIX_MAX                                      13'h1509
`define P21_PIX_MAX                                           `P21_PIX_MAX_WIDTH, `REGA_P21_PIX_MAX, `P21_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P21_PIX_MIN_WIDTH                                     0
`define REGA_P21_PIX_MIN                                      13'h150a
`define P21_PIX_MIN                                           `P21_PIX_MIN_WIDTH, `REGA_P21_PIX_MIN, `P21_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P21_SHUT_LO_WIDTH                                     0
`define REGA_P21_SHUT_LO                                      13'h150b
`define P21_SHUT_LO                                           `P21_SHUT_LO_WIDTH, `REGA_P21_SHUT_LO, `P21_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P21_SHUT_HI_WIDTH                                     0
`define REGA_P21_SHUT_HI                                      13'h150c
`define P21_SHUT_HI                                           `P21_SHUT_HI_WIDTH, `REGA_P21_SHUT_HI, `P21_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P21_EXT_WAKEUP_WIDTH                                  0
`define REGA_P21_EXT_WAKEUP                                   13'h150d
`define P21_EXT_WAKEUP                                        `P21_EXT_WAKEUP_WIDTH, `REGA_P21_EXT_WAKEUP, `P21_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P21_RESERVED_E_WIDTH                                  0
`define REGA_P21_RESERVED_E                                   13'h150e
`define P21_RESERVED_E                                        `P21_RESERVED_E_WIDTH, `REGA_P21_RESERVED_E, `P21_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P21_SKIP_FRAMES_CNT_LO_WIDTH                          0
`define REGA_P21_SKIP_FRAMES_CNT_LO                           13'h150f
`define P21_SKIP_FRAMES_CNT_LO                                `P21_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P21_SKIP_FRAMES_CNT_LO, `P21_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P21_SKIP_FRAMES_CNT_HI_WIDTH                          0
`define REGA_P21_SKIP_FRAMES_CNT_HI                           13'h1510
`define P21_SKIP_FRAMES_CNT_HI                                `P21_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P21_SKIP_FRAMES_CNT_HI, `P21_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P21_CVFR_PERIOD_LO_WIDTH                              0
`define REGA_P21_CVFR_PERIOD_LO                               13'h1511
`define P21_CVFR_PERIOD_LO                                    `P21_CVFR_PERIOD_LO_WIDTH, `REGA_P21_CVFR_PERIOD_LO, `P21_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P21_CVFR_PERIOD_HI_WIDTH                              0
`define REGA_P21_CVFR_PERIOD_HI                               13'h1512
`define P21_CVFR_PERIOD_HI                                    `P21_CVFR_PERIOD_HI_WIDTH, `REGA_P21_CVFR_PERIOD_HI, `P21_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P21_OBSERVATION_WIDTH                                 0
`define REGA_P21_OBSERVATION                                  13'h1515
`define P21_OBSERVATION                                       `P21_OBSERVATION_WIDTH, `REGA_P21_OBSERVATION, `P21_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P21_BURST_MOTION_WIDTH                                0
`define REGA_P21_BURST_MOTION                                 13'h1516
`define P21_BURST_MOTION                                      `P21_BURST_MOTION_WIDTH, `REGA_P21_BURST_MOTION, `P21_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P21_SQUAL2_WIDTH                                      0
`define REGA_P21_SQUAL2                                       13'h1517
`define P21_SQUAL2                                            `P21_SQUAL2_WIDTH, `REGA_P21_SQUAL2, `P21_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P21_SPI_MODE_WIDTH                                    0
`define REGA_P21_SPI_MODE                                     13'h1518
`define P21_SPI_MODE                                          `P21_SPI_MODE_WIDTH, `REGA_P21_SPI_MODE, `P21_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P21_OSC_TUNE_INSTR_WIDTH                              0
`define REGA_P21_OSC_TUNE_INSTR                               13'h1522
`define P21_OSC_TUNE_INSTR                                    `P21_OSC_TUNE_INSTR_WIDTH, `REGA_P21_OSC_TUNE_INSTR, `P21_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P21_OSC_TUNE_INSTR_SLOW_WIDTH                         0
`define REGA_P21_OSC_TUNE_INSTR_SLOW                          13'h1523
`define P21_OSC_TUNE_INSTR_SLOW                               `P21_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P21_OSC_TUNE_INSTR_SLOW, `P21_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P21_PRBS_MODE_WIDTH                                   0
`define REGA_P21_PRBS_MODE                                    13'h1530
`define P21_PRBS_MODE                                         `P21_PRBS_MODE_WIDTH, `REGA_P21_PRBS_MODE, `P21_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P21_POWERDOWN_WIDTH                                   0
`define REGA_P21_POWERDOWN                                    13'h1532
`define P21_POWERDOWN                                         `P21_POWERDOWN_WIDTH, `REGA_P21_POWERDOWN, `P21_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P21_CRC0_WIDTH                                        0
`define REGA_P21_CRC0                                         13'h1533
`define P21_CRC0                                              `P21_CRC0_WIDTH, `REGA_P21_CRC0, `P21_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P21_CRC1_WIDTH                                        0
`define REGA_P21_CRC1                                         13'h1534
`define P21_CRC1                                              `P21_CRC1_WIDTH, `REGA_P21_CRC1, `P21_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P21_CRC2_WIDTH                                        0
`define REGA_P21_CRC2                                         13'h1535
`define P21_CRC2                                              `P21_CRC2_WIDTH, `REGA_P21_CRC2, `P21_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P21_CRC3_WIDTH                                        0
`define REGA_P21_CRC3                                         13'h1536
`define P21_CRC3                                              `P21_CRC3_WIDTH, `REGA_P21_CRC3, `P21_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P21_IOSTATUS_WIDTH                                    0
`define REGA_P21_IOSTATUS                                     13'h1537
`define P21_IOSTATUS                                          `P21_IOSTATUS_WIDTH, `REGA_P21_IOSTATUS, `P21_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P21_TAP_KEY_WO_WIDTH                                  0
`define REGA_P21_TAP_KEY_WO                                   13'h1538
`define P21_TAP_KEY_WO                                        `P21_TAP_KEY_WO_WIDTH, `REGA_P21_TAP_KEY_WO, `P21_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P21_TAP_KEY_WIDTH                                     0
`define REGA_P21_TAP_KEY                                      13'h1539
`define P21_TAP_KEY                                           `P21_TAP_KEY_WIDTH, `REGA_P21_TAP_KEY, `P21_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P21_POWER_UP_RESET_WIDTH                              0
`define REGA_P21_POWER_UP_RESET                               13'h153a
`define P21_POWER_UP_RESET                                    `P21_POWER_UP_RESET_WIDTH, `REGA_P21_POWER_UP_RESET, `P21_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P21_SHUTDOWN_WIDTH                                    0
`define REGA_P21_SHUTDOWN                                     13'h153b
`define P21_SHUTDOWN                                          `P21_SHUTDOWN_WIDTH, `REGA_P21_SHUTDOWN, `P21_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P21_SCAN_MODE_WIDTH                                   0
`define REGA_P21_SCAN_MODE                                    13'h153c
`define P21_SCAN_MODE                                         `P21_SCAN_MODE_WIDTH, `REGA_P21_SCAN_MODE, `P21_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P21_SPI_PAGE_WIDTH                                    0
`define REGA_P21_SPI_PAGE                                     13'h157f
`define P21_SPI_PAGE                                          `P21_SPI_PAGE_WIDTH, `REGA_P21_SPI_PAGE, `P21_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define PIX_CTL7_WIDTH                                        8
`define REGA_PIX_CTL7                                         13'h1540
`define PIX_CTL7_DEFAULT                                      8'hb1
`define PIX_CTL7_CHECK                                        8'hb1
`define PIX_CTL7                                              `PIX_CTL7_WIDTH, `REGA_PIX_CTL7, `PIX_CTL7_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     PIX_S_OUT_BST_SEL_RST
//                  PIX_S_OUT_BST_SEL_RST
//    6  0x0     PIX_S_OUT_BST_SEL_RST_2
//                  PIX_S_OUT_BST_SEL_RST_2
//    5  0x1     PIX_S_OUT_BST_SEL_SAMP
//                  PIX_S_OUT_BST_SEL_SAMP
//    4  0x1     PIX_S_OUT_BST_SEL_SAMP_2
//                  PIX_S_OUT_BST_SEL_SAMP_2
//    3  0x0     PIX_D_ALL_DC0
//                  PIX_D_ALL_DC0
//    2  0x0     PIX_D_ALL_DC1
//                  PIX_D_ALL_DC1
//    1  0x0     PIX_D_PD_OPT
//                  PIX_D_PD_OPT
//                  0: PIX_D_PD_OPT closed by AGC_DONE
//                  1: PIX_D_PD_OPT closed by XFER_DONE
//    0  0x1     PIX_S_SHRT_OUT_OUTD_RST
//                  PIX_S_SHRT_OUT_OUTD_RST

`define PIX_CTL8_WIDTH                                        8
`define REGA_PIX_CTL8                                         13'h1541
`define PIX_CTL8_DEFAULT                                      8'ha2
`define PIX_CTL8_CHECK                                        8'ha2
`define PIX_CTL8                                              `PIX_CTL8_WIDTH, `REGA_PIX_CTL8, `PIX_CTL8_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     IREF_OPT
//                  0: IREF_D_PD to assert during XFER_DONE in rest mode
//                  1: IREF_D_PD to follow LDOCL_D_PD
//  6:4  0x2     PIX_S_SELPSM_REST
//                  PIX_S_SELPSM_REST
//    3  0x0     FAST_POLL_REST_DC
//                  User to set this bit in fast_polling mode to DC a few analog PD during rest
//                  DC0: BG_D_PD, LDO_D_PD, LDOCL_D_PD, LDO_D_VREF_SEL, AVDD_DVDD_SHORT_D_EN
//                  DC1: CLAMP_D_PD, VDET_D_CLAMPREF_PD
//  2:0  0x2     PIX_S_SELPSM_RUN
//                  PIX_S_SELPSM_RUN

`define PIX_CTL9_WIDTH                                        8
`define REGA_PIX_CTL9                                         13'h1542
`define PIX_CTL9_DEFAULT                                      8'h2
`define PIX_CTL9_CHECK                                        8'h2
`define PIX_CTL9                                              `PIX_CTL9_WIDTH, `REGA_PIX_CTL9, `PIX_CTL9_DEFAULT
//  access       rw
//  atype        A
//  7:6  0x0     SPARE
//                  Spare bits
//  5:0  0x2     PIX_S_COL_START_A
//                  PIX_S_COL_START_A

`define PIX_CTL10_WIDTH                                       8
`define REGA_PIX_CTL10                                        13'h1543
`define PIX_CTL10_DEFAULT                                     8'h2
`define PIX_CTL10_CHECK                                       8'h2
`define PIX_CTL10                                             `PIX_CTL10_WIDTH, `REGA_PIX_CTL10, `PIX_CTL10_DEFAULT
//  access       rw
//  atype        A
//  7:6  0x0     SPARE
//                  Spare bits
//  5:0  0x2     PIX_S_COL_START_B
//                  PIX_S_COL_START_B

`define PIX_CTL11_WIDTH                                       8
`define REGA_PIX_CTL11                                        13'h1544
`define PIX_CTL11_DEFAULT                                     8'h1
`define PIX_CTL11_CHECK                                       8'h1
`define PIX_CTL11                                             `PIX_CTL11_WIDTH, `REGA_PIX_CTL11, `PIX_CTL11_DEFAULT
//  access       rw
//  atype        A
//  7:6  0x0     SPARE
//                  Spare bits
//  5:0  0x1     PIX_S_ROW_START
//                  PIX_S_ROW_START

`define ANA_CTL1_WIDTH                                        8
`define REGA_ANA_CTL1                                         13'h1545
`define ANA_CTL1_DEFAULT                                      8'h64
`define ANA_CTL1_CHECK                                        8'h64
`define ANA_CTL1                                              `ANA_CTL1_WIDTH, `REGA_ANA_CTL1, `ANA_CTL1_DEFAULT
//  access       rw
//  atype        A
//  7:5  0x3     REFGEN_S_IB_CFG
//                  REFGEN_S_IB_CFG
//    4  0x0     FULL_ARRAY
//                  0 = 36x37 Run / 22x23 Rest
//                  1 = 38x37 Run / 24x23 Rest
//                  Changed COL_START_ADDR before changing this bit
//  3:0  0x4     BS_RST_PULSE
//                  BS_RST_PULSE

`define ANA_CTL2_WIDTH                                        8
`define REGA_ANA_CTL2                                         13'h1546
`define ANA_CTL2_DEFAULT                                      8'h27
`define ANA_CTL2_CHECK                                        8'h27
`define ANA_CTL2                                              `ANA_CTL2_WIDTH, `REGA_ANA_CTL2, `ANA_CTL2_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x2     ADC_START_DELAY
//                  Register to allign data with adc valid in ANA_CTL
//  3:0  0x7     DALL_CTRL
//                  DALL_CTRL

`define AGC_OFF_ALGO2_WIDTH                                   8
`define REGA_AGC_OFF_ALGO2                                    13'h1547
`define AGC_OFF_ALGO2_DEFAULT                                 8'h88
`define AGC_OFF_ALGO2_CHECK                                   8'h88
`define AGC_OFF_ALGO2                                         `AGC_OFF_ALGO2_WIDTH, `REGA_AGC_OFF_ALGO2, `AGC_OFF_ALGO2_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x88    AGC_OFF_ALGO2
//                  AGC_OFF_ALGO2 = default 8'h88 = 136 clks = 2us (68MHz clk)

`define CONTBOOST_OFF_WIDTH                                   8
`define REGA_CONTBOOST_OFF                                    13'h1548
`define CONTBOOST_OFF_DEFAULT                                 8'h0
`define CONTBOOST_OFF_CHECK                                   8'h0
`define CONTBOOST_OFF                                         `CONTBOOST_OFF_WIDTH, `REGA_CONTBOOST_OFF, `CONTBOOST_OFF_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     CONTBOOST_OFF
//                  CONTBOOST_OFF

`define CONTBOOST_ON_WIDTH                                    8
`define REGA_CONTBOOST_ON                                     13'h1549
`define CONTBOOST_ON_DEFAULT                                  8'h0
`define CONTBOOST_ON_CHECK                                    8'h0
`define CONTBOOST_ON                                          `CONTBOOST_ON_WIDTH, `REGA_CONTBOOST_ON, `CONTBOOST_ON_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     CONTBOOST_ON
//                  CONTBOOST_ON

`define PIX_D_OFF_WIDTH                                       8
`define REGA_PIX_D_OFF                                        13'h154a
`define PIX_D_OFF_DEFAULT                                     8'h0
`define PIX_D_OFF_CHECK                                       8'h0
`define PIX_D_OFF                                             `PIX_D_OFF_WIDTH, `REGA_PIX_D_OFF, `PIX_D_OFF_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     PIX_D_OFF
//                  PIX_D_OFF

`define PIX_D_ON_WIDTH                                        8
`define REGA_PIX_D_ON                                         13'h154b
`define PIX_D_ON_DEFAULT                                      8'h0
`define PIX_D_ON_CHECK                                        8'h0
`define PIX_D_ON                                              `PIX_D_ON_WIDTH, `REGA_PIX_D_ON, `PIX_D_ON_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     PIX_D_ON
//                  PIX_D_ON

`define PREFLASH_REST_WIDTH                                   8
`define REGA_PREFLASH_REST                                    13'h154c
`define PREFLASH_REST_DEFAULT                                 8'h14
`define PREFLASH_REST_CHECK                                   8'h14
`define PREFLASH_REST                                         `PREFLASH_REST_WIDTH, `REGA_PREFLASH_REST, `PREFLASH_REST_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x14    PREFLASH_REST
//                  PREFLASH_REST enabled by SETTLE_TIME2_RUN[7]
//                  The value set for this register must never exceed PIX_CTL4 (0x1461) else LED will never be turned on.

`define REF_GEN_D_PD_ON_WIDTH                                 8
`define REGA_REF_GEN_D_PD_ON                                  13'h154d
`define REF_GEN_D_PD_ON_DEFAULT                               8'h1e
`define REF_GEN_D_PD_ON_CHECK                                 8'h1e
`define REF_GEN_D_PD_ON                                       `REF_GEN_D_PD_ON_WIDTH, `REGA_REF_GEN_D_PD_ON, `REF_GEN_D_PD_ON_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x1e    REF_GEN_D_PD_ON
//                  REF_GEN_D_PD_ON

`define SETTLE_TIME2_REST_WIDTH                               8
`define REGA_SETTLE_TIME2_REST                                13'h154e
`define SETTLE_TIME2_REST_DEFAULT                             8'h1
`define SETTLE_TIME2_REST_CHECK                               8'h1
`define SETTLE_TIME2_REST                                     `SETTLE_TIME2_REST_WIDTH, `REGA_SETTLE_TIME2_REST, `SETTLE_TIME2_REST_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x1     SETTLE_TIME2_REST
//                  SETTLE_TIME2_REST
//                  PIX_D_PD to BS_RST wait time in REST with each value defined incremented by 0.5us
//                  Enabled by SETTLE_TIME2_RUN[6]

`define SETTLE_TIME2_RUN_WIDTH                                8
`define REGA_SETTLE_TIME2_RUN                                 13'h154f
`define SETTLE_TIME2_RUN_DEFAULT                              8'h81
`define SETTLE_TIME2_RUN_CHECK                                8'h81
`define SETTLE_TIME2_RUN                                      `SETTLE_TIME2_RUN_WIDTH, `REGA_SETTLE_TIME2_RUN, `SETTLE_TIME2_RUN_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x81    SETTLE_TIME2_RUN
//                  SETTLE_TIME2_RUN
//                  SETTLE_TIME2_RUN[7]
//                  0 = Disable PREFLASH_REST value to take effect during rest in ANA_CTL
//                  1 = Enable PREFLASH_REST value to take effect during rest in ANA_CTL
//                  SETTLE_TIME2_RUN[6]
//                  0 = Disable PIX_DS_PD to BS_RST wait time defined in SETTLE_TIME2_REST
//                  1 = Enable PIX_DS_PD to BS_RST wait time defined in SETTLE_TIME2_REST
//                  SETTLE_TIME2_RUN[5:0]
//                  PIX_DS_PD to BS_RST wait time for RUN frame.  Each incrment increase by 0.5us

`define DC_CTL4_WIDTH                                         8
`define REGA_DC_CTL4                                          13'h1550
`define DC_CTL4_DEFAULT                                       8'h0
`define DC_CTL4_CHECK                                         8'h0
`define DC_CTL4                                               `DC_CTL4_WIDTH, `REGA_DC_CTL4, `DC_CTL4_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     ADC2_DPS_PD_DC1
//                  ADC2_DPS_PD_DC1
//    6  0x0     ADC2_DPS_PD_DC0
//                  ADC2_DPS_PD_DC0
//    5  0x0     ADC_DPS_PD_DC1
//                  ADC_DPS_PD_DC1
//    4  0x0     ADC_DPS_PD_DC0
//                  ADC_DPS_PD_DC0
//    3  0x0     PIXSUPPLY_DPS_PD_DC1
//                  PIXSUPPLY_DPS_PD_DC1
//    2  0x0     PIXSUPPLY_DPS_PD_DC0
//                  PIXSUPPLY_DPS_PD_DC0
//    1  0x0     PIX_DPS_PD_DC1
//                  PIX_DPS_PD_DC1
//    0  0x0     PIX_DPS_PD_DC0
//                  PIX_DPS_PD_DC0

`define DC_CTL5_WIDTH                                         8
`define REGA_DC_CTL5                                          13'h1551
`define DC_CTL5_DEFAULT                                       8'h0
`define DC_CTL5_CHECK                                         8'h0
`define DC_CTL5                                               `DC_CTL5_WIDTH, `REGA_DC_CTL5, `DC_CTL5_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     TA2_DPS_PD_DC1
//                  TA2_DPS_PD_DC1
//    6  0x0     TA2_DPS_PD_DC0
//                  TA2_DPS_PD_DC0
//    5  0x0     TA_DPS_PD_DC1
//                  TA_DPS_PD_DC1
//    4  0x0     TA_DPS_PD_DC0
//                  TA_DPS_PD_DC0
//    3  0x0     ANACLK_DS_CLK_DC1
//                  ANACLK_DS_CLK_DC1
//    2  0x0     ANACLK_DS_CLK_DC0
//                  ANACLK_DS_CLK_DC0
//    1  0x0     ANACLK_DS_PD_ADC_CLK_DC1
//                  ANACLK_DS_PD_ADC_CLK_DC1
//    0  0x0     ANACLK_DS_PD_ADC_CLK_DC0
//                  ANACLK_DS_PD_ADC_CLK_DC0

`define DC_CTL1_WIDTH                                         8
`define REGA_DC_CTL1                                          13'h1552
`define DC_CTL1_DEFAULT                                       8'h0
`define DC_CTL1_CHECK                                         8'h0
`define DC_CTL1                                               `DC_CTL1_WIDTH, `REGA_DC_CTL1, `DC_CTL1_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     REFGEN_DPS_PD_DC1
//                  Setting the REFGEN_DPS_PD_DC1 to always enable REFGEN_DPS_PD_DC
//                  0: Disable and allows pulsing mode if available
//                  1: Always set to assert if REFGEN_DPS_PD_DC0 is not enabled
//    6  0x0     REFGEN_DPS_PD_DC0
//                  Setting the REFGEN_DPS_PD_DC0 to always disable REFGEN_DPS_PD_DC
//                  0: Disabled
//                  1: Always set to de-assert.  This bit has priority over REFGEN_DPS_PD_DC1
//    5  0x0     REFGEN2_DPS_PD_DC1
//                  Setting the REFGEN2_DPS_PD_DC1 to always enable REFGEN2_DPS_PD_DC
//                  0: Disable and allows pulsing mode if available
//                  1: Always set to assert if REFGEN2_DPS_PD_DC0 is not enabled
//    4  0x0     REFGEN2_DPS_PD_DC0
//                  Setting the REFGEN2_DPS_PD_DC0 to always disable REFGEN2_DPS_PD_DC
//                  0: Disabled
//                  1: Always set to de-assert.  This bit has priority over REFGEN2_DPS_PD_DC1
//    3  0x0     BG_D_PD_DC0
//                  BG_D_PD_DC0
//    2  0x0     BG_D_PD_DC1
//                  BG_D_PD_DC1
//    1  0x0     BG_S_PD_BIAS_DC0
//                  BG_S_PD_BIAS_DC0
//    0  0x0     BG_S_PD_BIAS_DC1
//                  BG_S_PD_BIAS_DC1

`define DC_CTL2_WIDTH                                         8
`define REGA_DC_CTL2                                          13'h1553
`define DC_CTL2_DEFAULT                                       8'h0
`define DC_CTL2_CHECK                                         8'h0
`define DC_CTL2                                               `DC_CTL2_WIDTH, `REGA_DC_CTL2, `DC_CTL2_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     LDO_D_PD_DC0
//                  LDO_D_PD_DC0
//    6  0x0     LDO_D_PD_DC1
//                  LDO_D_PD_DC1
//    5  0x0     LDOCL_D_PD_DC0
//                  LDOCL_D_PD_DC0
//    4  0x0     LDOCL_D_PD_DC1
//                  LDOCL_D_PD_DC1
//    3  0x0     CLAMP_D_PD_DC0
//                  CLAMP_D_PD_DC0
//    2  0x0     CLAMP_D_PD_DC1
//                  CLAMP_D_PD_DC1
//    1  0x0     IREF_D_PD_DC0
//                  IREF_D_PD_DC0
//    0  0x0     IREF_D_PD_DC1
//                  IREF_D_PD_DC1

`define DC_CTL3_WIDTH                                         8
`define REGA_DC_CTL3                                          13'h1554
`define DC_CTL3_DEFAULT                                       8'h0
`define DC_CTL3_CHECK                                         8'h0
`define DC_CTL3                                               `DC_CTL3_WIDTH, `REGA_DC_CTL3, `DC_CTL3_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     VDET_D_CLAMPREF_PD_DC0
//                  VDET_D_CLAMPREF_PD_DC0
//    6  0x0     VDET_D_CLAMPREF_PD_DC1
//                  VDET_D_CLAMPREF_PD_DC1
//    5  0x0     LDO_D_VREF_SEL_DC0
//                  LDO_D_VREF_SEL_DC0
//    4  0x0     LDO_D_VREF_SEL_DC1
//                  LDO_D_VREF_SEL_DC1
//    3  0x0     CLAMP_D_VREF_SEL_DC0
//                  CLAMP_D_VREF_SEL_DC0
//    2  0x0     CLAMP_D_VREF_SEL_DC1
//                  CLAMP_D_VREF_SEL_DC1
//    1  0x0     AVDD_DVDD_SHORT_D_EN_DC0
//                  AVDD_DVDD_SHORT_D_EN_DC0
//    0  0x0     AVDD_DVDD_SHORT_D_EN_DC1
//                  AVDD_DVDD_SHORT_D_EN_DC1

`define ANA_CH_OFFSET_WIDTH                                   8
`define REGA_ANA_CH_OFFSET                                    13'h1555
`define ANA_CH_OFFSET_DEFAULT                                 8'h0
`define ANA_CH_OFFSET_CHECK                                   8'h0
`define ANA_CH_OFFSET                                         `ANA_CH_OFFSET_WIDTH, `REGA_ANA_CH_OFFSET, `ANA_CH_OFFSET_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     SPARE
//                  Spare bits
//  6:4  0x0     TA2_S_CH_OFF_TRIM
//                  TA_S_CH_OFF_TRIM
//                  Analog channel offset compensation value for CH1
//    3  0x0     RESERVED
//                  Reserved
//  2:0  0x0     TA_S_CH_OFF_TRIM
//                  TA2_S_CH_OFF_TRIM
//                  Analog channel offset compensation value for CH0

`define PREFLASH_REST_BIGSHUT_WIDTH                           8
`define REGA_PREFLASH_REST_BIGSHUT                            13'h1556
`define PREFLASH_REST_BIGSHUT_DEFAULT                         8'h1e
`define PREFLASH_REST_BIGSHUT_CHECK                           8'h1e
`define PREFLASH_REST_BIGSHUT                                 `PREFLASH_REST_BIGSHUT_WIDTH, `REGA_PREFLASH_REST_BIGSHUT, `PREFLASH_REST_BIGSHUT_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x1e    PREFLASH_REST_BIGSHUT
//                  PREFLASH_REST_BIGSHUT enabled by SETTLE_TIME2_RUN[7]
//                  Will be chosen if Shutter larger than MSQR_BIGSHUT_TH * 32 prior to entering Rest mode
//                  The value set for this register must never exceed PIX_CTL4 (0x1461) else LED will never be turned on.

`define VCSEL_CTL_WIDTH                                       8
`define REGA_VCSEL_CTL                                        13'h1557
`define VCSEL_CTL_DEFAULT                                     8'h0
`define VCSEL_CTL_CHECK                                       8'h0
`define VCSEL_CTL                                             `VCSEL_CTL_WIDTH, `REGA_VCSEL_CTL, `VCSEL_CTL_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     COMPL_RBIN_SEL
//                  COMPL_RBIN_SEL
//    6  0x0     NLED_LASER
//                  to tell padmux if LSR or LED pad is being applied
//  5:0  0x0     Reserved
//                  Reserved

`define LSR_CONTROL_WIDTH                                     8
`define REGA_LSR_CONTROL                                      13'h1558
`define LSR_CONTROL_DEFAULT                                   8'h5
`define LSR_CONTROL_CHECK                                     8'h5
`define LSR_CONTROL                                           `LSR_CONTROL_WIDTH, `REGA_LSR_CONTROL, `LSR_CONTROL_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     RBIN_SEL
//                  RBIN_SEL
//    6  0x0     FD_RUN_OVERRIDE
//                  To perform FD every frame instead on skip frame basis when set
//    5  0x0     LSR_S_CMP_OUT
//                  LSR_S_CMP_OUT
//    4  0x0     LSR_S_PWR_SAVING
//                  LSR_S_PWR_SAVING
//    3  0x0     FD_DIS
//                  Fault Detection logic disable
//                  0x0: Fault Detection enabled
//                  0x1: Fault Detection disabled
//    2  0x1     PASST_SLCT
//                  PASST SLCT
//                  0x0: Ext PMOS
//                  0x1: Int PMOS
//    1  0x0     LSR_TIMING
//                  LSR_TIMING
//                  0x0: New timing
//                  0x1: 0.13 timing
//    0  0x1     LASER_NEN_DIS
//                  LASER_NEN disable

`define LPCFG0_WIDTH                                          8
`define REGA_LPCFG0                                           13'h1559
`define LPCFG0_DEFAULT                                        8'h0
`define LPCFG0_CHECK                                          8'h0
`define LPCFG0                                                `LPCFG0_WIDTH, `REGA_LPCFG0, `LPCFG0_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     LSR_S_ICTRL
//                  Laser power config

`define LPCFG1_WIDTH                                          8
`define REGA_LPCFG1                                           13'h155a
`define LPCFG1_DEFAULT                                        8'h0
`define LPCFG1_CHECK                                          8'h0
`define LPCFG1                                                `LPCFG1_WIDTH, `REGA_LPCFG1, `LPCFG1_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     LSR_S_ICTRL_B
//                  Laser power config complement

`define LSR_DAC_WIDTH                                         8
`define REGA_LSR_DAC                                          13'h155b
`define LSR_DAC_DEFAULT                                       8'h0
`define LSR_DAC_CHECK                                         8'h0
`define LSR_DAC                                               `LSR_DAC_WIDTH, `REGA_LSR_DAC, `LSR_DAC_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     LSR_DAC
//                  Laser power DAC from analog

`define FD_STATUS_WIDTH                                       8
`define REGA_FD_STATUS                                        13'h155c
`define FD_STATUS_DEFAULT                                     8'h0
`define FD_STATUS_CHECK                                       8'h0
`define FD_STATUS                                             `FD_STATUS_WIDTH, `REGA_FD_STATUS, `FD_STATUS_DEFAULT
//  access       ro
//  atype        A
//    7  0x0     FAIL_FLAG
//                  Fail flag
//                  0x1: There is a fault somewhere, see bits[5:0]
//    6  0x0     LPINVALID
//                  LP invalid
//                  0x1: Laser power config is invalid (DAC complementary check)
//    5  0x0     OVS_FAULT
//                  OVS fault
//    4  0x0     LSRON_FAULT
//                  LSRON fault
//    3  0x0     COMP2_CHECK_FAULT
//                  Comp2 check fault
//    2  0x0     PASST_FAULT
//                  PASST fault
//    1  0x0     XYLASER_FAULT
//                  XYLASER fault
//    0  0x0     NA
//                  NA

`define FD_CTL_WIDTH                                          8
`define REGA_FD_CTL                                           13'h155d
`define FD_CTL_DEFAULT                                        8'h0
`define FD_CTL_CHECK                                          8'h0
`define FD_CTL                                                `FD_CTL_WIDTH, `REGA_FD_CTL, `FD_CTL_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     XYLASER_CONT_ON
//                  XYLASER cont on
//    6  0x0     LASER_NEN_CONT_ON
//                  LASER_NEN cont on
//    5  0x0     BYPASS_FD
//                  Bypass FD
//    4  0x0     FD_DEBUG_MODE
//                  FD debug mode
//    3  0x0     CLR_LASER_FAULT
//                  Clear laser fault register
//    2  0x0     FD_EN_TRIG
//                  FD enable/trigger FD
//    1  0x0     PRECHARGE_TEST
//                  Precharge test
//    0  0x0     PULLUP_TEST
//                  Pullup test

`define FD_COMPL_WIDTH                                        8
`define REGA_FD_COMPL                                         13'h155e
`define FD_COMPL_DEFAULT                                      8'hec
`define FD_COMPL_CHECK                                        8'hec
`define FD_COMPL                                              `FD_COMPL_WIDTH, `REGA_FD_COMPL, `FD_COMPL_DEFAULT
//  access       rw
//  atype        A
//    7  0x1     COMPL_XYLASER_CONT_ON
//                  Compl XYLASER cont on
//    6  0x1     COMPL_LASER_NEN_CONT_ON
//                  Compl LASER_NEN cont on
//    5  0x1     COMPL_BYPASS_FD
//                  Compl bypass FD
//    4  0x0     PU_OVP
//                  PU_OVP
//    3  0x1     COMPL_CLR_LASER_FAULT
//                  Compl clear laser fault register
//    2  0x1     Power save enable
//                  Power save enable
//    1  0x0     FD_REQ
//                  FD_REQ
//    0  0x0     RBIN_VALUE
//                  RBIN value during LASER_ON fault test

`define FD_LSR_POWER_WIDTH                                    8
`define REGA_FD_LSR_POWER                                     13'h155f
`define FD_LSR_POWER_DEFAULT                                  8'h0
`define FD_LSR_POWER_CHECK                                    8'h0
`define FD_LSR_POWER                                          `FD_LSR_POWER_WIDTH, `REGA_FD_LSR_POWER, `FD_LSR_POWER_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     PU_FD_A
//                  PU_FD_A
//    6  0x0     PD_FD_A
//                  PD_FD_A
//    5  0x0     NA
//                  NA
//    4  0x0     NA
//                  NA
//    3  0x0     PU_LSR_A
//                  PU_LSR_A
//    2  0x0     PD_LSR_A
//                  PD_LSR_A
//    1  0x0     NA
//                  NA
//    0  0x0     PIX_DPS_PD_1ST_REST_SWITCH
//                  Switch to enable PIX_DPS_PD to follow PIXSUPPLY_DPS_PD waveform for the last 20k frame powerdown and first rest frame power up
//                  For the last 20k run frame, PIX_DPS_PD will be DC from previous frame as it is in overlapping frame mode.
//                  For the first rest frame upon entering rest from overlapping frames, the power up follows PIXSUPPLY_DPS_PD
//                  while powerdown will be stagger behaving like normal rest frame PIX_DPS_PD
//                  This is needed to ensure that first rest frame has a pulsing PIX_DPS_PD.
//                  When FPC_OVERLAP is not asserted in transition(normal run going into rest), this effect will not take place.
//                  0 = Enabld (default)
//                  1 = Disabled

`define DC_CTL6_WIDTH                                         8
`define REGA_DC_CTL6                                          13'h1560
`define DC_CTL6_DEFAULT                                       8'h10
`define DC_CTL6_CHECK                                         8'h10
`define DC_CTL6                                               `DC_CTL6_WIDTH, `REGA_DC_CTL6, `DC_CTL6_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     ANACLK_DS_PD_TA_CLK_DC1
//                  ANACLK_DS_PD_TA_CLK_DC1
//    6  0x0     ANACLK_DS_PD_TA_CLK_DC0
//                  ANACLK_DS_PD_TA_CLK_DC0
//    5  0x0     PAD_S_LED_IE
//                  PAD_S_LED_IE
//    4  0x1     BG_S_PD_LSR
//                  BG_S_PD_LSR
//  3:0  0x0     RESERVED
//                  RESERVED

`define LSRON_LPCFG_WIDTH                                     8
`define REGA_LSRON_LPCFG                                      13'h1561
`define LSRON_LPCFG_DEFAULT                                   8'h20
`define LSRON_LPCFG_CHECK                                     8'h20
`define LSRON_LPCFG                                           `LSRON_LPCFG_WIDTH, `REGA_LSRON_LPCFG, `LSRON_LPCFG_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x20    LSRON_LPCFG
//                  Laser power config value during LASER_ON fault test

`define LSR_DC_MODE0_WIDTH                                    8
`define REGA_LSR_DC_MODE0                                     13'h1562
`define LSR_DC_MODE0_DEFAULT                                  8'h0
`define LSR_DC_MODE0_CHECK                                    8'h0
`define LSR_DC_MODE0                                          `LSR_DC_MODE0_WIDTH, `REGA_LSR_DC_MODE0, `LSR_DC_MODE0_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     LSR_DPS_NXYLASER
//                  0x0: Pulsing mode
//                  0x1: DC mode
//    6  0x0     LSR_DS_PD_PU
//                  0x0: Pulsing mode
//                  0x1: DC mode
//    5  0x0     LSR_DPS_XYLS_NEN
//                  0x0: Pulsing mode
//                  0x1: DC mode
//    4  0x0     LSR_DPS_NPULL_UP
//                  0x0: Pulsing mode
//                  0x1: DC mode
//    3  0x0     LSR_DPS_PULLUP
//                  0x0: Pulsing mode
//                  0x1: DC mode
//    2  0x0     LSR_DPS_PRECHARGE_START
//                  0x0: Pulsing mode
//                  0x1: DC mode
//    1  0x0     LSR_DS_PULLDOWN
//                  0x0: Pulsing mode
//                  0x1: DC mode
//    0  0x0     PAD_DPS_IN_LSR_NEN
//                  0x0: Pulsing mode
//                  0x1: DC mode

`define LSR_DC_MODE1_WIDTH                                    8
`define REGA_LSR_DC_MODE1                                     13'h1563
`define LSR_DC_MODE1_DEFAULT                                  8'h0
`define LSR_DC_MODE1_CHECK                                    8'h0
`define LSR_DC_MODE1                                          `LSR_DC_MODE1_WIDTH, `REGA_LSR_DC_MODE1, `LSR_DC_MODE1_DEFAULT
//  access       rw
//  atype        A
//  7:6  0x0     GLOBAL_DC_MODE
//                  Write 0xC000 to LSR_DC_MODE1,LSR_DC_MODE0 and applying the TAP_KEY_LT to apply global dc mode
//    5  0x0     LSR_S_ICTRL
//                  0x0: Pulsing mode
//                  0x1: DC mode
//    4  0x0     LSR_S_RBIN_SEL
//                  0x0: Pulsing mode
//                  0x1: DC mode
//    3  0x0     PAD_S_XYLASER_IE
//                  0x0: Pulsing mode
//                  0x1: DC mode
//    2  0x0     LSR_DPS_OVRSTRESS_CHK
//                  0x0: Pulsing mode
//                  0x1: DC mode
//    1  0x0     LSR_DPS_PD_LSR
//                  0x0: Pulsing mode
//                  0x1: DC mode
//    0  0x0     LSR_DS_PD_FD
//                  0x0: Pulsing mode
//                  0x1: DC mode

`define LSR_DC_VAL0_WIDTH                                     8
`define REGA_LSR_DC_VAL0                                      13'h1564
`define LSR_DC_VAL0_DEFAULT                                   8'h50
`define LSR_DC_VAL0_CHECK                                     8'h50
`define LSR_DC_VAL0                                           `LSR_DC_VAL0_WIDTH, `REGA_LSR_DC_VAL0, `LSR_DC_VAL0_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     LSR_DPS_NXYLASER
//                  0x1: DC high
//                  0x0: DC low
//    6  0x1     LSR_DS_PD_PU
//                  0x1: DC high
//                  0x0: DC low
//    5  0x0     LSR_DPS_XYLS_NEN
//                  0x1: DC high
//                  0x0: DC low
//    4  0x1     LSR_DPS_NPULL_UP
//                  0x1: DC high
//                  0x0: DC low
//    3  0x0     LSR_DPS_PULLUP
//                  0x1: DC high
//                  0x0: DC low
//    2  0x0     LSR_DPS_PRECHARGE_START
//                  0x1: DC high
//                  0x0: DC low
//    1  0x0     LSR_DS_PULLDOWN
//                  0x1: DC high
//                  0x0: DC low
//    0  0x0     PAD_DPS_IN_LSR_NEN
//                  0x1: DC high
//                  0x0: DC low

`define LSR_DC_VAL1_WIDTH                                     8
`define REGA_LSR_DC_VAL1                                      13'h1565
`define LSR_DC_VAL1_DEFAULT                                   8'h1
`define LSR_DC_VAL1_CHECK                                     8'h1
`define LSR_DC_VAL1                                           `LSR_DC_VAL1_WIDTH, `REGA_LSR_DC_VAL1, `LSR_DC_VAL1_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x0     SPARE
//                  Spare bits
//    3  0x0     PAD_S_XYLASER_IE
//                  0x1: DC high
//                  0x0: DC low
//    2  0x0     LSR_DPS_OVRSTRESS_CHK
//                  0x1: DC high
//                  0x0: DC low
//    1  0x0     LSR_DPS_PD_LSR
//                  0x1: DC high
//                  0x0: DC low
//    0  0x1     LSR_DS_PD_FD
//                  0x1: DC high
//                  0x0: DC low

`define LSR_DELXY_SEL_WIDTH                                   8
`define REGA_LSR_DELXY_SEL                                    13'h1566
`define LSR_DELXY_SEL_DEFAULT                                 8'h1
`define LSR_DELXY_SEL_CHECK                                   8'h1
`define LSR_DELXY_SEL                                         `LSR_DELXY_SEL_WIDTH, `REGA_LSR_DELXY_SEL, `LSR_DELXY_SEL_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     Reserved
//                  Reserved
//  6:4  0x0     LSR_DELX_SEL
//                  Delay x width selector
//                  0x0: 0.1us
//                  0x1: 0.2us
//                  0x2: 0.3us
//                  0x3: 0.5us
//                  0x4: 1us
//                  0x5: 2us
//                  0x6: 4us
//                  0x7: 6us
//    3  0x0     Reserved
//                  Reserved
//  2:0  0x1     LSR_DELY_SEL
//                  Delay y width selector
//                  0x0: 0.1us
//                  0x1: 0.2us
//                  0x2: 0.3us
//                  0x3: 0.5us
//                  0x4: 1us
//                  0x5: 2us
//                  0x6: 4us
//                  0x7: 6us

`define LSR_DELTZ_SEL_WIDTH                                   8
`define REGA_LSR_DELTZ_SEL                                    13'h1567
`define LSR_DELTZ_SEL_DEFAULT                                 8'h33
`define LSR_DELTZ_SEL_CHECK                                   8'h33
`define LSR_DELTZ_SEL                                         `LSR_DELTZ_SEL_WIDTH, `REGA_LSR_DELTZ_SEL, `LSR_DELTZ_SEL_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     Reserved
//                  Reserved
//  6:4  0x3     LSR_DELT_SEL
//                  Delay t width selector
//                  0x0: 0.1us
//                  0x1: 0.2us
//                  0x2: 0.3us
//                  0x3: 0.5us
//                  0x4: 1us
//                  0x5: 2us
//                  0x6: 4us
//                  0x7: 6us
//    3  0x0     Reserved
//                  Reserved
//  2:0  0x3     LSR_DELZ_SEL
//                  Delay z width selector
//                  0x0: 0.1us
//                  0x1: 0.2us
//                  0x2: 0.3us
//                  0x3: 0.5us
//                  0x4: 1us
//                  0x5: 2us
//                  0x6: 4us
//                  0x7: 6us

`define LSR_DELCQ_SEL_WIDTH                                   8
`define REGA_LSR_DELCQ_SEL                                    13'h1568
`define LSR_DELCQ_SEL_DEFAULT                                 8'h1
`define LSR_DELCQ_SEL_CHECK                                   8'h1
`define LSR_DELCQ_SEL                                         `LSR_DELCQ_SEL_WIDTH, `REGA_LSR_DELCQ_SEL, `LSR_DELCQ_SEL_DEFAULT
//  access       rw
//  atype        A
//  7:3  0x0     Reserved
//                  Reserved
//  2:0  0x1     LSR_DELQ_SEL
//                  Delay q width selector
//                  0x0: 0.1us
//                  0x1: 0.2us
//                  0x2: 0.3us
//                  0x3: 0.5us
//                  0x4: 1us
//                  0x5: 2us
//                  0x6: 4us
//                  0x7: 6us

`define LSR_PREFLASH_WIDTH                                    8
`define REGA_LSR_PREFLASH                                     13'h1569
`define LSR_PREFLASH_DEFAULT                                  8'h14
`define LSR_PREFLASH_CHECK                                    8'h14
`define LSR_PREFLASH                                          `LSR_PREFLASH_WIDTH, `REGA_LSR_PREFLASH, `LSR_PREFLASH_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x14    LSR_PREFLASH_WIDTH
//                  LSR PREFLASH width count in 0.5us step

`define LSR_ON_PREAMBLE_WIDTH                                 8
`define REGA_LSR_ON_PREAMBLE                                  13'h156a
`define LSR_ON_PREAMBLE_DEFAULT                               8'h13
`define LSR_ON_PREAMBLE_CHECK                                 8'h13
`define LSR_ON_PREAMBLE                                       `LSR_ON_PREAMBLE_WIDTH, `REGA_LSR_ON_PREAMBLE, `LSR_ON_PREAMBLE_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x13    LSR_ON_PREAMBLE_WIDTH
//                  FD will send preamble count in 0.5us step to ANA_CTL
//                  Preamble count is calculated by sum of delay parameter
//                  q,t,x,y,z, preflash value and overhead
//                  this register record down the overhead needed

`define LSR_DELDE_SEL_WIDTH                                   8
`define REGA_LSR_DELDE_SEL                                    13'h156b
`define LSR_DELDE_SEL_DEFAULT                                 8'h11
`define LSR_DELDE_SEL_CHECK                                   8'h11
`define LSR_DELDE_SEL                                         `LSR_DELDE_SEL_WIDTH, `REGA_LSR_DELDE_SEL, `LSR_DELDE_SEL_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x1     LSR_DELD_SEL
//                  Delay d width in 1us step
//                  When value is 0, it is 0.5us
//                  When value is 1, it is 1us
//                  When value is 2, it is 2us
//                  This applies for the rest of the value
//  3:0  0x1     LSR_DELE_SEL
//                  Delay d width in 1us step
//                  When value is 0, it is 0.5us
//                  When value is 1, it is 1us
//                  When value is 2, it is 2us
//                  This applies for the rest of the value

`define LSR_DELFG_SEL_WIDTH                                   8
`define REGA_LSR_DELFG_SEL                                    13'h156c
`define LSR_DELFG_SEL_DEFAULT                                 8'h11
`define LSR_DELFG_SEL_CHECK                                   8'h11
`define LSR_DELFG_SEL                                         `LSR_DELFG_SEL_WIDTH, `REGA_LSR_DELFG_SEL, `LSR_DELFG_SEL_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x1     LSR_DELF_SEL
//                  Delay f width in 1us step
//                  When value is 0, it is 0.5us
//                  When value is 1, it is 1us
//                  When value is 2, it is 2us
//                  This applies for the rest of the value
//  3:0  0x1     LSR_DELG_SEL
//                  Delay g width in 1us step
//                  When value is 0, it is 0.5us
//                  When value is 1, it is 1us
//                  When value is 2, it is 2us
//                  This applies for the rest of the value

`define LSR_DELWI_SEL_WIDTH                                   8
`define REGA_LSR_DELWI_SEL                                    13'h156d
`define LSR_DELWI_SEL_DEFAULT                                 8'h1
`define LSR_DELWI_SEL_CHECK                                   8'h1
`define LSR_DELWI_SEL                                         `LSR_DELWI_SEL_WIDTH, `REGA_LSR_DELWI_SEL, `LSR_DELWI_SEL_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     Reserved
//                  Reserved
//  6:4  0x0     LSR_DELW_SEL
//                  Delay w width selector
//                  0x0: 0.1us
//                  0x1: 0.2us
//                  0x2: 0.3us
//                  0x3: 0.5us
//                  0x4: 1us
//                  0x5: 2us
//                  0x6: 4us
//                  0x7: 6us
//  3:0  0x1     LSR_DELI_SEL
//                  Delay i width in 1us step
//                  When value is 0, it is 0.5us
//                  When value is 1, it is 1us
//                  When value is 2, it is 2us
//                  This applies for the rest of the value

`define LSR_DELPC_PU_SEL_WIDTH                                8
`define REGA_LSR_DELPC_PU_SEL                                 13'h156e
`define LSR_DELPC_PU_SEL_DEFAULT                              8'h4a
`define LSR_DELPC_PU_SEL_CHECK                                8'h4a
`define LSR_DELPC_PU_SEL                                      `LSR_DELPC_PU_SEL_WIDTH, `REGA_LSR_DELPC_PU_SEL, `LSR_DELPC_PU_SEL_DEFAULT
//  access       rw
//  atype        A
//  7:4  0x4     LSR_DEL_PC_SEL
//                  Precharge width in 1us step
//                  When value is 0, it is 0.5us
//                  When value is 1, it is 1us
//                  When value is 2, it is 2us
//                  This applies for the rest of the value
//  3:0  0xa     LSR_DEL_PU_SEL
//                  Pull up width in 1us step
//                  When value is 0, it is 0.5us
//                  When value is 1, it is 1us
//                  When value is 2, it is 2us
//                  This applies for the rest of the value

`define ANA_CTL3_WIDTH                                        8
`define REGA_ANA_CTL3                                         13'h1579
`define ANA_CTL3_DEFAULT                                      8'h28
`define ANA_CTL3_CHECK                                        8'h28
`define ANA_CTL3                                              `ANA_CTL3_WIDTH, `REGA_ANA_CTL3, `ANA_CTL3_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x28    REFGEN_PD_DELAY
//                  Power down delay after TA power down in ANA_CTL

`define ANA_CTL4_WIDTH                                        8
`define REGA_ANA_CTL4                                         13'h157a
`define ANA_CTL4_DEFAULT                                      8'h14
`define ANA_CTL4_CHECK                                        8'h14
`define ANA_CTL4                                              `ANA_CTL4_WIDTH, `REGA_ANA_CTL4, `ANA_CTL4_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x14    ADC_PD_DELAY
//                  Power down delay after TA power down in ANA_CTL

`define ANA_CTL5_WIDTH                                        8
`define REGA_ANA_CTL5                                         13'h157b
`define ANA_CTL5_DEFAULT                                      8'h0
`define ANA_CTL5_CHECK                                        8'h0
`define ANA_CTL5                                              `ANA_CTL5_WIDTH, `REGA_ANA_CTL5, `ANA_CTL5_DEFAULT
//  access       rw
//  atype        A
//  7:6  0x0     FVD_VID_MODE
//                  FVD_VID_MODE
//                  "00" = 7 bits dual channel Channel output mode
//                  "10" = 8 bits CH 0 ADC output mode
//                  "11" = 8 bits CH 1 ADC output mode
//    5  0x0     CH_SEL_EN_1ST_COL_OFFSET
//                  Selector to compensate first column of CH0 and CH1 or CH1 only
//                  0 = to compensate first column of CH0 and CH1
//                  1 = to compensate first column of CH1 only
//  4:3  0x0     PIX_1ST_COL_OFFSET
//                  First column offset compensation value
//    2  0x0     LED_LSR_SEL
//                  selector for LED or LSR mode
//    1  0x0     PBB_CLK_MODES_BYPASS
//                  bit to enable pulsing PBB_CLK every frame
//    0  0x0     PULSE_ADC_TA_MAX_CVFR
//                  bit to enable ADC and TA pulsing in highest cvfr

`define ANA_CTL6_WIDTH                                        8
`define REGA_ANA_CTL6                                         13'h157c
`define ANA_CTL6_DEFAULT                                      8'h0
`define ANA_CTL6_CHECK                                        8'h0
`define ANA_CTL6                                              `ANA_CTL6_WIDTH, `REGA_ANA_CTL6, `ANA_CTL6_DEFAULT
//  access       rw
//  atype        A
//    7  0x0     PARTICLE_TEST_EN
//                  1 = Enable
//                  0 = Disable
//    6  0x0     PIX_NUM
//                  1 = 2 pixels
//                  0 = 1 pixel
//  5:3  0x0     INTENSITY2
//                  Intensity for pixel 2
//                  3'b000 = 0%
//                  3'b001 = 12.5%
//                  3'b010 = 25%
//                  3'b011 = 37.5%
//                  3'b100 = 50%
//                  3'b101 = 62.5%
//                  3'b110 = 75%
//                  3'b111 = 87.5%
//  2:0  0x0     INTENSITY1
//                  Intensity for pixel 1
//                  3'b000 = 0%
//                  3'b001 = 12.5%
//                  3'b010 = 25%
//                  3'b011 = 37.5%
//                  3'b100 = 50%
//                  3'b101 = 62.5%
//                  3'b110 = 75%
//                  3'b111 = 87.5%

`define ANA_CTL7_WIDTH                                        8
`define REGA_ANA_CTL7                                         13'h157d
`define ANA_CTL7_DEFAULT                                      8'h0
`define ANA_CTL7_CHECK                                        8'h0
`define ANA_CTL7                                              `ANA_CTL7_WIDTH, `REGA_ANA_CTL7, `ANA_CTL7_DEFAULT
//  access       rw
//  atype        A
//  7:5  0x0     RESERVED
//                  RESERVED
//    4  0x0     START_FPC2_CNT_EN
//                  0 = use ANA_DONE to stretch frame
//                  1 = use start fpc2 counter to stretch frame
//  3:2  0x0     RESERVED
//                  RESERVED
//  1:0  0x0     EXPAND_SHUTTER
//                  Shutter pulse width expansion
//                  "00" = Original shutter value (T_SHUT)
//                  "01" = Shutter width 2x of T_SHUT
//                  "10" = Shutter width 4x of T_SHUT
//                  "11" = Shutter width 8x of T_SHUT


`define P22_PROD_ID_WIDTH                                     0
`define REGA_P22_PROD_ID                                      13'h1600
`define P22_PROD_ID                                           `P22_PROD_ID_WIDTH, `REGA_P22_PROD_ID, `P22_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P22_REV_ID_WIDTH                                      0
`define REGA_P22_REV_ID                                       13'h1601
`define P22_REV_ID                                            `P22_REV_ID_WIDTH, `REGA_P22_REV_ID, `P22_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P22_MOTION_WIDTH                                      0
`define REGA_P22_MOTION                                       13'h1602
`define P22_MOTION                                            `P22_MOTION_WIDTH, `REGA_P22_MOTION, `P22_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P22_DELTA_X_LO_WIDTH                                  0
`define REGA_P22_DELTA_X_LO                                   13'h1603
`define P22_DELTA_X_LO                                        `P22_DELTA_X_LO_WIDTH, `REGA_P22_DELTA_X_LO, `P22_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P22_DELTA_X_HI_WIDTH                                  0
`define REGA_P22_DELTA_X_HI                                   13'h1604
`define P22_DELTA_X_HI                                        `P22_DELTA_X_HI_WIDTH, `REGA_P22_DELTA_X_HI, `P22_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P22_DELTA_Y_LO_WIDTH                                  0
`define REGA_P22_DELTA_Y_LO                                   13'h1605
`define P22_DELTA_Y_LO                                        `P22_DELTA_Y_LO_WIDTH, `REGA_P22_DELTA_Y_LO, `P22_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P22_DELTA_Y_HI_WIDTH                                  0
`define REGA_P22_DELTA_Y_HI                                   13'h1606
`define P22_DELTA_Y_HI                                        `P22_DELTA_Y_HI_WIDTH, `REGA_P22_DELTA_Y_HI, `P22_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P22_SQUAL_WIDTH                                       0
`define REGA_P22_SQUAL                                        13'h1607
`define P22_SQUAL                                             `P22_SQUAL_WIDTH, `REGA_P22_SQUAL, `P22_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P22_PIX_ACCUM_WIDTH                                   0
`define REGA_P22_PIX_ACCUM                                    13'h1608
`define P22_PIX_ACCUM                                         `P22_PIX_ACCUM_WIDTH, `REGA_P22_PIX_ACCUM, `P22_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P22_PIX_MAX_WIDTH                                     0
`define REGA_P22_PIX_MAX                                      13'h1609
`define P22_PIX_MAX                                           `P22_PIX_MAX_WIDTH, `REGA_P22_PIX_MAX, `P22_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P22_PIX_MIN_WIDTH                                     0
`define REGA_P22_PIX_MIN                                      13'h160a
`define P22_PIX_MIN                                           `P22_PIX_MIN_WIDTH, `REGA_P22_PIX_MIN, `P22_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P22_SHUT_LO_WIDTH                                     0
`define REGA_P22_SHUT_LO                                      13'h160b
`define P22_SHUT_LO                                           `P22_SHUT_LO_WIDTH, `REGA_P22_SHUT_LO, `P22_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P22_SHUT_HI_WIDTH                                     0
`define REGA_P22_SHUT_HI                                      13'h160c
`define P22_SHUT_HI                                           `P22_SHUT_HI_WIDTH, `REGA_P22_SHUT_HI, `P22_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P22_EXT_WAKEUP_WIDTH                                  0
`define REGA_P22_EXT_WAKEUP                                   13'h160d
`define P22_EXT_WAKEUP                                        `P22_EXT_WAKEUP_WIDTH, `REGA_P22_EXT_WAKEUP, `P22_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P22_RESERVED_E_WIDTH                                  0
`define REGA_P22_RESERVED_E                                   13'h160e
`define P22_RESERVED_E                                        `P22_RESERVED_E_WIDTH, `REGA_P22_RESERVED_E, `P22_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P22_SKIP_FRAMES_CNT_LO_WIDTH                          0
`define REGA_P22_SKIP_FRAMES_CNT_LO                           13'h160f
`define P22_SKIP_FRAMES_CNT_LO                                `P22_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P22_SKIP_FRAMES_CNT_LO, `P22_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P22_SKIP_FRAMES_CNT_HI_WIDTH                          0
`define REGA_P22_SKIP_FRAMES_CNT_HI                           13'h1610
`define P22_SKIP_FRAMES_CNT_HI                                `P22_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P22_SKIP_FRAMES_CNT_HI, `P22_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P22_CVFR_PERIOD_LO_WIDTH                              0
`define REGA_P22_CVFR_PERIOD_LO                               13'h1611
`define P22_CVFR_PERIOD_LO                                    `P22_CVFR_PERIOD_LO_WIDTH, `REGA_P22_CVFR_PERIOD_LO, `P22_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P22_CVFR_PERIOD_HI_WIDTH                              0
`define REGA_P22_CVFR_PERIOD_HI                               13'h1612
`define P22_CVFR_PERIOD_HI                                    `P22_CVFR_PERIOD_HI_WIDTH, `REGA_P22_CVFR_PERIOD_HI, `P22_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P22_OBSERVATION_WIDTH                                 0
`define REGA_P22_OBSERVATION                                  13'h1615
`define P22_OBSERVATION                                       `P22_OBSERVATION_WIDTH, `REGA_P22_OBSERVATION, `P22_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P22_BURST_MOTION_WIDTH                                0
`define REGA_P22_BURST_MOTION                                 13'h1616
`define P22_BURST_MOTION                                      `P22_BURST_MOTION_WIDTH, `REGA_P22_BURST_MOTION, `P22_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P22_SQUAL2_WIDTH                                      0
`define REGA_P22_SQUAL2                                       13'h1617
`define P22_SQUAL2                                            `P22_SQUAL2_WIDTH, `REGA_P22_SQUAL2, `P22_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P22_SPI_MODE_WIDTH                                    0
`define REGA_P22_SPI_MODE                                     13'h1618
`define P22_SPI_MODE                                          `P22_SPI_MODE_WIDTH, `REGA_P22_SPI_MODE, `P22_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P22_OSC_TUNE_INSTR_WIDTH                              0
`define REGA_P22_OSC_TUNE_INSTR                               13'h1622
`define P22_OSC_TUNE_INSTR                                    `P22_OSC_TUNE_INSTR_WIDTH, `REGA_P22_OSC_TUNE_INSTR, `P22_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P22_OSC_TUNE_INSTR_SLOW_WIDTH                         0
`define REGA_P22_OSC_TUNE_INSTR_SLOW                          13'h1623
`define P22_OSC_TUNE_INSTR_SLOW                               `P22_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P22_OSC_TUNE_INSTR_SLOW, `P22_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P22_PRBS_MODE_WIDTH                                   0
`define REGA_P22_PRBS_MODE                                    13'h1630
`define P22_PRBS_MODE                                         `P22_PRBS_MODE_WIDTH, `REGA_P22_PRBS_MODE, `P22_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P22_POWERDOWN_WIDTH                                   0
`define REGA_P22_POWERDOWN                                    13'h1632
`define P22_POWERDOWN                                         `P22_POWERDOWN_WIDTH, `REGA_P22_POWERDOWN, `P22_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P22_CRC0_WIDTH                                        0
`define REGA_P22_CRC0                                         13'h1633
`define P22_CRC0                                              `P22_CRC0_WIDTH, `REGA_P22_CRC0, `P22_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P22_CRC1_WIDTH                                        0
`define REGA_P22_CRC1                                         13'h1634
`define P22_CRC1                                              `P22_CRC1_WIDTH, `REGA_P22_CRC1, `P22_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P22_CRC2_WIDTH                                        0
`define REGA_P22_CRC2                                         13'h1635
`define P22_CRC2                                              `P22_CRC2_WIDTH, `REGA_P22_CRC2, `P22_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P22_CRC3_WIDTH                                        0
`define REGA_P22_CRC3                                         13'h1636
`define P22_CRC3                                              `P22_CRC3_WIDTH, `REGA_P22_CRC3, `P22_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P22_IOSTATUS_WIDTH                                    0
`define REGA_P22_IOSTATUS                                     13'h1637
`define P22_IOSTATUS                                          `P22_IOSTATUS_WIDTH, `REGA_P22_IOSTATUS, `P22_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P22_TAP_KEY_WO_WIDTH                                  0
`define REGA_P22_TAP_KEY_WO                                   13'h1638
`define P22_TAP_KEY_WO                                        `P22_TAP_KEY_WO_WIDTH, `REGA_P22_TAP_KEY_WO, `P22_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P22_TAP_KEY_WIDTH                                     0
`define REGA_P22_TAP_KEY                                      13'h1639
`define P22_TAP_KEY                                           `P22_TAP_KEY_WIDTH, `REGA_P22_TAP_KEY, `P22_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P22_POWER_UP_RESET_WIDTH                              0
`define REGA_P22_POWER_UP_RESET                               13'h163a
`define P22_POWER_UP_RESET                                    `P22_POWER_UP_RESET_WIDTH, `REGA_P22_POWER_UP_RESET, `P22_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P22_SHUTDOWN_WIDTH                                    0
`define REGA_P22_SHUTDOWN                                     13'h163b
`define P22_SHUTDOWN                                          `P22_SHUTDOWN_WIDTH, `REGA_P22_SHUTDOWN, `P22_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P22_SCAN_MODE_WIDTH                                   0
`define REGA_P22_SCAN_MODE                                    13'h163c
`define P22_SCAN_MODE                                         `P22_SCAN_MODE_WIDTH, `REGA_P22_SCAN_MODE, `P22_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P22_SPI_PAGE_WIDTH                                    0
`define REGA_P22_SPI_PAGE                                     13'h167f
`define P22_SPI_PAGE                                          `P22_SPI_PAGE_WIDTH, `REGA_P22_SPI_PAGE, `P22_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP


`define P23_PROD_ID_WIDTH                                     0
`define REGA_P23_PROD_ID                                      13'h1700
`define P23_PROD_ID                                           `P23_PROD_ID_WIDTH, `REGA_P23_PROD_ID, `P23_PROD_ID_DEFAULT
//  access       ro
//  atype        AP

`define P23_REV_ID_WIDTH                                      0
`define REGA_P23_REV_ID                                       13'h1701
`define P23_REV_ID                                            `P23_REV_ID_WIDTH, `REGA_P23_REV_ID, `P23_REV_ID_DEFAULT
//  access       ro
//  atype        AP

`define P23_MOTION_WIDTH                                      0
`define REGA_P23_MOTION                                       13'h1702
`define P23_MOTION                                            `P23_MOTION_WIDTH, `REGA_P23_MOTION, `P23_MOTION_DEFAULT
//  access       rw
//  atype        AP

`define P23_DELTA_X_LO_WIDTH                                  0
`define REGA_P23_DELTA_X_LO                                   13'h1703
`define P23_DELTA_X_LO                                        `P23_DELTA_X_LO_WIDTH, `REGA_P23_DELTA_X_LO, `P23_DELTA_X_LO_DEFAULT
//  access       ro
//  atype        AP

`define P23_DELTA_X_HI_WIDTH                                  0
`define REGA_P23_DELTA_X_HI                                   13'h1704
`define P23_DELTA_X_HI                                        `P23_DELTA_X_HI_WIDTH, `REGA_P23_DELTA_X_HI, `P23_DELTA_X_HI_DEFAULT
//  access       ro
//  atype        AP

`define P23_DELTA_Y_LO_WIDTH                                  0
`define REGA_P23_DELTA_Y_LO                                   13'h1705
`define P23_DELTA_Y_LO                                        `P23_DELTA_Y_LO_WIDTH, `REGA_P23_DELTA_Y_LO, `P23_DELTA_Y_LO_DEFAULT
//  access       ro
//  atype        AP

`define P23_DELTA_Y_HI_WIDTH                                  0
`define REGA_P23_DELTA_Y_HI                                   13'h1706
`define P23_DELTA_Y_HI                                        `P23_DELTA_Y_HI_WIDTH, `REGA_P23_DELTA_Y_HI, `P23_DELTA_Y_HI_DEFAULT
//  access       ro
//  atype        AP

`define P23_SQUAL_WIDTH                                       0
`define REGA_P23_SQUAL                                        13'h1707
`define P23_SQUAL                                             `P23_SQUAL_WIDTH, `REGA_P23_SQUAL, `P23_SQUAL_DEFAULT
//  access       ro
//  atype        AP

`define P23_PIX_ACCUM_WIDTH                                   0
`define REGA_P23_PIX_ACCUM                                    13'h1708
`define P23_PIX_ACCUM                                         `P23_PIX_ACCUM_WIDTH, `REGA_P23_PIX_ACCUM, `P23_PIX_ACCUM_DEFAULT
//  access       ro
//  atype        AP

`define P23_PIX_MAX_WIDTH                                     0
`define REGA_P23_PIX_MAX                                      13'h1709
`define P23_PIX_MAX                                           `P23_PIX_MAX_WIDTH, `REGA_P23_PIX_MAX, `P23_PIX_MAX_DEFAULT
//  access       ro
//  atype        AP

`define P23_PIX_MIN_WIDTH                                     0
`define REGA_P23_PIX_MIN                                      13'h170a
`define P23_PIX_MIN                                           `P23_PIX_MIN_WIDTH, `REGA_P23_PIX_MIN, `P23_PIX_MIN_DEFAULT
//  access       ro
//  atype        AP

`define P23_SHUT_LO_WIDTH                                     0
`define REGA_P23_SHUT_LO                                      13'h170b
`define P23_SHUT_LO                                           `P23_SHUT_LO_WIDTH, `REGA_P23_SHUT_LO, `P23_SHUT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P23_SHUT_HI_WIDTH                                     0
`define REGA_P23_SHUT_HI                                      13'h170c
`define P23_SHUT_HI                                           `P23_SHUT_HI_WIDTH, `REGA_P23_SHUT_HI, `P23_SHUT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P23_EXT_WAKEUP_WIDTH                                  0
`define REGA_P23_EXT_WAKEUP                                   13'h170d
`define P23_EXT_WAKEUP                                        `P23_EXT_WAKEUP_WIDTH, `REGA_P23_EXT_WAKEUP, `P23_EXT_WAKEUP_DEFAULT
//  access       rw
//  atype        AP

`define P23_RESERVED_E_WIDTH                                  0
`define REGA_P23_RESERVED_E                                   13'h170e
`define P23_RESERVED_E                                        `P23_RESERVED_E_WIDTH, `REGA_P23_RESERVED_E, `P23_RESERVED_E_DEFAULT
//  access       ro
//  atype        AP

`define P23_SKIP_FRAMES_CNT_LO_WIDTH                          0
`define REGA_P23_SKIP_FRAMES_CNT_LO                           13'h170f
`define P23_SKIP_FRAMES_CNT_LO                                `P23_SKIP_FRAMES_CNT_LO_WIDTH, `REGA_P23_SKIP_FRAMES_CNT_LO, `P23_SKIP_FRAMES_CNT_LO_DEFAULT
//  access       ro
//  atype        AP

`define P23_SKIP_FRAMES_CNT_HI_WIDTH                          0
`define REGA_P23_SKIP_FRAMES_CNT_HI                           13'h1710
`define P23_SKIP_FRAMES_CNT_HI                                `P23_SKIP_FRAMES_CNT_HI_WIDTH, `REGA_P23_SKIP_FRAMES_CNT_HI, `P23_SKIP_FRAMES_CNT_HI_DEFAULT
//  access       ro
//  atype        AP

`define P23_CVFR_PERIOD_LO_WIDTH                              0
`define REGA_P23_CVFR_PERIOD_LO                               13'h1711
`define P23_CVFR_PERIOD_LO                                    `P23_CVFR_PERIOD_LO_WIDTH, `REGA_P23_CVFR_PERIOD_LO, `P23_CVFR_PERIOD_LO_DEFAULT
//  access       ro
//  atype        AP

`define P23_CVFR_PERIOD_HI_WIDTH                              0
`define REGA_P23_CVFR_PERIOD_HI                               13'h1712
`define P23_CVFR_PERIOD_HI                                    `P23_CVFR_PERIOD_HI_WIDTH, `REGA_P23_CVFR_PERIOD_HI, `P23_CVFR_PERIOD_HI_DEFAULT
//  access       ro
//  atype        AP

`define P23_OBSERVATION_WIDTH                                 0
`define REGA_P23_OBSERVATION                                  13'h1715
`define P23_OBSERVATION                                       `P23_OBSERVATION_WIDTH, `REGA_P23_OBSERVATION, `P23_OBSERVATION_DEFAULT
//  access       rw
//  atype        AP

`define P23_BURST_MOTION_WIDTH                                0
`define REGA_P23_BURST_MOTION                                 13'h1716
`define P23_BURST_MOTION                                      `P23_BURST_MOTION_WIDTH, `REGA_P23_BURST_MOTION, `P23_BURST_MOTION_DEFAULT
//  access       ro
//  atype        AP

`define P23_SQUAL2_WIDTH                                      0
`define REGA_P23_SQUAL2                                       13'h1717
`define P23_SQUAL2                                            `P23_SQUAL2_WIDTH, `REGA_P23_SQUAL2, `P23_SQUAL2_DEFAULT
//  access       ro
//  atype        AP

`define P23_SPI_MODE_WIDTH                                    0
`define REGA_P23_SPI_MODE                                     13'h1718
`define P23_SPI_MODE                                          `P23_SPI_MODE_WIDTH, `REGA_P23_SPI_MODE, `P23_SPI_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P23_OSC_TUNE_INSTR_WIDTH                              0
`define REGA_P23_OSC_TUNE_INSTR                               13'h1722
`define P23_OSC_TUNE_INSTR                                    `P23_OSC_TUNE_INSTR_WIDTH, `REGA_P23_OSC_TUNE_INSTR, `P23_OSC_TUNE_INSTR_DEFAULT
//  access       wo
//  atype        AP

`define P23_OSC_TUNE_INSTR_SLOW_WIDTH                         0
`define REGA_P23_OSC_TUNE_INSTR_SLOW                          13'h1723
`define P23_OSC_TUNE_INSTR_SLOW                               `P23_OSC_TUNE_INSTR_SLOW_WIDTH, `REGA_P23_OSC_TUNE_INSTR_SLOW, `P23_OSC_TUNE_INSTR_SLOW_DEFAULT
//  access       wo
//  atype        AP

`define P23_PRBS_MODE_WIDTH                                   0
`define REGA_P23_PRBS_MODE                                    13'h1730
`define P23_PRBS_MODE                                         `P23_PRBS_MODE_WIDTH, `REGA_P23_PRBS_MODE, `P23_PRBS_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P23_POWERDOWN_WIDTH                                   0
`define REGA_P23_POWERDOWN                                    13'h1732
`define P23_POWERDOWN                                         `P23_POWERDOWN_WIDTH, `REGA_P23_POWERDOWN, `P23_POWERDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P23_CRC0_WIDTH                                        0
`define REGA_P23_CRC0                                         13'h1733
`define P23_CRC0                                              `P23_CRC0_WIDTH, `REGA_P23_CRC0, `P23_CRC0_DEFAULT
//  access       ro
//  atype        AP

`define P23_CRC1_WIDTH                                        0
`define REGA_P23_CRC1                                         13'h1734
`define P23_CRC1                                              `P23_CRC1_WIDTH, `REGA_P23_CRC1, `P23_CRC1_DEFAULT
//  access       ro
//  atype        AP

`define P23_CRC2_WIDTH                                        0
`define REGA_P23_CRC2                                         13'h1735
`define P23_CRC2                                              `P23_CRC2_WIDTH, `REGA_P23_CRC2, `P23_CRC2_DEFAULT
//  access       ro
//  atype        AP

`define P23_CRC3_WIDTH                                        0
`define REGA_P23_CRC3                                         13'h1736
`define P23_CRC3                                              `P23_CRC3_WIDTH, `REGA_P23_CRC3, `P23_CRC3_DEFAULT
//  access       ro
//  atype        AP

`define P23_IOSTATUS_WIDTH                                    0
`define REGA_P23_IOSTATUS                                     13'h1737
`define P23_IOSTATUS                                          `P23_IOSTATUS_WIDTH, `REGA_P23_IOSTATUS, `P23_IOSTATUS_DEFAULT
//  access       ro
//  atype        AP

`define P23_TAP_KEY_WO_WIDTH                                  0
`define REGA_P23_TAP_KEY_WO                                   13'h1738
`define P23_TAP_KEY_WO                                        `P23_TAP_KEY_WO_WIDTH, `REGA_P23_TAP_KEY_WO, `P23_TAP_KEY_WO_DEFAULT
//  access       wo
//  atype        AP

`define P23_TAP_KEY_WIDTH                                     0
`define REGA_P23_TAP_KEY                                      13'h1739
`define P23_TAP_KEY                                           `P23_TAP_KEY_WIDTH, `REGA_P23_TAP_KEY, `P23_TAP_KEY_DEFAULT
//  access       wo
//  atype        AP

`define P23_POWER_UP_RESET_WIDTH                              0
`define REGA_P23_POWER_UP_RESET                               13'h173a
`define P23_POWER_UP_RESET                                    `P23_POWER_UP_RESET_WIDTH, `REGA_P23_POWER_UP_RESET, `P23_POWER_UP_RESET_DEFAULT
//  access       wo
//  atype        AP

`define P23_SHUTDOWN_WIDTH                                    0
`define REGA_P23_SHUTDOWN                                     13'h173b
`define P23_SHUTDOWN                                          `P23_SHUTDOWN_WIDTH, `REGA_P23_SHUTDOWN, `P23_SHUTDOWN_DEFAULT
//  access       wo
//  atype        AP

`define P23_SCAN_MODE_WIDTH                                   0
`define REGA_P23_SCAN_MODE                                    13'h173c
`define P23_SCAN_MODE                                         `P23_SCAN_MODE_WIDTH, `REGA_P23_SCAN_MODE, `P23_SCAN_MODE_DEFAULT
//  access       wo
//  atype        AP

`define P23_SPI_PAGE_WIDTH                                    0
`define REGA_P23_SPI_PAGE                                     13'h177f
`define P23_SPI_PAGE                                          `P23_SPI_PAGE_WIDTH, `REGA_P23_SPI_PAGE, `P23_SPI_PAGE_DEFAULT
//  access       rw
//  atype        AP

`define DISABLE_TW3805_AUTOSHUT_WIDTH                         8
`define REGA_DISABLE_TW3805_AUTOSHUT                          13'h1740
`define DISABLE_TW3805_AUTOSHUT_DEFAULT                       8'h0
`define DISABLE_TW3805_AUTOSHUT_CHECK                         8'h0
`define DISABLE_TW3805_AUTOSHUT                               `DISABLE_TW3805_AUTOSHUT_WIDTH, `REGA_DISABLE_TW3805_AUTOSHUT, `DISABLE_TW3805_AUTOSHUT_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     DISABLE_TW3805_AUTOSHUT
//                  Disable TW3805 auto shutter.  FPGA only.  Not available in ASIC.

`define DEBUG_PORT_CONTROL_WIDTH                              8
`define REGA_DEBUG_PORT_CONTROL                               13'h1741
`define DEBUG_PORT_CONTROL_DEFAULT                            8'h0
`define DEBUG_PORT_CONTROL_CHECK                              8'h0
`define DEBUG_PORT_CONTROL                                    `DEBUG_PORT_CONTROL_WIDTH, `REGA_DEBUG_PORT_CONTROL, `DEBUG_PORT_CONTROL_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     Select the debug port in FPGA
//                  Select the debug port in FPGA.

`define SENSOR_ADDR_WIDTH                                     8
`define REGA_SENSOR_ADDR                                      13'h1778
`define SENSOR_ADDR_DEFAULT                                   8'h0
`define SENSOR_ADDR_CHECK                                     8'h0
`define SENSOR_ADDR                                           `SENSOR_ADDR_WIDTH, `REGA_SENSOR_ADDR, `SENSOR_ADDR_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     SENSOR_ADDR
//                  FPGA UGS2 Sensor Address.  FPGA only.  Not available in ASIC.

`define SENSOR_DATA_WIDTH                                     8
`define REGA_SENSOR_DATA                                      13'h1779
`define SENSOR_DATA_DEFAULT                                   8'h0
`define SENSOR_DATA_CHECK                                     8'h0
`define SENSOR_DATA                                           `SENSOR_DATA_WIDTH, `REGA_SENSOR_DATA, `SENSOR_DATA_DEFAULT
//  access       rw
//  atype        A
//  7:0  0x0     SENSOR_DATA
//                  FPGA UGS2 Sensor Data.  FPGA only.  Not available in ASIC.

`define FPGA_VER_WIDTH                                        8
`define REGA_FPGA_VER                                         13'h177a
`define FPGA_VER_DEFAULT                                      8'h0
`define FPGA_VER_CHECK                                        8'h0
`define FPGA_VER                                              `FPGA_VER_WIDTH, `REGA_FPGA_VER, `FPGA_VER_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     FPGA_VER
//                  FPGA version ID.  FPGA only.  Not available in ASIC.

`define FPGA_REV_WIDTH                                        8
`define REGA_FPGA_REV                                         13'h177b
`define FPGA_REV_DEFAULT                                      8'h0
`define FPGA_REV_CHECK                                        8'h0
`define FPGA_REV                                              `FPGA_REV_WIDTH, `REGA_FPGA_REV, `FPGA_REV_DEFAULT
//  access       ro
//  atype        A
//  7:0  0x0     FPGA_REV
//                  FPGA revision ID.  FPGA only.  Not available in ASIC.

