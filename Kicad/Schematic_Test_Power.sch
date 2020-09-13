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
$Comp
L StarGazer:STBC08 U?
U 1 1 5F6E4AF4
P 3725 3525
AR Path="/5F6E4AF4" Ref="U?"  Part="1" 
AR Path="/5F580D08/5F6E4AF4" Ref="U201"  Part="1" 
F 0 "U201" H 3850 3640 50  0000 C CNN
F 1 "STBC08" H 3850 3549 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-6-1EP_3x3mm_P0.95mm_EP1.7x2.6mm" H 3725 3525 50  0001 C CNN
F 3 "" H 3725 3525 50  0001 C CNN
F 4 "Lithium Ion Battery Recharge IC" H 3725 3525 50  0001 C CNN "part_details"
F 5 "STBC08PMR" H 3725 3525 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/stmicroelectronics/STBC08PMR/497-5808-6-ND/1506505" H 3725 3525 50  0001 C CNN "part_url"
	1    3725 3525
	1    0    0    -1  
$EndComp
Wire Wire Line
	3275 3675 2575 3675
Wire Wire Line
	3275 3875 3225 3875
Wire Wire Line
	3275 4075 3175 4075
Wire Wire Line
	3175 4075 3175 4275
$Comp
L power:GND #PWR?
U 1 1 5F6E4AFE
P 3175 4275
AR Path="/5F6E4AFE" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4AFE" Ref="#PWR0204"  Part="1" 
F 0 "#PWR0204" H 3175 4025 50  0001 C CNN
F 1 "GND" H 3180 4102 50  0000 C CNN
F 2 "" H 3175 4275 50  0001 C CNN
F 3 "" H 3175 4275 50  0001 C CNN
	1    3175 4275
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F6E4B06
P 5025 3875
AR Path="/5F6E4B06" Ref="R?"  Part="1" 
AR Path="/5F580D08/5F6E4B06" Ref="R202"  Part="1" 
F 0 "R202" V 4829 3875 50  0000 C CNN
F 1 "330" V 4920 3875 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5025 3875 50  0001 C CNN
F 3 "~" H 5025 3875 50  0001 C CNN
F 4 "Resistor - LED Status" H 5025 3875 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 5025 3875 50  0001 C CNN "part_url"
	1    5025 3875
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F6E4B0E
P 5025 4175
AR Path="/5F6E4B0E" Ref="R?"  Part="1" 
AR Path="/5F580D08/5F6E4B0E" Ref="R203"  Part="1" 
F 0 "R203" V 4829 4175 50  0000 C CNN
F 1 "330" V 4920 4175 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5025 4175 50  0001 C CNN
F 3 "~" H 5025 4175 50  0001 C CNN
F 4 "Resistor - LED Status" H 5025 4175 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 5025 4175 50  0001 C CNN "part_url"
	1    5025 4175
	0    1    1    0   
$EndComp
Wire Wire Line
	5225 3875 5125 3875
Wire Wire Line
	5225 3875 5225 4175
Wire Wire Line
	5225 4175 5125 4175
Wire Wire Line
	5225 3875 5325 3875
Connection ~ 5225 3875
$Comp
L Device:LED D?
U 1 1 5F6E4B19
P 4625 3875
AR Path="/5F6E4B19" Ref="D?"  Part="1" 
AR Path="/5F580D08/5F6E4B19" Ref="D201"  Part="1" 
F 0 "D201" H 4618 4091 50  0000 C CNN
F 1 "LED" H 4618 4000 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 4625 3875 50  0001 C CNN
F 3 "~" H 4625 3875 50  0001 C CNN
F 4 "RED when ERROR" H 4625 3875 50  0001 C CNN "part_details"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120RS75000/732-5030-1-ND/4490054" H 4625 3875 50  0001 C CNN "part_url"
F 6 "LED - Red" H 4625 3875 50  0001 C CNN "part_name"
	1    4625 3875
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F6E4B1F
P 4625 4175
AR Path="/5F6E4B1F" Ref="D?"  Part="1" 
AR Path="/5F580D08/5F6E4B1F" Ref="D202"  Part="1" 
F 0 "D202" H 4618 4391 50  0000 C CNN
F 1 "LED" H 4618 4300 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 4625 4175 50  0001 C CNN
F 3 "~" H 4625 4175 50  0001 C CNN
F 4 "GREEN when CHARGING" H 4625 4175 50  0001 C CNN "part_details"
F 5 "LED - Green" H 4625 4175 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 4625 4175 50  0001 C CNN "part_url"
	1    4625 4175
	1    0    0    -1  
