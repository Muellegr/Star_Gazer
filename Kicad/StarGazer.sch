EESchema Schematic File Version 4
LIBS:StarGazer-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 6700 2950 2    50   BiDi ~ 0
I2C_SDA
Text GLabel 6700 2850 2    50   BiDi ~ 0
I2C_SCL
Text GLabel 6700 3400 2    50   BiDi ~ 0
SHIFT_REG_LATCH
Text GLabel 8150 3200 2    50   BiDi ~ 0
SHIFT_REG_CLK
Text GLabel 6700 3300 2    50   BiDi ~ 0
SHIFT_REG_DATA_IN
Text GLabel 6700 4400 2    47   BiDi ~ 0
UI_BUTTON
Text GLabel 6700 4600 2    47   BiDi ~ 0
UI_JOY_X
Text GLabel 6700 4500 2    47   BiDi ~ 0
UI_JOY_Y
$Sheet
S -13400 250  10700 7900
U 5F580D08
F0 "Schematic_Test_Power" 50
F1 "Schematic_Test_Power.sch" 50
$EndSheet
$Sheet
S 12400 -100 10850 9900
U 5F580392
F0 "Schematic_Test_Digital" 50
F1 "Schematic_Test_Digital.sch" 50
$EndSheet
Text GLabel 6700 3500 2    50   BiDi ~ 0
SHIFT_REG_OUTPUT_ENABLE_N
$Comp
L StarGazer:STM32G070KBT6 U101
U 1 1 5F6447DA
P 5600 2600
F 0 "U101" H 5600 2650 50  0000 C CNN
F 1 "STM32G070KBT6" H 5600 2550 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 5600 2600 50  0001 C CNN
F 3 "" H 5600 2600 50  0001 C CNN
F 4 "64Mhz        Flash=128Kb, SRAM=32Kb" H 5600 2600 50  0001 C CNN "part_details"
F 5 "ARM Cortex M0+" H 5600 2600 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/stmicroelectronics/STM32G070KBT6/497-STM32G070KBT6-ND/10326752" H 5600 2600 50  0001 C CNN "part_url"
	1    5600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3300 6600 3300
Wire Wire Line
	6600 3400 6700 3400
Wire Wire Line
	6700 3500 6600 3500
Wire Wire Line
	6700 2850 6600 2850
Wire Wire Line
	6700 2950 6600 2950
Wire Wire Line
	3900 2950 4600 2950
Connection ~ 3900 2950
Connection ~ 3900 2700
Wire Wire Line
	3900 2700 3900 2950
Connection ~ 4500 2700
Wire Wire Line
	4500 2850 4600 2850
Wire Wire Line
	4500 2700 4500 2850
Connection ~ 4500 2350
Wire Wire Line
	4500 2000 4500 2350
Wire Wire Line
	4300 2000 4500 2000
Wire Wire Line
	4300 2350 4500 2350
Wire Wire Line
	4500 2700 4300 2700
Wire Wire Line
	4500 2350 4500 2700
Wire Wire Line
	3900 2700 4100 2700
Wire Wire Line
	3900 2350 3900 2700
Wire Wire Line
	4100 2350 3900 2350
Wire Wire Line
	3900 3000 3900 2950
$Comp
L power:GND #PWR0102
U 1 1 5F6996FC
P 3900 3000
F 0 "#PWR0102" H 3900 2750 50  0001 C CNN
F 1 "GND" H 3905 2827 50  0000 C CNN
F 2 "" H 3900 3000 50  0001 C CNN
F 3 "" H 3900 3000 50  0001 C CNN
	1    3900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3050 4500 3050
Connection ~ 4000 3400
Wire Wire Line
	4000 3400 4600 3400
Wire Wire Line
	3900 3400 4000 3400
Wire Wire Line
	4000 3400 4000 3450
Wire Wire Line
	4000 3800 4000 3750
Wire Wire Line
	3900 3300 4600 3300
Wire Wire Line
	4500 3600 4600 3600
Wire Wire Line
	4500 3700 4600 3700
Text GLabel 4500 3700 0    50   BiDi ~ 0
OSC_OUT
Text GLabel 4500 3600 0    50   BiDi ~ 0
OSC_IN
$Comp
L Device:C_Small C102
U 1 1 5F4EB59B
P 4200 2700
F 0 "C102" V 3971 2700 50  0000 C CNN
F 1 "4.7uF" V 4062 2700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4200 2700 50  0001 C CNN
F 3 "~" H 4200 2700 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/885012107009/732-7619-1-ND/5454246" H 4200 2700 50  0001 C CNN "part_url"
F 5 "Capactitor - Bypass" H 4200 2700 50  0001 C CNN "part_name"
	1    4200 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C101
