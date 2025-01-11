;# look in my book(s) or in www.aztech.co.il
;#####################################################
;# A template script for the assigning the DE0 board #
;# Choosing: device, pins, and making design safer ! #
;# Written by: Amos Zaslavsky (C)copyright - Ver 7.0 #
;#####################################################
puts \n
if {![is_project_open]} {
   puts "========================================"
   puts " ERROR: Assignments can not be done,    "
   puts " because there isn't any project open ! "
   puts "========================================"		
   } else {	     
   puts "================================="
   puts " Assigning the DE1 device & pins "
   puts " ...                             "    
   
   ;#################
   ;# Clock Signals #
   ;#################

   set_location_assignment PIN_G21 -to STOPPER_CLK     ;# Global Clock 4
#   set_location_assignment PIN_G21 -to CLK        ;# Global Clock 4 (just another name)
#   set_location_assignment PIN_G21 -to CLOCK_50   ;# Global Clock 4 (just another name)

#   set_location_assignment PIN_B12 -to CLOCK_50_2 ;# Global Clock 9


   ;##############################################
   ;# Push-Buttons Active-Low ('0' when pressed) #
   ;# Keys are not debounced !                   #
   ;##############################################

   set_location_assignment PIN_H2 -to GAME_START ;# KEY0/BUTTON0 (right button covered)
   set_location_assignment PIN_G3 -to STOPPER_RESET ;# KEY1/BUTTON1 (mid button - half covered)
   set_location_assignment PIN_F1 -to LED_RESET ;# KEY2/BUTTON2 (left button)


   ;################################
   ;# Slide Switches ('1' when up) #
   ;################################


   set_location_assignment PIN_J6 -to SW[0] ;# SW[0]
   set_location_assignment PIN_H5 -to SW[1] ;# SW[1]
   set_location_assignment PIN_H6 -to SW[2] ;# SW[2]
   set_location_assignment PIN_G4 -to SW[3] ;# SW[3]
   set_location_assignment PIN_G5 -to SW[4] ;# SW[4]
   set_location_assignment PIN_J7 -to SW[5] ;# SW[5]
   set_location_assignment PIN_H7 -to SW[6] ;# SW[6]
   set_location_assignment PIN_E3 -to SW[7] ;# SW[7]
   set_location_assignment PIN_E4 -to STOPPER_SEL ;# SW[8]
#   set_location_assignment PIN_D2 -to STOPPER_ENA ;# SW[9]


   ;#############################################
   ;# 10 Green LEDs Active-High (Glow when '1') #
   ;#############################################

#   set_location_assignment PIN_J1 -to LEDG[0] ;# LEDG[0]
#   set_location_assignment PIN_J2 -to LEDG[1] ;# LEDG[1]
#   set_location_assignment PIN_J3 -to LEDG[2] ;# LEDG[2]
#   set_location_assignment PIN_H1 -to led[3] ;# LEDG[3]
   set_location_assignment PIN_F2 -to led[4] ;# LEDG[4]
   set_location_assignment PIN_E1 -to led[5] ;# LEDG[5]
   set_location_assignment PIN_C1 -to led[6] ;# LEDG[6]
   set_location_assignment PIN_C2 -to led[7] ;# LEDG[7]
   set_location_assignment PIN_B2 -to led[8] ;# LEDG[8]
   set_location_assignment PIN_B1 -to led[9] ;# LEDG[9] 


   ;###############################
   ;# 7 * Seven Segments          #
   ;# a=6 b=5 c=4 d=3 e=2 f=1 g=0 #
   ;# DP is connected !!!!        #
   ;# Active low (ON when '0')    #
   ;###############################

#   set_location_assignment PIN_D13 -to HEX0_DP  ;# DP 

   set_location_assignment PIN_F13 -to HEX0S[0] ;# g  HEX0S[0]
   set_location_assignment PIN_F12 -to HEX0S[1] ;# f  HEX0S[1]
   set_location_assignment PIN_G12 -to HEX0S[2] ;# e  HEX0S[2]
   set_location_assignment PIN_H13 -to HEX0S[3] ;# d  HEX0S[3]
   set_location_assignment PIN_H12 -to HEX0S[4] ;# c  HEX0S[4]
   set_location_assignment PIN_F11 -to HEX0S[5] ;# b  HEX0S[5]
   set_location_assignment PIN_E11 -to HEX0S[6] ;# a  HEX0S[6]


#   set_location_assignment PIN_B15 -to HEX1_DP  ;# DP 

   set_location_assignment PIN_A15 -to HEX1S[0] ;# g  HEX1S[0]
   set_location_assignment PIN_E14 -to HEX1S[1] ;# f  HEX1S[1]
   set_location_assignment PIN_B14 -to HEX1S[2] ;# e  HEX1S[2]
   set_location_assignment PIN_A14 -to HEX1S[3] ;# d  HEX1S[3]
   set_location_assignment PIN_C13 -to HEX1S[4] ;# c  HEX1S[4]
   set_location_assignment PIN_B13 -to HEX1S[5] ;# b  HEX1S[5] 
   set_location_assignment PIN_A13 -to HEX1S[6] ;# a  HEX1S[6]


   set_location_assignment PIN_A18 -to HEX2_DP  ;# DP 

   set_location_assignment PIN_F14 -to HEX2S[0] ;# g  HEX2S[0]
   set_location_assignment PIN_B17 -to HEX2S[1] ;# f  HEX2S[1]
   set_location_assignment PIN_A17 -to HEX2S[2] ;# e  HEX2S[2]
   set_location_assignment PIN_E15 -to HEX2S[3] ;# d  HEX2S[3]
   set_location_assignment PIN_B16 -to HEX2S[4] ;# c  HEX2S[4]
   set_location_assignment PIN_A16 -to HEX2S[5] ;# b  HEX2S[5]
   set_location_assignment PIN_D15 -to HEX2S[6] ;# a  HEX2S[6]


#   set_location_assignment PIN_G16 -to HEX3_DP  ;# DP 

   set_location_assignment PIN_G15 -to HEX3S[0] ;# g  HEX3S[0]
   set_location_assignment PIN_D19 -to HEX3S[1] ;# f  HEX3S[1]
   set_location_assignment PIN_C19 -to HEX3S[2] ;# e  HEX3S[2]
   set_location_assignment PIN_B19 -to HEX3S[3] ;# d  HEX3S[3]
   set_location_assignment PIN_A19 -to HEX3S[4] ;# c  HEX3S[4]
   set_location_assignment PIN_F15 -to HEX3S[5] ;# b  HEX3S[5]
   set_location_assignment PIN_B18 -to HEX3S[6] ;# a  HEX3S[6]


   ;##################################
   ;# UART (serial port) pin signals #
   ;##################################
   ;# on board ADM3202 device produced RS232 Voltages but with no DB9 connector


#   set_location_assignment PIN_U22 -to RXD
#   set_location_assignment PIN_U21 -to TXD
#   set_location_assignment PIN_V22 -to RTS
#   set_location_assignment PIN_V21 -to CTS


   ;##################
   ;# LCD controller #
   ;##################

#   set_location_assignment PIN_C20 -to LCD_DATA[7]
#   set_location_assignment PIN_D20 -to LCD_DATA[6]
#   set_location_assignment PIN_B21 -to LCD_DATA[5]
#   set_location_assignment PIN_B22 -to LCD_DATA[4]
#   set_location_assignment PIN_C21 -to LCD_DATA[3]
#   set_location_assignment PIN_C22 -to LCD_DATA[2]
#   set_location_assignment PIN_D21 -to LCD_DATA[1]
#   set_location_assignment PIN_D22 -to LCD_DATA[0]
#   set_location_assignment PIN_E22 -to LCD_RW
#   set_location_assignment PIN_F22 -to LCD_RS
#   set_location_assignment PIN_E21 -to LCD_EN
#   set_location_assignment PIN_F21 -to LCD_BLON


   ;#################
   ;# VGA interface #
   ;#################

#   set_location_assignment PIN_H19 -to RED[0]
#   set_location_assignment PIN_H17 -to RED[1]
#   set_location_assignment PIN_H20 -to RED[2]
#   set_location_assignment PIN_H21 -to RED[3]

#   set_location_assignment PIN_H22 -to GREEN[0]
#   set_location_assignment PIN_J17 -to GREEN[1]
#   set_location_assignment PIN_K17 -to GREEN[2]
#   set_location_assignment PIN_J21 -to GREEN[3]

;# Assignments=>Device..=>Device and pin options=>Dual Purpose Pins=>nCEO=?Used as regular I/O
#   set_location_assignment PIN_K22 -to BLUE[0] ;# nCE0 ... read privous comment
#   set_location_assignment PIN_K21 -to BLUE[1]
#   set_location_assignment PIN_J22 -to BLUE[2]
#   set_location_assignment PIN_K18 -to BLUE[3]

#   set_location_assignment PIN_L21 -to HORIZ_SYNC
#   set_location_assignment PIN_L22 -to VERT_SYNC


   ;##################################################
   ;# PS2 interface (Kyboard ot Mouse)               #
   ;# a splitting Y cable can be used to have both ! #
   ;##################################################

#   set_location_assignment PIN_P22 -to PS2_KBCLK ;# pin6
#   set_location_assignment PIN_P21 -to PS2_KBDAT ;# pin1

#   set_location_assignment PIN_R21 -to PS2_MSCLK ;# pin8
#   set_location_assignment PIN_R22 -to PS2_MSDAT ;# pin2


   ;#####################
   ;# SD Card interface #
   ;#####################

#   set_location_assignment PIN_Y21  -to SD_CLK
#   set_location_assignment PIN_Y22  -to SD_CMD
#   set_location_assignment PIN_AA22 -to SD_DAT0
#   set_location_assignment PIN_W21  -to SD_DAT3

#   set_location_assignment PIN_W20  -to SD_WP_N  ;# FLASH?


   ;#########
   ;# SDRAM #
   ;#########
   
   ;# SDRASM address
#   set_location_assignment PIN_C8 -to DRAM_ADDR[12]
#   set_location_assignment PIN_A7 -to DRAM_ADDR[11]
#   set_location_assignment PIN_B4 -to DRAM_ADDR[10]
#   set_location_assignment PIN_B7 -to DRAM_ADDR[9]
#   set_location_assignment PIN_C7 -to DRAM_ADDR[8]
#   set_location_assignment PIN_A6 -to DRAM_ADDR[7]
#   set_location_assignment PIN_B6 -to DRAM_ADDR[6]
#   set_location_assignment PIN_C6 -to DRAM_ADDR[5]
#   set_location_assignment PIN_A5 -to DRAM_ADDR[4]
#   set_location_assignment PIN_C3 -to DRAM_ADDR[3]
#   set_location_assignment PIN_B3 -to DRAM_ADDR[2]
#   set_location_assignment PIN_A3 -to DRAM_ADDR[1]
#   set_location_assignment PIN_C4 -to DRAM_ADDR[0]
   
   ;# SDRASM data
#   set_location_assignment PIN_F10 -to DRAM_DQ[15]
#   set_location_assignment PIN_E10 -to DRAM_DQ[14]
#   set_location_assignment PIN_A10 -to DRAM_DQ[13]
#   set_location_assignment PIN_B10 -to DRAM_DQ[12]
#   set_location_assignment PIN_C10 -to DRAM_DQ[11]
#   set_location_assignment PIN_A9  -to DRAM_DQ[10]
#   set_location_assignment PIN_B9  -to DRAM_DQ[9]
#   set_location_assignment PIN_A8  -to DRAM_DQ[8]
#   set_location_assignment PIN_F8  -to DRAM_DQ[7]
#   set_location_assignment PIN_H9  -to DRAM_DQ[6]
#   set_location_assignment PIN_G9  -to DRAM_DQ[5]
#   set_location_assignment PIN_F9  -to DRAM_DQ[4]
#   set_location_assignment PIN_E9  -to DRAM_DQ[3]
#   set_location_assignment PIN_H10 -to DRAM_DQ[2]
#   set_location_assignment PIN_G10 -to DRAM_DQ[1]
#   set_location_assignment PIN_D10 -to DRAM_DQ[0]

   ;# SDRASM controls
#   set_location_assignment PIN_B5 -to DRAM_BA_0
#   set_location_assignment PIN_A4 -to DRAM_BA_1
#   set_location_assignment PIN_G8 -to DRAM_CAS_N
#   set_location_assignment PIN_E6 -to DRAM_CKE
#   set_location_assignment PIN_E5 -to DRAM_CLK
#   set_location_assignment PIN_G7 -to DRAM_CS_N
#   set_location_assignment PIN_E7 -to DRAM_LDQM
#   set_location_assignment PIN_F7 -to DRAM_RAS_N
#   set_location_assignment PIN_B8 -to DRAM_UDQM
#   set_location_assignment PIN_D6 -to DRAM_WE_N


   ;################
   ;# FLASH Memory #
   ;################
   
   ;# FLASH address
#   set_location_assignment PIN_R2  -to FL_ADDR[21]
#   set_location_assignment PIN_P3  -to FL_ADDR[20]
#   set_location_assignment PIN_P1  -to FL_ADDR[19]
#   set_location_assignment PIN_M6  -to FL_ADDR[18]
#   set_location_assignment PIN_M5  -to FL_ADDR[17]
#   set_location_assignment PIN_AA2 -to FL_ADDR[16]
#   set_location_assignment PIN_L6  -to FL_ADDR[15]
#   set_location_assignment PIN_L7  -to FL_ADDR[14]
#   set_location_assignment PIN_M1  -to FL_ADDR[13]
#   set_location_assignment PIN_M2  -to FL_ADDR[12]
#   set_location_assignment PIN_M3  -to FL_ADDR[11]
#   set_location_assignment PIN_N1  -to FL_ADDR[10]
#   set_location_assignment PIN_N2  -to FL_ADDR[9]
#   set_location_assignment PIN_P2  -to FL_ADDR[8]
#   set_location_assignment PIN_M4  -to FL_ADDR[7]
#   set_location_assignment PIN_M8  -to FL_ADDR[6]
#   set_location_assignment PIN_N6  -to FL_ADDR[5]
#   set_location_assignment PIN_N5  -to FL_ADDR[4]
#   set_location_assignment PIN_N7  -to FL_ADDR[3]
#   set_location_assignment PIN_P6  -to FL_ADDR[2]
#   set_location_assignment PIN_P5  -to FL_ADDR[1]
#   set_location_assignment PIN_P7  -to FL_ADDR[0]

   ;# FLASH data
#   set_location_assignment PIN_R7 -to FL_DQ[0]
#   set_location_assignment PIN_P8 -to FL_DQ[1]
#   set_location_assignment PIN_R8 -to FL_DQ[2]
#   set_location_assignment PIN_U1 -to FL_DQ[3]
#   set_location_assignment PIN_V2 -to FL_DQ[4]
#   set_location_assignment PIN_V3 -to FL_DQ[5]
#   set_location_assignment PIN_W1 -to FL_DQ[6]
#   set_location_assignment PIN_Y1 -to FL_DQ[7]
#   set_location_assignment PIN_T5 -to FL_DQ[8]
#   set_location_assignment PIN_T7 -to FL_DQ[9]
#   set_location_assignment PIN_T4 -to FL_DQ[10]
#   set_location_assignment PIN_U2 -to FL_DQ[11]
#   set_location_assignment PIN_V1 -to FL_DQ[12]
#   set_location_assignment PIN_V4 -to FL_DQ[13]
#   set_location_assignment PIN_W2 -to FL_DQ[14]

   ;# FLASH control
#   set_location_assignment PIN_R6 -to FL_OE_N
#   set_location_assignment PIN_R1 -to FL_RST_N
#   set_location_assignment PIN_P4 -to FL_WE_N

#   set_location_assignment PIN_AA1 -to FL_BYTE_N
#   set_location_assignment PIN_N8 -to FL_CE_N

#   set_location_assignment PIN_M7 -to FL_RY
#   set_location_assignment PIN_T3 -to FL_WP_N
#   set_location_assignment PIN_Y2 -to FL_DQ15_AM1


   ;#####################################
   ;# JP0 - the left connector (GPIO 0) #
   ;#####################################

#   set_location_assignment PIN_U7   -to GPIO0[31]       ;# pin 40
#   set_location_assignment PIN_V5   -to GPIO0[30]       ;# pin 39
#   set_location_assignment PIN_W6   -to GPIO0[29]       ;# pin 38
#   set_location_assignment PIN_W7   -to GPIO0[28]       ;# pin 37
#   set_location_assignment PIN_V8   -to GPIO0[27]       ;# pin 36
#   set_location_assignment PIN_T8   -to GPIO0[26]       ;# pin 35
#   set_location_assignment PIN_W10  -to GPIO0[25]       ;# pin 34
#   set_location_assignment PIN_Y10  -to GPIO0[24]       ;# pin 33
#   set_location_assignment PIN_V11  -to GPIO0[23]       ;# pin 32
#   set_location_assignment PIN_R10  -to GPIO0[22]       ;# pin 31
# GND                                                ;# pin 30
# +3.3 Volt                                          ;# pin 29 
#   set_location_assignment PIN_V12  -to GPIO0[21]       ;# pin 28
#   set_location_assignment PIN_U13  -to GPIO0[20]       ;# pin 27
#   set_location_assignment PIN_W13  -to GPIO0[19]       ;# pin 26
#   set_location_assignment PIN_Y13  -to GPIO0[18]       ;# pin 25
#   set_location_assignment PIN_U14  -to GPIO0[17]       ;# pin 24
#   set_location_assignment PIN_V14  -to GPIO0[16]       ;# pin 25
#   set_location_assignment PIN_AA4  -to GPIO0[15]       ;# pin 22
#   set_location_assignment PIN_AA3  -to GPIO0_CLKOUT[1] ;# pin 21
#   set_location_assignment PIN_AB4  -to GPIO0[14]       ;# pin 20
#   set_location_assignment PIN_AB3  -to GPIO0_CLKOUT[0] ;# pin 19
#   set_location_assignment PIN_AA5  -to GPIO0[13]       ;# pin 18
#   set_location_assignment PIN_AB5  -to GPIO0[12]       ;# pin 17 
#   set_location_assignment PIN_AA8  -to GPIO0[11]       ;# pin 16
#   set_location_assignment PIN_AB8  -to GPIO0[10]       ;# pin 15
#   set_location_assignment PIN_AA10 -to GPIO0[9]        ;# pin 14
#   set_location_assignment PIN_AB10 -to GPIO0[8]        ;# pin 13
# GND                                                ;# pin 12
# +5 Volt                                            ;# pin 11 
#   set_location_assignment PIN_AA13 -to GPIO0[7]        ;# pin 10
#   set_location_assignment PIN_AB13 -to GPIO0[6]        ;# pin  9
#   set_location_assignment PIN_AB14 -to GPIO0[5]        ;# pin  8
#   set_location_assignment PIN_AA14 -to GPIO0[4]        ;# pin  7
#   set_location_assignment PIN_AB15 -to GPIO0[3]        ;# pin  6
#   set_location_assignment PIN_AA15 -to GPIO0[2]        ;# pin  5
#   set_location_assignment PIN_AA16 -to GPIO0[1]        ;# pin  4
#   set_location_assignment PIN_AA12 -to GPIO0_CLKIN[1]  ;# pin  3
#   set_location_assignment PIN_AB16 -to GPIO0[0]        ;# pin  2
#   set_location_assignment PIN_AB12 -to GPIO0_CLKIN[0]  ;# pin  1


   ;######################################
   ;# JP1 - the right connector (GPIO 1) #
   ;######################################

#   set_location_assignment PIN_V7   -to GPIO1[31]       ;# pin 40 
#   set_location_assignment PIN_V6   -to GPIO1[30]       ;# pin 39
#   set_location_assignment PIN_U8   -to GPIO1[29]       ;# pin 38
#   set_location_assignment PIN_Y7   -to GPIO1[28]       ;# pin 37
#   set_location_assignment PIN_T9   -to GPIO1[27]       ;# pin 36
#   set_location_assignment PIN_U9   -to GPIO1[26]       ;# pin 35
#   set_location_assignment PIN_T10  -to GPIO1[25]       ;# pin 34
#   set_location_assignment PIN_U10  -to GPIO1[24]       ;# pin 33
#   set_location_assignment PIN_R12  -to GPIO1[23]       ;# pin 32
#   set_location_assignment PIN_R11  -to GPIO1[22]       ;# pin 31
# GND                                                ;# pin 30
# +3.3 Volt                                          ;# pin 29 
#   set_location_assignment PIN_T12  -to GPIO1[21]       ;# pin 28
#   set_location_assignment PIN_U12  -to GPIO1[20]       ;# pin 27
#   set_location_assignment PIN_R14  -to GPIO1[19]       ;# pin 26
#   set_location_assignment PIN_T14  -to GPIO1[18]       ;# pin 25
#   set_location_assignment PIN_AB7  -to GPIO1[17]       ;# pin 24
#   set_location_assignment PIN_AA7  -to GPIO1[16]       ;# pin 23
#   set_location_assignment PIN_AA9  -to GPIO1[15]       ;# pin 22
#   set_location_assignment PIN_T16  -to GPIO1_CLKOUT[1] ;# pin 21
#   set_location_assignment PIN_AB9  -to GPIO1[14]       ;# pin 20
#   set_location_assignment PIN_R16  -to GPIO1_CLKOUT[0] ;# pin 19
#   set_location_assignment PIN_V15  -to GPIO1[13]       ;# pin 18
#   set_location_assignment PIN_W15  -to GPIO1[12]       ;# pin 17
#   set_location_assignment PIN_T15  -to GPIO1[11]       ;# pin 16 
#   set_location_assignment PIN_U15  -to GPIO1[10]       ;# pin 15
#   set_location_assignment PIN_W17  -to GPIO1[9]        ;# pin 14
#   set_location_assignment PIN_Y17  -to GPIO1[8]        ;# pin 13
# GND                                                ;# pin 12
# +5 Volt                                            ;# pin 11 
#   set_location_assignment PIN_AB17 -to GPIO1[7]        ;# pin 10
#   set_location_assignment PIN_AA17 -to GPIO1[6]        ;# pin  9
#   set_location_assignment PIN_AA18 -to GPIO1[5]        ;# pin  8
#   set_location_assignment PIN_AB18 -to GPIO1[4]        ;# pin  7
#   set_location_assignment PIN_AB19 -to GPIO1[3]        ;# pin  6 
#   set_location_assignment PIN_AA19 -to GPIO1[2]        ;# pin  5
#   set_location_assignment PIN_AB20 -to GPIO1[1]        ;# pin  4
#   set_location_assignment PIN_AA11 -to GPIO1_CLKIN[1]  ;# pin  3
#   set_location_assignment PIN_AA20 -to GPIO1[0]        ;# pin  2
#   set_location_assignment PIN_AB11 -to GPIO1_CLKIN[0]  ;# pin  1


   ;#############################################################
   ;# AddOn card placed on JP1 - the right (external) connector #
   ;#############################################################

#   set_location_assignment PIN_V7   -to TX2_BT    ;# pin 40 Bluetooth on board
#   set_location_assignment PIN_U8   -to RX2_BT    ;# pin 38 Bluetooth on board
#   set_location_assignment PIN_T9   -to TX3_MP3   ;# pin 36 MP3 player on board
#   set_location_assignment PIN_T10  -to RX3_MP3   ;# pin 34 MP3 player on board
#   set_location_assignment PIN_R12  -to TX1       ;# pin 32 PC (FTDI) on board
#   set_location_assignment PIN_T12  -to RX1       ;# pin 28 PC (FTDI) on board
#   set_location_assignment PIN_R14  -to B_LED     ;# pin 26 RGB LED on board
#   set_location_assignment PIN_AB7  -to G_LED     ;# pin 24 RGB LED on board
#   set_location_assignment PIN_AA9  -to R_LED     ;# pin 22 RGB LED on board
#   set_location_assignment PIN_W17  -to SPEAKER   ;# pin 14 mini SPEARKER on board
#   set_location_assignment PIN_AB19 -to SP_R      ;# pin  6 Right AUX audio on board
#   set_location_assignment PIN_AB20 -to SP_L      ;# pin  4 Left  AUX audio on board


   ;##############################################
   ;# Device selection & Making connections safe #
   ;##############################################

   ;# Analysis & Synthesis Assignments
   set_global_assignment -name FAMILY "Cyclone III"
   set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
   set_global_assignment -name DEVICE_FILTER_PIN_COUNT 484
   set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 6
   
   ;# fitter assignments
   set_global_assignment -name DEVICE EP3C16F484C6
   
      
   ;# prefered in on the DE0 because LEDs DO NOT lite up weakly
   set_global_assignment -name RESERVE_ALL_UNUSED_PINS_WEAK_PULLUP "AS INPUT TRI-STATED"
   ;# Not prefered on the DE0 because LEDs lite up weakly
   ;# set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"

         
   set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (VHDL)"
   set_global_assignment -name EDA_OUTPUT_DATA_FORMAT VHDL -section_id eda_simulation

   ;# importnat to avoid this nasty situation
   set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"

   ;# newest versions of HDLs
   set_global_assignment -name VHDL_INPUT_VERSION VHDL_2008
   set_global_assignment -name VERILOG_INPUT_VERSION SYSTEMVERILOG_2005
         
   puts " And making the design safer !   "
   puts "================================="
   
   ;# run compilation after pin assignment
#   load_package flow
#   execute_flow -compile
}