$EndComp
Wire Wire Line
	4225 4075 4325 4075
Wire Wire Line
	4325 4075 4325 4175
Wire Wire Line
	4325 4175 4475 4175
Wire Wire Line
	4225 3875 4475 3875
Wire Wire Line
	4775 3875 4925 3875
Wire Wire Line
	4775 4175 4925 4175
Text GLabel 5325 3875 2    50   BiDi ~ 0
V_USB
Text GLabel 2475 3675 0    50   BiDi ~ 0
V_USB
$Comp
L Device:R R?
U 1 1 5F6E4B30
P 3075 3875
AR Path="/5F6E4B30" Ref="R?"  Part="1" 
AR Path="/5F580D08/5F6E4B30" Ref="R201"  Part="1" 
F 0 "R201" V 2868 3875 50  0000 C CNN
F 1 "10k" V 2959 3875 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3005 3875 50  0001 C CNN
F 3 "~" H 3075 3875 50  0001 C CNN
F 4 "Battery Program for 100mA recharge rate." H 3075 3875 50  0001 C CNN "part_details"
F 5 "Resistor - Prog" H 3075 3875 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206JR-0710KL/311-10KERCT-ND/732156" H 3075 3875 50  0001 C CNN "part_url"
	1    3075 3875
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2925 3875 2875 3875
Wire Wire Line
	2875 3875 2875 4275
$Comp
L power:GND #PWR?
U 1 1 5F6E4B38
P 2875 4275
AR Path="/5F6E4B38" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B38" Ref="#PWR0203"  Part="1" 
F 0 "#PWR0203" H 2875 4025 50  0001 C CNN
F 1 "GND" H 2880 4102 50  0000 C CNN
F 2 "" H 2875 4275 50  0001 C CNN
F 3 "" H 2875 4275 50  0001 C CNN
	1    2875 4275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2575 3675 2575 3875
Connection ~ 2575 3675
Wire Wire Line
	2575 3675 2475 3675
$Comp
L Device:C C?
U 1 1 5F6E4B41
P 2575 4025
AR Path="/5F6E4B41" Ref="C?"  Part="1" 
AR Path="/5F580D08/5F6E4B41" Ref="C201"  Part="1" 
F 0 "C201" H 2690 4071 50  0000 L CNN
F 1 "1uF" H 2690 3980 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2613 3875 50  0001 C CNN
F 3 "~" H 2575 4025 50  0001 C CNN
F 4 "Capactitor - Bypass" H 2575 4025 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/885012107015/732-7625-1-ND/5454252" H 2575 4025 50  0001 C CNN "part_url"
	1    2575 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	2575 4175 2575 4275
