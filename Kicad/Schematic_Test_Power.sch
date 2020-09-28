EESchema Schematic File Version 4
LIBS:StarGazer-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
	3025 4095 2325 4095
Wire Wire Line
	3025 4295 2975 4295
Wire Wire Line
	3025 4495 2925 4495
Wire Wire Line
	2925 4495 2925 4695
$Comp
L power:GND #PWR?
U 1 1 5F6E4AFE
P 2925 4695
AR Path="/5F6E4AFE" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4AFE" Ref="#PWR0204"  Part="1" 
F 0 "#PWR0204" H 2925 4445 50  0001 C CNN
F 1 "GND" H 2930 4522 50  0000 C CNN
F 2 "" H 2925 4695 50  0001 C CNN
F 3 "" H 2925 4695 50  0001 C CNN
	1    2925 4695
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 4295 4875 4295
Wire Wire Line
	4975 4295 4975 4595
Wire Wire Line
	4975 4595 4875 4595
Wire Wire Line
	4975 4295 5075 4295
Connection ~ 4975 4295
Wire Wire Line
	3975 4495 4075 4495
Wire Wire Line
	4075 4495 4075 4595
Wire Wire Line
	4075 4595 4225 4595
Wire Wire Line
	3975 4295 4225 4295
Wire Wire Line
	4525 4295 4675 4295
Wire Wire Line
	4525 4595 4675 4595
Text GLabel 5075 4295 2    50   BiDi ~ 0
V_USB
Text GLabel 2225 4095 0    50   BiDi ~ 0
V_USB
Wire Wire Line
	2675 4295 2625 4295
Wire Wire Line
	2625 4295 2625 4695
$Comp
L power:GND #PWR?
U 1 1 5F6E4B38
P 2625 4695
AR Path="/5F6E4B38" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B38" Ref="#PWR0203"  Part="1" 
F 0 "#PWR0203" H 2625 4445 50  0001 C CNN
F 1 "GND" H 2630 4522 50  0000 C CNN
F 2 "" H 2625 4695 50  0001 C CNN
F 3 "" H 2625 4695 50  0001 C CNN
	1    2625 4695
	1    0    0    -1  
$EndComp
Wire Wire Line
	2325 4095 2325 4295
Connection ~ 2325 4095
Wire Wire Line
	2325 4095 2225 4095
Wire Wire Line
	2325 4595 2325 4695
$Comp
L power:GND #PWR?
U 1 1 5F6E4B48
P 2325 4695
AR Path="/5F6E4B48" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B48" Ref="#PWR0202"  Part="1" 
F 0 "#PWR0202" H 2325 4445 50  0001 C CNN
F 1 "GND" H 2330 4522 50  0000 C CNN
F 2 "" H 2325 4695 50  0001 C CNN
F 3 "" H 2325 4695 50  0001 C CNN
	1    2325 4695
	1    0    0    -1  
$EndComp
Wire Wire Line
	4075 4095 3975 4095
Wire Wire Line
	4075 4095 4075 3845
Wire Wire Line
	4075 3595 4225 3595
$Comp
L power:GND #PWR?
U 1 1 5F6E4B57
P 4825 3645
AR Path="/5F6E4B57" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B57" Ref="#PWR0205"  Part="1" 
F 0 "#PWR0205" H 4825 3395 50  0001 C CNN
F 1 "GND" H 4830 3472 50  0000 C CNN
F 2 "" H 4825 3645 50  0001 C CNN
F 3 "" H 4825 3645 50  0001 C CNN
	1    4825 3645
	1    0    0    -1  
$EndComp
Wire Wire Line
	4725 3595 4825 3595
Wire Wire Line
	4825 3595 4825 3645
Text GLabel 5075 3845 2    50   BiDi ~ 0
V_BATT
Wire Wire Line
	4075 3595 4075 3845
Wire Wire Line
	4075 3845 5075 3845
