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
Wire Wire Line
	4800 4075 4375 4075
Wire Wire Line
	4800 4175 4375 4175
Text GLabel 4375 4075 0    50   BiDi ~ 0
OSC_IN
Text GLabel 4375 4175 0    50   BiDi ~ 0
OSC_OUT
$Comp
L power:GND #PWR0101
U 1 1 5F3EE3F5
P 5300 4850
F 0 "#PWR0101" H 5300 4600 50  0001 C CNN
F 1 "GND" H 5305 4677 50  0000 C CNN
F 2 "" H 5300 4850 50  0001 C CNN
F 3 "" H 5300 4850 50  0001 C CNN
	1    5300 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4575 5300 4850
Wire Wire Line
	6100 3975 6200 3975
Text GLabel 6200 4275 2    50   BiDi ~ 0
SWDIO
Text GLabel 6200 4375 2    50   BiDi ~ 0
SWCLK
Wire Wire Line
	6100 4375 6200 4375
Wire Wire Line
	6100 4275 6200 4275
Text GLabel 6200 4175 2    50   BiDi ~ 0
I2C_SDA
Text GLabel 6200 4075 2    50   BiDi ~ 0
I2C_SCL
Wire Wire Line
	6100 4175 6200 4175
Wire Wire Line
	6100 4075 6200 4075
Wire Wire Line
	4800 3275 4375 3275
Text GLabel 4375 3275 0    50   BiDi ~ 0
RESET_N
$Comp
L MCU_ST_STM32F0:STM32F070F6Px U1
U 1 1 5F3ECB3C
P 5500 3775
F 0 "U1" H 5450 2886 50  0000 C CNN
F 1 "STM32F070F6Px" H 5450 2795 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 4900 3075 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00141386.pdf" H 5500 3775 50  0001 C CNN
F 4 "Cortex M0 48MHz" H 5500 3775 50  0001 C CNN "part_details"
F 5 "STM32F070F6P6TR" H 5500 3775 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/stmicroelectronics/STM32F070F6P6TR/497-17354-1-ND/8024125" H 5500 3775 50  0001 C CNN "part_url"
	1    5500 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3475 4800 3475
$Comp
L Device:R R2
U 1 1 5F3FCFD6
P 4500 3475
F 0 "R2" V 4293 3475 50  0000 C CNN
F 1 "10k" V 4384 3475 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4430 3475 50  0001 C CNN
F 3 "~" H 4500 3475 50  0001 C CNN
F 4 "" H 4500 3475 50  0001 C CNN "Name"
F 5 "" H 4500 3475 50  0001 C CNN "part_details"
F 6 "Resistor - Pull Up" H 4500 3475 50  0001 C CNN "part_name"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC1206JR-0710KL/311-10KERCT-ND/732156" H 4500 3475 50  0001 C CNN "part_url"
	1    4500 3475
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4175 3475 4350 3475
Wire Wire Line
	4175 3475 4175 3550
$Comp
L power:GND #PWR0112
U 1 1 5F3FD5C8
P 4175 3550
F 0 "#PWR0112" H 4175 3300 50  0001 C CNN
F 1 "GND" H 4180 3377 50  0000 C CNN
F 2 "" H 4175 3550 50  0001 C CNN
F 3 "" H 4175 3550 50  0001 C CNN
	1    4175 3550
	1    0    0    -1  
$EndComp
Text GLabel 5300 2175 0    51   BiDi ~ 0
V_REG
$Comp
L Device:C_Small C3
U 1 1 5F4EAC14
P 5000 2500
F 0 "C3" V 4771 2500 50  0000 C CNN
F 1 "100nF" V 4862 2500 50  0000 C CNN
F 2 "" H 5000 2500 50  0001 C CNN
F 3 "~" H 5000 2500 50  0001 C CNN
F 4 "" V 5000 2500 50  0001 C CNN "TestField"
	1    5000 2500
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F4EB59B
P 5000 2850
F 0 "C4" V 4771 2850 50  0000 C CNN
F 1 "4.7uF" V 4862 2850 50  0000 C CNN
F 2 "" H 5000 2850 50  0001 C CNN
F 3 "~" H 5000 2850 50  0001 C CNN
	1    5000 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 2175 5300 2500
Wire Wire Line
	5100 2850 5300 2850
Connection ~ 5300 2850
Wire Wire Line
	5100 2500 5300 2500
Connection ~ 5300 2500
Wire Wire Line
	5300 2500 5300 2850
Wire Wire Line
	4900 2500 4775 2500
Wire Wire Line
	4775 2500 4775 2850
Wire Wire Line
	4900 2850 4775 2850
Connection ~ 4775 2850
Wire Wire Line
	4775 2850 4775 2950
$Comp
L power:GND #PWR0113
U 1 1 5F4F9B1C
P 4775 2950
F 0 "#PWR0113" H 4775 2700 50  0001 C CNN
F 1 "GND" H 4780 2777 50  0000 C CNN
F 2 "" H 4775 2950 50  0001 C CNN
F 3 "" H 4775 2950 50  0001 C CNN
	1    4775 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2850 5300 3075
Wire Wire Line
	5300 2850 5400 2850
Wire Wire Line
	5400 2850 5400 3075
Wire Wire Line
	6100 3575 6175 3575
Text GLabel 6175 3575 2    50   BiDi ~ 0
SHIFT_REG_LATCH
$Comp
L power:GND #PWR0114
U 1 1 5F5511AD
P 8050 3775
F 0 "#PWR0114" H 8050 3525 50  0001 C CNN
F 1 "GND" H 8055 3602 50  0000 C CNN
F 2 "" H 8050 3775 50  0001 C CNN
F 3 "" H 8050 3775 50  0001 C CNN
	1    8050 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3775 8050 3675
Wire Wire Line
	6100 3775 6200 3775
Text GLabel 7000 3750 2    50   BiDi ~ 0
SPI1_SCK
Text GLabel 6200 3775 2    50   BiDi ~ 0
SHIFT_REG_CLK
Text GLabel 6200 3975 2    50   BiDi ~ 0
SHIFT_REG_DATA_IN
Text GLabel 7025 3975 2    50   Output ~ 0
SPI1_MOSI
Text GLabel 7000 3875 2    50   Input ~ 0
SPI1_MISO
Wire Wire Line
	8050 3675 7900 3675
Wire Wire Line
	7600 3675 6100 3675
$Comp
L Device:R R7
U 1 1 5F54B516
P 7750 3675
F 0 "R7" V 7543 3675 50  0000 C CNN
F 1 "10k" V 7634 3675 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7680 3675 50  0001 C CNN
F 3 "~" H 7750 3675 50  0001 C CNN
F 4 "" H 7750 3675 50  0001 C CNN "Name"
F 5 "" H 7750 3675 50  0001 C CNN "part_details"
F 6 "Resistor - Pull Up" H 7750 3675 50  0001 C CNN "part_name"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC1206JR-0710KL/311-10KERCT-ND/732156" H 7750 3675 50  0001 C CNN "part_url"
	1    7750 3675
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 3375 6175 3375
Text GLabel 4375 4375 0    47   BiDi ~ 0
UI_BUTTON
Text GLabel 6175 3375 2    47   BiDi ~ 0
UI_JOY_X
Text GLabel 6175 3475 2    47   BiDi ~ 0
UI_JOY_Y
Wire Wire Line
	4375 4375 4800 4375
Wire Wire Line
	6100 3475 6175 3475
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
Text GLabel 6175 3275 2    50   BiDi ~ 0
SHIFT_REG_RESET_N
Wire Wire Line
	6100 3275 6175 3275
$EndSCHEMATC