$Comp
L power:GND #PWR?
U 1 1 5F6E4B48
P 2575 4275
AR Path="/5F6E4B48" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B48" Ref="#PWR0202"  Part="1" 
F 0 "#PWR0202" H 2575 4025 50  0001 C CNN
F 1 "GND" H 2580 4102 50  0000 C CNN
F 2 "" H 2575 4275 50  0001 C CNN
F 3 "" H 2575 4275 50  0001 C CNN
	1    2575 4275
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 5F6E4B4E
P 4775 3175
AR Path="/5F6E4B4E" Ref="J?"  Part="1" 
AR Path="/5F580D08/5F6E4B4E" Ref="J202"  Part="1" 
F 0 "J202" H 4825 2950 50  0000 C CNN
F 1 "Conn_02x01 BATTERY" H 4825 3041 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B2B-EH-A_1x02_P2.50mm_Vertical" H 4775 3175 50  0001 C CNN
F 3 "~" H 4775 3175 50  0001 C CNN
F 4 "JST - 2 pin" H 4775 3175 50  0001 C CNN "part_details"
F 5 "LOCAL STOCK" H 4775 3175 50  0001 C CNN "part_url"
	1    4775 3175
	-1   0    0    1   
$EndComp
Wire Wire Line
	4325 3675 4225 3675
Wire Wire Line
	4325 3675 4325 3425
Wire Wire Line
	4325 3175 4475 3175
$Comp
L power:GND #PWR?
U 1 1 5F6E4B57
P 5075 3225
AR Path="/5F6E4B57" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B57" Ref="#PWR0205"  Part="1" 
F 0 "#PWR0205" H 5075 2975 50  0001 C CNN
F 1 "GND" H 5080 3052 50  0000 C CNN
F 2 "" H 5075 3225 50  0001 C CNN
F 3 "" H 5075 3225 50  0001 C CNN
	1    5075 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 3175 5075 3175
Wire Wire Line
	5075 3175 5075 3225
Text GLabel 5325 3425 2    50   BiDi ~ 0
V_BATT
Wire Wire Line
	4325 3175 4325 3425
Wire Wire Line
	4325 3425 5325 3425
$Comp
L power:GND #PWR?
U 1 1 5F6E4B62
P 6925 4475
AR Path="/5F6E4B62" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B62" Ref="#PWR0208"  Part="1" 
F 0 "#PWR0208" H 6925 4225 50  0001 C CNN
F 1 "GND" H 6930 4302 50  0000 C CNN
F 2 "" H 6925 4475 50  0001 C CNN
F 3 "" H 6925 4475 50  0001 C CNN
	1    6925 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	6925 4075 6925 4475
Wire Wire Line
	7075 4075 6925 4075
$Comp
L StarGazer:AP22811BW5 U?
U 1 1 5F6E4B6E
P 7425 3775
AR Path="/5F6E4B6E" Ref="U?"  Part="1" 
AR Path="/5F580D08/5F6E4B6E" Ref="U202"  Part="1" 
F 0 "U202" H 7425 3940 50  0000 C CNN
F 1 "AP22811BW5" H 7425 3849 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5_HandSoldering" H 7425 3825 50  0001 C CNN
F 3 "" H 7425 3825 50  0001 C CNN
F 4 "Mosfet, active low (batt protection)" H 7425 3775 50  0001 C CNN "part_details"
F 5 " AP22811BW5-7 " H 7425 3775 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/diodes-incorporated/AP22811BW5-7/AP22811BW5-7DICT-ND/8545787" H 7425 3775 50  0001 C CNN "part_url"
	1    7425 3775
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F6E4B74
P 6725 3525
AR Path="/5F6E4B74" Ref="C?"  Part="1" 
AR Path="/5F580D08/5F6E4B74" Ref="C202"  Part="1" 
F 0 "C202" V 6925 3525 50  0000 C CNN
F 1 "1uF" V 6850 3525 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6763 3375 50  0001 C CNN
F 3 "~" H 6725 3525 50  0001 C CNN
F 4 "Capactitor - Bypass" H 6725 3525 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/885012107015/732-7625-1-ND/5454252" H 6725 3525 50  0001 C CNN "part_url"
	1    6725 3525
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F6E4B7A
P 6575 3525
AR Path="/5F6E4B7A" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B7A" Ref="#PWR0206"  Part="1" 
F 0 "#PWR0206" H 6575 3275 50  0001 C CNN
F 1 "GND" V 6580 3397 50  0000 R CNN
F 2 "" H 6575 3525 50  0001 C CNN
F 3 "" H 6575 3525 50  0001 C CNN
	1    6575 3525
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F6E4B84
P 6675 4225
AR Path="/5F6E4B84" Ref="R?"  Part="1" 
AR Path="/5F580D08/5F6E4B84" Ref="R205"  Part="1" 
F 0 "R205" V 6468 4225 50  0000 C CNN
F 1 "10k" V 6559 4225 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6605 4225 50  0001 C CNN
F 3 "~" H 6675 4225 50  0001 C CNN
F 4 "" H 6675 4225 50  0001 C CNN "Name"
F 5 "" H 6675 4225 50  0001 C CNN "part_details"
F 6 "Resistor - Pull Up" H 6675 4225 50  0001 C CNN "part_name"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC1206JR-0710KL/311-10KERCT-ND/732156" H 6675 4225 50  0001 C CNN "part_url"
	1    6675 4225
	1    0    0    -1  