$Comp
L power:GND #PWR?
U 1 1 5F6E4B62
P 6675 4895
AR Path="/5F6E4B62" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B62" Ref="#PWR0208"  Part="1" 
F 0 "#PWR0208" H 6675 4645 50  0001 C CNN
F 1 "GND" H 6680 4722 50  0000 C CNN
F 2 "" H 6675 4895 50  0001 C CNN
F 3 "" H 6675 4895 50  0001 C CNN
	1    6675 4895
	1    0    0    -1  
$EndComp
Wire Wire Line
	6675 4495 6675 4895
Wire Wire Line
	6825 4495 6675 4495
$Comp
L power:GND #PWR?
U 1 1 5F6E4B7A
P 6325 3945
AR Path="/5F6E4B7A" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B7A" Ref="#PWR0206"  Part="1" 
F 0 "#PWR0206" H 6325 3695 50  0001 C CNN
F 1 "GND" V 6330 3817 50  0000 R CNN
F 2 "" H 6325 3945 50  0001 C CNN
F 3 "" H 6325 3945 50  0001 C CNN
	1    6325 3945
	1    0    0    -1  
$EndComp
Wire Wire Line
	6425 4795 6425 4895
$Comp
L power:GND #PWR?
U 1 1 5F6E4B8B
P 6425 4895
AR Path="/5F6E4B8B" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B8B" Ref="#PWR0207"  Part="1" 
F 0 "#PWR0207" H 6425 4645 50  0001 C CNN
F 1 "GND" H 6430 4722 50  0000 C CNN
F 2 "" H 6425 4895 50  0001 C CNN
F 3 "" H 6425 4895 50  0001 C CNN
	1    6425 4895
	1    0    0    -1  
$EndComp
Wire Wire Line
	6425 4495 6425 4395
Wire Wire Line
	6425 4395 6825 4395
Connection ~ 6425 4395
Text GLabel 5975 4395 0    50   BiDi ~ 0
V_USB
Wire Wire Line
	6025 4395 5975 4395
Wire Wire Line
	6325 4395 6425 4395
Wire Wire Line
	6675 4295 6825 4295
Connection ~ 4075 3845
Text Notes 4625 4845 2    50   ~ 0
10k PROG allows for 100mA from BATT.
Text Notes 3075 3445 2    79   ~ 0
BATTERY CHARGING\n
Wire Notes Line
	1875 4995 1875 3295
Wire Notes Line
	1875 3295 5425 3295
Wire Notes Line
	5425 3295 5425 4995
Wire Notes Line
	5425 4995 1875 4995
Wire Wire Line
	6625 3945 6675 3945
Wire Wire Line
	6675 3945 6675 4295
Connection ~ 6675 3945
Wire Wire Line
	6675 3945 6675 3595
Wire Notes Line
	5475 5120 5475 3145
Wire Notes Line
	5475 3145 8250 3145
Wire Notes Line
	8250 3145 8250 5145
Wire Notes Line
	8250 5145 5475 5120
Text Notes 6425 3295 2    79   ~ 0
POWER TOGGLE
Text GLabel 10300 3995 2    51   BiDi ~ 0
V_REG
Text Notes 8475 3695 0    79   ~ 0
VOLT REGULATOR\n
Connection ~ 9450 4545
Wire Wire Line
	9450 4545 9450 4670
$Comp
L power:GND #PWR?
U 1 1 5F6E4BE7
P 9450 4670
AR Path="/5F6E4BE7" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4BE7" Ref="#PWR0209"  Part="1" 
F 0 "#PWR0209" H 9450 4420 50  0001 C CNN
F 1 "GND" H 9455 4497 50  0000 C CNN
F 2 "" H 9450 4670 50  0001 C CNN
F 3 "" H 9450 4670 50  0001 C CNN
	1    9450 4670
	1    0    0    -1  
$EndComp
Text Notes 10000 3920 0    79   ~ 0
V_REG = 2.8V\n
Wire Notes Line
	8325 3520 8325 4945
Wire Notes Line
	8325 4945 10900 4945
Wire Notes Line
	10900 4945 10900 3520