U 1 1 5F4EAC14
P 4200 2350
F 0 "C101" V 3971 2350 50  0000 C CNN
F 1 "4.7uF" V 4062 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4200 2350 50  0001 C CNN
F 3 "~" H 4200 2350 50  0001 C CNN
F 4 "" V 4200 2350 50  0001 C CNN "TestField"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/885012107009/732-7619-1-ND/5454246" H 4200 2350 50  0001 C CNN "part_url"
F 6 "Capactitor - Bypass" H 4200 2350 50  0001 C CNN "part_name"
	1    4200 2350
	0    1    1    0   
$EndComp
Text GLabel 4300 2000 0    51   BiDi ~ 0
V_REG
$Comp
L power:GND #PWR0101
U 1 1 5F3FD5C8
P 4000 3800
F 0 "#PWR0101" H 4000 3550 50  0001 C CNN
F 1 "GND" H 4005 3627 50  0000 C CNN
F 2 "" H 4000 3800 50  0001 C CNN
F 3 "" H 4000 3800 50  0001 C CNN
	1    4000 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R101
U 1 1 5F3FCFD6
P 4000 3600
F 0 "R101" V 3793 3600 50  0000 C CNN
F 1 "10kohm" V 3884 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3930 3600 50  0001 C CNN
F 3 "~" H 4000 3600 50  0001 C CNN
F 4 "" H 4000 3600 50  0001 C CNN "Name"
F 5 "" H 4000 3600 50  0001 C CNN "part_details"
F 6 "Resistor - Pull Up" H 4000 3600 50  0001 C CNN "part_name"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC1206JR-0710KL/311-10KERCT-ND/732156" H 4000 3600 50  0001 C CNN "part_url"
	1    4000 3600
	1    0    0    -1  
$EndComp
Text GLabel 4500 3050 0    50   BiDi ~ 0
RESET_N
Text GLabel 3900 3400 0    50   BiDi ~ 0
SWCLK
Text GLabel 3900 3300 0    50   BiDi ~ 0
SWDIO
Text Notes 7000 2000 0    63   ~ 0
STM32G070KB\nFLASH : 128Kb\nSRAM  : 32KB\n64MHz (max)\n2.0v - 3.6v\n\nAll unused GPIO should be set as output through programming.\n\nSPI1_NSS (slave select) can be set as GPIO if unused.\nSPI1_MISO (master in) can be set as GPIO if unused.
Wire Notes Line
	6950 950  6950 2500
Wire Notes Line
	10200 2500 10200 950 
Wire Notes Line
	10200 950  6950 950 
Wire Notes Line
	6950 2500 10200 2500
$Comp
L Device:R_Small R102
U 1 1 5F78816D
P 7200 5800
AR Path="/5F78816D" Ref="R102"  Part="1" 
AR Path="/5F580D08/5F78816D" Ref="R?"  Part="1" 
F 0 "R102" V 7004 5800 50  0000 C CNN
F 1 "180ohm" V 7095 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7200 5800 50  0001 C CNN
F 3 "~" H 7200 5800 50  0001 C CNN
F 4 "Resistor - LED Status" H 7200 5800 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/RNCP1206FTD180R/RNCP1206FTD180RCT-ND/2240658" H 7200 5800 50  0001 C CNN "part_url"
	1    7200 5800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D102
U 1 1 5F788176
P 6900 5550
AR Path="/5F788176" Ref="D102"  Part="1" 
AR Path="/5F580D08/5F788176" Ref="D?"  Part="1" 
F 0 "D102" H 6893 5766 50  0000 C CNN
F 1 "Red" H 6893 5675 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 6900 5550 50  0001 C CNN
F 3 "~" H 6900 5550 50  0001 C CNN
F 4 "Debug Light" H 6900 5550 50  0001 C CNN "part_details"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120RS75000/732-5030-1-ND/4490054" H 6900 5550 50  0001 C CNN "part_url"
F 6 "LED - Red" H 6900 5550 50  0001 C CNN "part_name"
	1    6900 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D101