$EndComp
Wire Wire Line
	6675 4375 6675 4475
$Comp
L power:GND #PWR?
U 1 1 5F6E4B8B
P 6675 4475
AR Path="/5F6E4B8B" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B8B" Ref="#PWR0207"  Part="1" 
F 0 "#PWR0207" H 6675 4225 50  0001 C CNN
F 1 "GND" H 6680 4302 50  0000 C CNN
F 2 "" H 6675 4475 50  0001 C CNN
F 3 "" H 6675 4475 50  0001 C CNN
	1    6675 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	6675 4075 6675 3975
Wire Wire Line
	6675 3975 7075 3975
Connection ~ 6675 3975
Text GLabel 6225 3975 0    50   BiDi ~ 0
V_USB
Wire Wire Line
	6275 3975 6225 3975
Wire Wire Line
	6575 3975 6675 3975
$Comp
L Device:R R?
U 1 1 5F6E4B9B
P 6425 3975
AR Path="/5F6E4B9B" Ref="R?"  Part="1" 
AR Path="/5F580D08/5F6E4B9B" Ref="R204"  Part="1" 
F 0 "R204" V 6218 3975 50  0000 C CNN
F 1 "10k" V 6309 3975 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6355 3975 50  0001 C CNN
F 3 "~" H 6425 3975 50  0001 C CNN
F 4 "" H 6425 3975 50  0001 C CNN "Name"
F 5 "" H 6425 3975 50  0001 C CNN "part_details"
F 6 "Resistor - Pull Up" H 6425 3975 50  0001 C CNN "part_name"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC1206JR-0710KL/311-10KERCT-ND/732156" H 6425 3975 50  0001 C CNN "part_url"
	1    6425 3975
	0    1    1    0   
$EndComp
Wire Wire Line
	6925 3875 7075 3875
Wire Wire Line
	7775 3975 7925 3975
Connection ~ 4325 3425
Text Notes 4875 4425 2    50   ~ 0
10k PROG allows for 100mA from BATT.
Text Notes 3325 3025 2    79   ~ 0
BATTERY CHARGING\n
Wire Notes Line
	2125 4575 2125 2875
Wire Notes Line
	2125 2875 5675 2875
Wire Notes Line
	5675 2875 5675 4575
Wire Notes Line
	5675 4575 2125 4575
NoConn ~ 7925 3975
Wire Wire Line
	6875 3525 6925 3525
Wire Wire Line
	6925 3525 6925 3875
Connection ~ 6925 3525
Wire Wire Line
	6925 3525 6925 3175
Wire Notes Line
	5725 4700 5725 2725
Wire Notes Line
	5725 2725 8500 2725
Wire Notes Line
	8500 2725 8500 4725
Wire Notes Line
	8500 4725 5725 4700