Wire Notes Line
	10900 3520 8325 3520
Text GLabel 5975 3595 0    50   BiDi ~ 0
V_BATT
Wire Wire Line
	5975 3595 6075 3595
Wire Wire Line
	7525 4295 7700 4295
Text GLabel 8825 3995 0    50   BiDi ~ 0
V_BATT_ON
Text GLabel 7750 4295 2    50   BiDi ~ 0
V_BATT_ON
$Comp
L power:GND #PWR0201
U 1 1 5F714F12
P 750 4750
F 0 "#PWR0201" H 750 4500 50  0001 C CNN
F 1 "GND" H 755 4577 50  0000 C CNN
F 2 "" H 750 4750 50  0001 C CNN
F 3 "" H 750 4750 50  0001 C CNN
	1    750  4750
	1    0    0    -1  
$EndComp
NoConn ~ 1200 4250
NoConn ~ 1200 4350
NoConn ~ 1200 4450
Text GLabel 1400 4050 2    50   BiDi ~ 0
V_USB
Text Notes 575  3720 0    79   ~ 0
USB Micro B\n
Wire Notes Line
	525  3570 525  4945
Wire Notes Line
	525  4945 1725 4945
Wire Notes Line
	1725 4945 1725 3570
Wire Notes Line
	1725 3570 525  3570
Connection ~ 9000 3995
Wire Wire Line
	9000 3995 8825 3995
Connection ~ 9000 4095
Wire Wire Line
	9000 4095 9000 4245
Text GLabel 8825 3870 0    50   BiDi ~ 0
SW_3_3V
Wire Wire Line
	9000 4095 9000 3995
Wire Wire Line
	9000 3995 9000 3870
Wire Wire Line
	9000 3870 8825 3870
Wire Wire Line
	7525 4395 7755 4395
Wire Wire Line
	9150 4095 9000 4095
Wire Wire Line
	9150 3995 9000 3995
$Comp
L power:GND #PWR?
U 1 1 5F62FC04
P 7450 3800
AR Path="/5F62FC04" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F62FC04" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 7450 3550 50  0001 C CNN
F 1 "GND" H 7455 3627 50  0000 C CNN
F 2 "" H 7450 3800 50  0001 C CNN
F 3 "" H 7450 3800 50  0001 C CNN
	1    7450 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3670 7700 3670
Wire Wire Line
	7700 3670 7700 3830
Wire Wire Line
	7700 4130 7700 4295
Connection ~ 7700 4295
Wire Wire Line
	7700 4295 7750 4295
Wire Wire Line
	7450 3670 7450 3800
Wire Wire Line
	9450 4395 9450 4545
$Comp
L Device:CP C205
U 1 1 5F627E12
P 7700 3980
F 0 "C205" H 7818 4026 50  0000 L CNN
F 1 "100uF" H 7818 3935 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.2" H 7738 3830 50  0001 C CNN
F 3 "~" H 7700 3980 50  0001 C CNN
F 4 "Capactitor - Bypass" H 7700 3980 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/865230143004/732-8282-1-ND/5728239" H 7700 3980 50  0001 C CNN "part_url"
F 6 "3x" H 7700 3980 50  0001 C CNN "PURCHASED"
	1    7700 3980
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:TLV75528PDBV U?
U 1 1 5F6E4BC4
P 9450 4095
AR Path="/5F6E4BC4" Ref="U?"  Part="1" 
AR Path="/5F580D08/5F6E4BC4" Ref="U203"  Part="1" 
F 0 "U203" H 9450 4437 50  0000 C CNN
F 1 "TLV75528PDBVR" H 9450 4346 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9450 4395 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tlv755p.pdf" H 9450 4095 50  0001 C CNN
F 4 "2.8v 500mA, 230mV~ dropout" H 9450 4095 50  0001 C CNN "part_details"
F 5 "Linear Regulator" H 9450 4095 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/texas-instruments/TLV75528PDBVR/296-51798-1-ND/9746161" H 9450 4095 50  0001 C CNN "part_url"
F 7 "3x" H 9450 4095 50  0001 C CNN "PURCHASED"
	1    9450 4095
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP201
U 1 1 5F61CD7A
P 7755 4395
F 0 "TP201" V 7709 4583 50  0000 L CNN
F 1 "TestPoint" V 7800 4583 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7955 4395 50  0001 C CNN
F 3 "~" H 7955 4395 50  0001 C CNN
F 4 "Test point for U202 error (low imp. on error)" H 7755 4395 50  0001 C CNN "part_details"
F 5 "x" H 7755 4395 50  0001 C CNN "PURCHASED"
	1    7755 4395
	0    1    1    0   