U 1 1 5F78817F
P 6900 5150
AR Path="/5F78817F" Ref="D101"  Part="1" 
AR Path="/5F580D08/5F78817F" Ref="D?"  Part="1" 
F 0 "D101" H 6893 5366 50  0000 C CNN
F 1 "Green" H 6893 5275 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 6900 5150 50  0001 C CNN
F 3 "~" H 6900 5150 50  0001 C CNN
F 4 "Debug Light" H 6900 5150 50  0001 C CNN "part_details"
F 5 "LED - Green" H 6900 5150 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 6900 5150 50  0001 C CNN "part_url"
	1    6900 5150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F79138F
P 7200 5950
F 0 "#PWR0103" H 7200 5700 50  0001 C CNN
F 1 "GND" H 7205 5777 50  0000 C CNN
F 2 "" H 7200 5950 50  0001 C CNN
F 3 "" H 7200 5950 50  0001 C CNN
	1    7200 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H103
U 1 1 5F61FCE3
P 4800 7200
F 0 "H103" H 4900 7246 50  0000 L CNN
F 1 "MountingHole" H 4900 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4800 7200 50  0001 C CNN
F 3 "~" H 4800 7200 50  0001 C CNN
F 4 "DO_NOT_SHOW" H 4800 7200 50  0001 C CNN "part_details"
	1    4800 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H104
U 1 1 5F61FCEA
P 4800 7400
F 0 "H104" H 4900 7446 50  0000 L CNN
F 1 "MountingHole" H 4900 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4800 7400 50  0001 C CNN
F 3 "~" H 4800 7400 50  0001 C CNN
F 4 "DO_NOT_SHOW" H 4800 7400 50  0001 C CNN "part_details"
	1    4800 7400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H101
U 1 1 5F61FCF1
P 4800 6750
F 0 "H101" H 4900 6796 50  0000 L CNN
F 1 "MountingHole" H 4900 6705 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4800 6750 50  0001 C CNN
F 3 "~" H 4800 6750 50  0001 C CNN
F 4 "DO_NOT_SHOW" H 4800 6750 50  0001 C CNN "part_details"
	1    4800 6750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H102
U 1 1 5F61FCF8
P 4800 6950
F 0 "H102" H 4900 6996 50  0000 L CNN
F 1 "MountingHole" H 4900 6905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4800 6950 50  0001 C CNN
F 3 "~" H 4800 6950 50  0001 C CNN
F 4 "DO_NOT_SHOW" H 4800 6950 50  0001 C CNN "part_details"
	1    4800 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5550 7200 5550
Wire Wire Line
	7200 5550 7200 5700
Wire Wire Line
	7050 5150 7200 5150
Wire Wire Line
	7200 5150 7200 5550
Connection ~ 7200 5550
Wire Wire Line
	7200 5950 7200 5900
Wire Wire Line
	8100 3550 8100 3500
$Comp
L power:GND #PWR0104
U 1 1 5F70674D
P 8100 3550
F 0 "#PWR0104" H 8100 3300 50  0001 C CNN
F 1 "GND" H 8105 3377 50  0000 C CNN
F 2 "" H 8100 3550 50  0001 C CNN
F 3 "" H 8100 3550 50  0001 C CNN
	1    8100 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R103
U 1 1 5F706757
P 8100 3350
F 0 "R103" V 7893 3350 50  0000 C CNN
F 1 "10kohm" V 7984 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8030 3350 50  0001 C CNN
F 3 "~" H 8100 3350 50  0001 C CNN
F 4 "" H 8100 3350 50  0001 C CNN "Name"
F 5 "" H 8100 3350 50  0001 C CNN "part_details"
F 6 "Resistor - Pull Up" H 8100 3350 50  0001 C CNN "part_name"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC1206JR-0710KL/311-10KERCT-ND/732156" H 8100 3350 50  0001 C CNN "part_url"
	1    8100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3200 8100 3200
Connection ~ 8100 3200
Wire Wire Line
	8100 3200 8150 3200
Text GLabel 6700 3800 2    50   BiDi ~ 0
USART1_RX
Wire Wire Line
	6600 5550 6750 5550
Wire Wire Line
	6600 5150 6750 5150
Wire Wire Line
	6600 3800 6700 3800
Wire Wire Line
	6700 4500 6600 4500
Wire Wire Line
	6600 4600 6700 4600
Wire Wire Line
	6600 4400 6700 4400
Wire Wire Line
	6600 4100 6700 4100
Text GLabel 6700 4100 2    50   BiDi ~ 0
USART1_TX
$EndSCHEMATC