Text Notes 6675 2875 2    79   ~ 0
POWER TOGGLE
$Comp
L Switch:SW_DIP_x01 SW?
U 1 1 5F6E4BB5
P 6625 3175
AR Path="/5F6E4BB5" Ref="SW?"  Part="1" 
AR Path="/5F580D08/5F6E4BB5" Ref="SW201"  Part="1" 
F 0 "SW201" H 6625 2950 50  0000 C CNN
F 1 "SW_DIP_x01" H 6625 3025 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B2B-EH-A_1x02_P2.50mm_Vertical" H 6625 3175 50  0001 C CNN
F 3 "~" H 6625 3175 50  0001 C CNN
F 4 "JST - 2 pin (switch attached to case)" H 6625 3175 50  0001 C CNN "part_details"
F 5 "Switch - Power" H 6625 3175 50  0001 C CNN "part_name"
F 6 "https://www.amazon.com/MTS-101-Position-Miniature-Toggle-Switch/dp/B0799LBFNY/ref=lp_306596011_1_8?s=industrial&ie=UTF8&qid=1599516393&sr=1-8" H 6625 3175 50  0001 C CNN "part_url"
	1    6625 3175
	-1   0    0    1   
$EndComp
Text GLabel 10550 3575 2    51   BiDi ~ 0
V_REG
Text Notes 8725 3275 0    79   ~ 0
VOLT REGULATOR\n
$Comp
L Regulator_Linear:TLV75528PDBV U?
U 1 1 5F6E4BC4
P 9700 3675
AR Path="/5F6E4BC4" Ref="U?"  Part="1" 
AR Path="/5F580D08/5F6E4BC4" Ref="U203"  Part="1" 
F 0 "U203" H 9700 4017 50  0000 C CNN
F 1 "TLV75528PDBV" H 9700 3926 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9700 3975 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tlv755p.pdf" H 9700 3675 50  0001 C CNN
F 4 "Linear Regulator, 2.8v 500mA, 230mV~ dropout" H 9700 3675 50  0001 C CNN "part_details"
F 5 "TLV75528PDBVR" H 9700 3675 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/texas-instruments/TLV75528PDBVR/296-51798-1-ND/9746161" H 9700 3675 50  0001 C CNN "part_url"
	1    9700 3675
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3575 9250 3575
$Comp
L Device:C C?
U 1 1 5F6E4BCE
P 10400 3975
AR Path="/5F6E4BCE" Ref="C?"  Part="1" 
AR Path="/5F580D08/5F6E4BCE" Ref="C204"  Part="1" 
F 0 "C204" H 10515 4021 50  0000 L CNN
F 1 "1uF" H 10515 3930 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10438 3825 50  0001 C CNN
F 3 "~" H 10400 3975 50  0001 C CNN
F 4 "Capactitor - Bypass" H 10400 3975 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/885012107015/732-7625-1-ND/5454252" H 10400 3975 50  0001 C CNN "part_url"
	1    10400 3975
	-1   0    0    1   
$EndComp
Wire Wire Line
	10400 3575 10400 3825
Wire Wire Line
	10000 3575 10400 3575
Connection ~ 10400 3575
Wire Wire Line
	10400 3575 10550 3575
Wire Wire Line
	9700 3975 9700 4125
Connection ~ 9700 4125
Wire Wire Line
	9250 4125 9700 4125
Wire Wire Line
	9700 4125 9700 4250
$Comp
L power:GND #PWR?
U 1 1 5F6E4BE7
P 9700 4250
AR Path="/5F6E4BE7" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4BE7" Ref="#PWR0209"  Part="1" 
F 0 "#PWR0209" H 9700 4000 50  0001 C CNN
F 1 "GND" H 9705 4077 50  0000 C CNN
F 2 "" H 9700 4250 50  0001 C CNN
F 3 "" H 9700 4250 50  0001 C CNN
	1    9700 4250
	1    0    0    -1  
$EndComp
Text Notes 10250 3500 0    79   ~ 0
V_REG = 2.8V\n
Wire Notes Line
	8575 3100 8575 4525