$EndComp
$Comp
L StarGazer:STBC08 U?
U 1 1 5F6E4AF4
P 3475 3945
AR Path="/5F6E4AF4" Ref="U?"  Part="1" 
AR Path="/5F580D08/5F6E4AF4" Ref="U201"  Part="1" 
F 0 "U201" H 3600 4060 50  0000 C CNN
F 1 "STBC08" H 3600 3969 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-6-1EP_3x3mm_P0.95mm_EP1.7x2.6mm" H 3475 3945 50  0001 C CNN
F 3 "" H 3475 3945 50  0001 C CNN
F 4 "" H 3475 3945 50  0001 C CNN "part_details"
F 5 "Lithium Ion Battery Charging IC" H 3475 3945 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/stmicroelectronics/STBC08PMR/497-5808-6-ND/1506505" H 3475 3945 50  0001 C CNN "part_url"
F 7 "3x" H 3475 3945 50  0001 C CNN "PURCHASED"
	1    3475 3945
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F6E4B06
P 4775 4295
AR Path="/5F6E4B06" Ref="R?"  Part="1" 
AR Path="/5F580D08/5F6E4B06" Ref="R202"  Part="1" 
F 0 "R202" V 4579 4295 50  0000 C CNN
F 1 "180ohm" V 4670 4295 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4775 4295 50  0001 C CNN
F 3 "~" H 4775 4295 50  0001 C CNN
F 4 "Resistor - LED Status" H 4775 4295 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/RNCP1206FTD180R/RNCP1206FTD180RCT-ND/2240658" H 4775 4295 50  0001 C CNN "part_url"
F 6 "9x" H 4775 4295 50  0001 C CNN "PURCHASED"
	1    4775 4295
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F6E4B0E
P 4775 4595
AR Path="/5F6E4B0E" Ref="R?"  Part="1" 
AR Path="/5F580D08/5F6E4B0E" Ref="R203"  Part="1" 
F 0 "R203" V 4579 4595 50  0000 C CNN
F 1 "180ohm" V 4670 4595 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4775 4595 50  0001 C CNN
F 3 "~" H 4775 4595 50  0001 C CNN
F 4 "Resistor - LED Status" H 4775 4595 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/RNCP1206FTD180R/RNCP1206FTD180RCT-ND/2240658" H 4775 4595 50  0001 C CNN "part_url"
F 6 "9x" H 4775 4595 50  0001 C CNN "PURCHASED"
	1    4775 4595
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F6E4B19
P 4375 4295
AR Path="/5F6E4B19" Ref="D?"  Part="1" 
AR Path="/5F580D08/5F6E4B19" Ref="D201"  Part="1" 
F 0 "D201" H 4368 4511 50  0000 C CNN
F 1 "Red" H 4368 4420 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 4375 4295 50  0001 C CNN
F 3 "~" H 4375 4295 50  0001 C CNN
F 4 "Red when charging error" H 4375 4295 50  0001 C CNN "part_details"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120RS75000/732-5030-1-ND/4490054" H 4375 4295 50  0001 C CNN "part_url"
F 6 "LED - Red" H 4375 4295 50  0001 C CNN "part_name"
F 7 "6x" H 4375 4295 50  0001 C CNN "PURCHASED"
	1    4375 4295
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F6E4B1F
P 4375 4595
AR Path="/5F6E4B1F" Ref="D?"  Part="1" 
AR Path="/5F580D08/5F6E4B1F" Ref="D202"  Part="1" 
F 0 "D202" H 4368 4811 50  0000 C CNN
F 1 "Green" H 4368 4720 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 4375 4595 50  0001 C CNN
F 3 "~" H 4375 4595 50  0001 C CNN
F 4 "Green when charging" H 4375 4595 50  0001 C CNN "part_details"
F 5 "LED - Green" H 4375 4595 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 4375 4595 50  0001 C CNN "part_url"
F 7 "6x" H 4375 4595 50  0001 C CNN "PURCHASED"
	1    4375 4595
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F6E4B30
P 2825 4295
AR Path="/5F6E4B30" Ref="R?"  Part="1" 
AR Path="/5F580D08/5F6E4B30" Ref="R201"  Part="1" 
F 0 "R201" V 2618 4295 50  0000 C CNN
F 1 "10kohm" V 2709 4295 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2755 4295 50  0001 C CNN
F 3 "~" H 2825 4295 50  0001 C CNN
F 4 "Battery Program for 100mA recharge rate." H 2825 4295 50  0001 C CNN "part_details"
F 5 "Resistor - Prog" H 2825 4295 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206JR-0710KL/311-10KERCT-ND/732156" H 2825 4295 50  0001 C CNN "part_url"
F 7 "24x" H 2825 4295 50  0001 C CNN "PURCHASED"
	1    2825 4295
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5F6E4B41
P 2325 4445
AR Path="/5F6E4B41" Ref="C?"  Part="1" 
AR Path="/5F580D08/5F6E4B41" Ref="C201"  Part="1" 
F 0 "C201" H 2440 4491 50  0000 L CNN
F 1 "1uF" H 2440 4400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2363 4295 50  0001 C CNN
F 3 "~" H 2325 4445 50  0001 C CNN
F 4 "Capactitor - Bypass" H 2325 4445 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/885012107015/732-7625-1-ND/5454252" H 2325 4445 50  0001 C CNN "part_url"
F 6 "12x" H 2325 4445 50  0001 C CNN "PURCHASED"
	1    2325 4445
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 5F6E4B4E
P 4525 3595
AR Path="/5F6E4B4E" Ref="J?"  Part="1" 
AR Path="/5F580D08/5F6E4B4E" Ref="J202"  Part="1" 
F 0 "J202" H 4575 3370 50  0000 C CNN
F 1 "JST - 2x1" H 4575 3461 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B2B-EH-A_1x02_P2.50mm_Vertical" H 4525 3595 50  0001 C CNN
F 3 "~" H 4525 3595 50  0001 C CNN
F 4 "" H 4525 3595 50  0001 C CNN "part_details"
F 5 "" H 4525 3595 50  0001 C CNN "part_url"
F 6 "Battery Connector" H 4525 3595 50  0001 C CNN "part_name"
F 7 "x" H 4525 3595 50  0001 C CNN "PURCHASED"
	1    4525 3595
	-1   0    0    1   
$EndComp
$Comp
L StarGazer:AP22811BW5 U?
U 1 1 5F6E4B6E
P 7175 4195
AR Path="/5F6E4B6E" Ref="U?"  Part="1" 
AR Path="/5F580D08/5F6E4B6E" Ref="U202"  Part="1" 
F 0 "U202" H 7175 4360 50  0000 C CNN
F 1 "AP22811BW5-7" H 7175 4269 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5_HandSoldering" H 7175 4245 50  0001 C CNN
F 3 "" H 7175 4245 50  0001 C CNN
F 4 "Battery protection switch" H 7175 4195 50  0001 C CNN "part_details"
F 5 "Mosfet, active low" H 7175 4195 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/diodes-incorporated/AP22811BW5-7/AP22811BW5-7DICT-ND/8545787" H 7175 4195 50  0001 C CNN "part_url"
F 7 "3x" H 7175 4195 50  0001 C CNN "PURCHASED"
	1    7175 4195
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F6E4B74
P 6475 3945
AR Path="/5F6E4B74" Ref="C?"  Part="1" 
AR Path="/5F580D08/5F6E4B74" Ref="C202"  Part="1" 
F 0 "C202" V 6675 3945 50  0000 C CNN
F 1 "1uF" V 6600 3945 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6513 3795 50  0001 C CNN
F 3 "~" H 6475 3945 50  0001 C CNN
F 4 "Capactitor - Bypass" H 6475 3945 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/885012107015/732-7625-1-ND/5454252" H 6475 3945 50  0001 C CNN "part_url"
F 6 "12x" H 6475 3945 50  0001 C CNN "PURCHASED"
	1    6475 3945
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F6E4B84
P 6425 4645
AR Path="/5F6E4B84" Ref="R?"  Part="1" 
AR Path="/5F580D08/5F6E4B84" Ref="R205"  Part="1" 
F 0 "R205" V 6218 4645 50  0000 C CNN
F 1 "10kohm" V 6309 4645 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6355 4645 50  0001 C CNN
F 3 "~" H 6425 4645 50  0001 C CNN
F 4 "" H 6425 4645 50  0001 C CNN "Name"
F 5 "" H 6425 4645 50  0001 C CNN "part_details"
F 6 "Resistor - Pull Up" H 6425 4645 50  0001 C CNN "part_name"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC1206JR-0710KL/311-10KERCT-ND/732156" H 6425 4645 50  0001 C CNN "part_url"
F 8 "24x" H 6425 4645 50  0001 C CNN "PURCHASED"
	1    6425 4645
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F6E4B9B
P 6175 4395
AR Path="/5F6E4B9B" Ref="R?"  Part="1" 
AR Path="/5F580D08/5F6E4B9B" Ref="R204"  Part="1" 
F 0 "R204" V 5968 4395 50  0000 C CNN
F 1 "10kohm" V 6059 4395 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6105 4395 50  0001 C CNN
F 3 "~" H 6175 4395 50  0001 C CNN
F 4 "" H 6175 4395 50  0001 C CNN "Name"
F 5 "" H 6175 4395 50  0001 C CNN "part_details"
F 6 "Resistor - Pull Up" H 6175 4395 50  0001 C CNN "part_name"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC1206JR-0710KL/311-10KERCT-ND/732156" H 6175 4395 50  0001 C CNN "part_url"
F 8 "24x" H 6175 4395 50  0001 C CNN "PURCHASED"
	1    6175 4395
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_DIP_x01 SW?
U 1 1 5F6E4BB5
P 6375 3595
AR Path="/5F6E4BB5" Ref="SW?"  Part="1" 
AR Path="/5F580D08/5F6E4BB5" Ref="SW201"  Part="1" 
F 0 "SW201" H 6375 3370 50  0000 C CNN
F 1 "JST - 2x1" H 6375 3445 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B2B-EH-A_1x02_P2.50mm_Vertical" H 6375 3595 50  0001 C CNN
F 3 "~" H 6375 3595 50  0001 C CNN
F 4 "Power toggle" H 6375 3595 50  0001 C CNN "part_details"
F 5 "Switch - Power" H 6375 3595 50  0001 C CNN "part_name"
F 6 "https://www.amazon.com/MTS-101-Position-Miniature-Toggle-Switch/dp/B0799LBFNY/ref=lp_306596011_1_8?s=industrial&ie=UTF8&qid=1599516393&sr=1-8" H 6375 3595 50  0001 C CNN "part_url"
F 7 "10x" H 6375 3595 50  0001 C CNN "PURCHASED"
	1    6375 3595
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5F6E4BDF
P 9000 4395
AR Path="/5F6E4BDF" Ref="C?"  Part="1" 
AR Path="/5F580D08/5F6E4BDF" Ref="C203"  Part="1" 
F 0 "C203" H 9115 4441 50  0000 L CNN
F 1 "1uF" H 9115 4350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9038 4245 50  0001 C CNN
F 3 "~" H 9000 4395 50  0001 C CNN
F 4 "Capactitor - Bypass" H 9000 4395 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/885012107015/732-7625-1-ND/5454252" H 9000 4395 50  0001 C CNN "part_url"
F 6 "12x" H 9000 4395 50  0001 C CNN "PURCHASED"
	1    9000 4395
	-1   0    0    1   