Wire Notes Line
	8575 4525 11150 4525
Wire Notes Line
	11150 4525 11150 3100
Wire Notes Line
	11150 3100 8575 3100
Text GLabel 6225 3175 0    50   BiDi ~ 0
V_BATT
Wire Wire Line
	6225 3175 6325 3175
Wire Wire Line
	7775 3875 8000 3875
Wire Wire Line
	9700 4125 10400 4125
Text GLabel 9075 3575 0    50   BiDi ~ 0
V_BATT_ON
Text GLabel 8000 3875 2    50   BiDi ~ 0
V_BATT_ON
Wire Wire Line
	1025 4275 1025 4350
$Comp
L power:GND #PWR0201
U 1 1 5F714F12
P 1025 4350
F 0 "#PWR0201" H 1025 4100 50  0001 C CNN
F 1 "GND" H 1030 4177 50  0000 C CNN
F 2 "" H 1025 4350 50  0001 C CNN
F 3 "" H 1025 4350 50  0001 C CNN
	1    1025 4350
	1    0    0    -1  
$EndComp
NoConn ~ 1425 3875
NoConn ~ 1425 3975
NoConn ~ 1425 4075
Wire Wire Line
	1325 4075 1425 4075
Wire Wire Line
	1325 3975 1425 3975
Wire Wire Line
	1325 3875 1425 3875
Text GLabel 1650 3675 2    50   BiDi ~ 0
V_USB
Wire Wire Line
	925  4275 1025 4275
Text Notes 825  3350 0    79   ~ 0
USB Micro B\n
Wire Notes Line
	775  3200 775  4575
Wire Notes Line
	775  4575 1975 4575
Wire Notes Line
	1975 4575 1975 3200
Wire Notes Line
	1975 3200 775  3200
Connection ~ 9250 3575
Wire Wire Line
	9250 3575 9075 3575
Connection ~ 9250 3675
Wire Wire Line
	9250 3675 9250 3825
Wire Wire Line
	9400 3675 9250 3675
$Comp
L Device:C C?
U 1 1 5F6E4BDF
P 9250 3975
AR Path="/5F6E4BDF" Ref="C?"  Part="1" 
AR Path="/5F580D08/5F6E4BDF" Ref="C203"  Part="1" 
F 0 "C203" H 9365 4021 50  0000 L CNN
F 1 "1uF" H 9365 3930 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9288 3825 50  0001 C CNN
F 3 "~" H 9250 3975 50  0001 C CNN
F 4 "Capactitor - Bypass" H 9250 3975 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/885012107015/732-7625-1-ND/5454252" H 9250 3975 50  0001 C CNN "part_url"
	1    9250 3975
	-1   0    0    1   
$EndComp
Wire Wire Line
	1325 3675 1650 3675
Text GLabel 9075 3450 0    50   BiDi ~ 0
SW_3_3V
Wire Wire Line
	9250 3675 9250 3575
Wire Wire Line
	9250 3575 9250 3450
Wire Wire Line
	9250 3450 9075 3450
Connection ~ 1025 4275
$Comp
L Connector:USB_B_Micro J201
U 1 1 5F712669
P 1025 3875
F 0 "J201" H 1082 4342 50  0000 C CNN
F 1 "USB_B_Micro" H 1082 4251 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Amphenol_10103594-0001LF_Horizontal" H 1175 3825 50  0001 C CNN
F 3 "~" H 1175 3825 50  0001 C CNN
F 4 "USB-B Micro" H 1025 3875 50  0001 C CNN "part_name"
F 5 "Only used for charging" H 1025 3875 50  0001 C CNN "part_details"
F 6 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/10103594-0001LF/609-4050-1-ND/2350357" H 1025 3875 50  0001 C CNN "part_url"
	1    1025 3875
	1    0    0    -1  
$EndComp
$EndSCHEMATC