$EndComp
Wire Wire Line
	9000 4545 9450 4545
Wire Wire Line
	9450 4545 10000 4545
Wire Wire Line
	10000 3995 10300 3995
Wire Wire Line
	9750 3995 10000 3995
Connection ~ 10000 3995
Wire Wire Line
	10000 3995 10000 4245
$Comp
L Device:C C?
U 1 1 5F662397
P 10000 4395
AR Path="/5F662397" Ref="C?"  Part="1" 
AR Path="/5F580392/5F662397" Ref="C?"  Part="1" 
AR Path="/5F580D08/5F662397" Ref="C204"  Part="1" 
F 0 "C204" H 10115 4441 50  0000 L CNN
F 1 "2.2uF" H 10115 4350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10038 4245 50  0001 C CNN
F 3 "~" H 10000 4395 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/885012107001/732-7612-1-ND/5454239" H 10000 4395 50  0001 C CNN "part_url"
F 5 "Capactitor - Bypass" H 10000 4395 50  0001 C CNN "part_name"
F 6 "6x" H 10000 4395 50  0001 C CNN "PURCHASED"
	1    10000 4395
	-1   0    0    1   
$EndComp
$Comp
L Connector:USB_B_Micro J201
U 1 1 5F712669
P 750 4250
F 0 "J201" H 807 4717 50  0000 C CNN
F 1 "USB_B_Micro" H 807 4626 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Amphenol_10103594-0001LF_Horizontal" H 900 4200 50  0001 C CNN
F 3 "~" H 900 4200 50  0001 C CNN
F 4 "USB-B Micro" H 750 4250 50  0001 C CNN "part_name"
F 5 "Only used for charging" H 750 4250 50  0001 C CNN "part_details"
F 6 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/10103594-0001LF/609-4050-1-ND/2350357" H 750 4250 50  0001 C CNN "part_url"
F 7 "3x" H 750 4250 50  0001 C CNN "PURCHASED"
	1    750  4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  4650 750  4650
Wire Wire Line
	750  4650 750  4750
Connection ~ 750  4650
Wire Wire Line
	1050 4250 1200 4250
Wire Wire Line
	1050 4350 1200 4350
Wire Wire Line
	1050 4450 1200 4450
Wire Wire Line
	1050 4050 1250 4050
$Comp
L Connector_Generic:Conn_01x01 J204
U 1 1 5F8F328D
P 1450 3850
F 0 "J204" H 1530 3892 50  0000 L CNN
F 1 "Conn_01x01" H 1530 3801 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x01_P2.00mm_Vertical" H 1450 3850 50  0001 C CNN
F 3 "~" H 1450 3850 50  0001 C CNN
F 4 "DO_NOT_SHOW" H 1450 3850 50  0001 C CNN "part_details"
F 5 "x" H 1450 3850 50  0001 C CNN "PURCHASED"
	1    1450 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J203
U 1 1 5F8F4320
P 1200 4650
F 0 "J203" H 1280 4692 50  0000 L CNN
F 1 "Conn_01x01" H 1280 4601 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x01_P2.00mm_Vertical" H 1200 4650 50  0001 C CNN
F 3 "~" H 1200 4650 50  0001 C CNN
F 4 "DO_NOT_SHOW" H 1200 4650 50  0001 C CNN "part_details"
F 5 "x" H 1200 4650 50  0001 C CNN "PURCHASED"
	1    1200 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4650 750  4650
Wire Wire Line
	1250 3850 1250 4050
Connection ~ 1250 4050
Wire Wire Line
	1250 4050 1400 4050
$EndSCHEMATC
