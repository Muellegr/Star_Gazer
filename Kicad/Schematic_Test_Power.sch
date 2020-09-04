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
P 2475 2875
AR Path="/5F6E4AF4" Ref="U?"  Part="1" 
AR Path="/5F580D08/5F6E4AF4" Ref="U201"  Part="1" 
F 0 "U201" H 2600 2990 50  0000 C CNN
F 1 "STBC08" H 2600 2899 50  0000 C CNN
F 2 "" H 2475 2875 50  0001 C CNN
F 3 "" H 2475 2875 50  0001 C CNN
F 4 "Lithium Ion Battery Recharge IC" H 2475 2875 50  0001 C CNN "part_details"
F 5 "STBC08PMR" H 2475 2875 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/stmicroelectronics/STBC08PMR/497-5808-6-ND/1506505" H 2475 2875 50  0001 C CNN "part_url"
	1    2475 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	2025 3025 1325 3025
Wire Wire Line
	2025 3225 1975 3225
Wire Wire Line
	2025 3425 1925 3425
Wire Wire Line
	1925 3425 1925 3625
$Comp
L power:GND #PWR?
U 1 1 5F6E4AFE
P 1925 3625
AR Path="/5F6E4AFE" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4AFE" Ref="#PWR0203"  Part="1" 
F 0 "#PWR0203" H 1925 3375 50  0001 C CNN
F 1 "GND" H 1930 3452 50  0000 C CNN
F 2 "" H 1925 3625 50  0001 C CNN
F 3 "" H 1925 3625 50  0001 C CNN
	1    1925 3625
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F6E4B06
P 3775 3225
AR Path="/5F6E4B06" Ref="R?"  Part="1" 
AR Path="/5F580D08/5F6E4B06" Ref="R202"  Part="1" 
F 0 "R202" V 3579 3225 50  0000 C CNN
F 1 "200" V 3670 3225 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3775 3225 50  0001 C CNN
F 3 "~" H 3775 3225 50  0001 C CNN
F 4 "Resistor - LED Status" H 3775 3225 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07200RL/311-200FRCT-ND/731622" H 3775 3225 50  0001 C CNN "part_url"
	1    3775 3225
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F6E4B0E
P 3775 3525
AR Path="/5F6E4B0E" Ref="R?"  Part="1" 
AR Path="/5F580D08/5F6E4B0E" Ref="R203"  Part="1" 
F 0 "R203" V 3579 3525 50  0000 C CNN
F 1 "200" V 3670 3525 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3775 3525 50  0001 C CNN
F 3 "~" H 3775 3525 50  0001 C CNN
F 4 "Resistor - LED Status" H 3775 3525 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07200RL/311-200FRCT-ND/731622" H 3775 3525 50  0001 C CNN "part_url"
	1    3775 3525
	0    1    1    0   
$EndComp
Wire Wire Line
	3975 3225 3875 3225
Wire Wire Line
	3975 3225 3975 3525
Wire Wire Line
	3975 3525 3875 3525
Wire Wire Line
	3975 3225 4075 3225
Connection ~ 3975 3225
$Comp
L Device:LED D?
U 1 1 5F6E4B19
P 3375 3225
AR Path="/5F6E4B19" Ref="D?"  Part="1" 
AR Path="/5F580D08/5F6E4B19" Ref="D201"  Part="1" 
F 0 "D201" H 3368 3441 50  0000 C CNN
F 1 "LED" H 3368 3350 50  0000 C CNN
F 2 "" H 3375 3225 50  0001 C CNN
F 3 "~" H 3375 3225 50  0001 C CNN
	1    3375 3225
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F6E4B1F
P 3375 3525
AR Path="/5F6E4B1F" Ref="D?"  Part="1" 
AR Path="/5F580D08/5F6E4B1F" Ref="D202"  Part="1" 
F 0 "D202" H 3368 3741 50  0000 C CNN
F 1 "LED" H 3368 3650 50  0000 C CNN
F 2 "" H 3375 3525 50  0001 C CNN
F 3 "~" H 3375 3525 50  0001 C CNN
	1    3375 3525
	1    0    0    -1  
$EndComp
Wire Wire Line
	2975 3425 3075 3425
Wire Wire Line
	3075 3425 3075 3525
Wire Wire Line
	3075 3525 3225 3525
Wire Wire Line
	2975 3225 3225 3225
Wire Wire Line
	3525 3225 3675 3225
Wire Wire Line
	3525 3525 3675 3525
Text GLabel 4075 3225 2    50   BiDi ~ 0
V_USB
Text GLabel 1225 3025 0    50   BiDi ~ 0
V_USB
$Comp
L Device:R R?
U 1 1 5F6E4B30
P 1825 3225
AR Path="/5F6E4B30" Ref="R?"  Part="1" 
AR Path="/5F580D08/5F6E4B30" Ref="R201"  Part="1" 
F 0 "R201" V 1618 3225 50  0000 C CNN
F 1 "10k" V 1709 3225 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1755 3225 50  0001 C CNN
F 3 "~" H 1825 3225 50  0001 C CNN
F 4 "Battery Program for 100mA recharge rate." H 1825 3225 50  0001 C CNN "part_details"
F 5 "Resistor - Prog" H 1825 3225 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206JR-0710KL/311-10KERCT-ND/732156" H 1825 3225 50  0001 C CNN "part_url"
	1    1825 3225
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1675 3225 1625 3225
Wire Wire Line
	1625 3225 1625 3625
$Comp
L power:GND #PWR?
U 1 1 5F6E4B38
P 1625 3625
AR Path="/5F6E4B38" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B38" Ref="#PWR0202"  Part="1" 
F 0 "#PWR0202" H 1625 3375 50  0001 C CNN
F 1 "GND" H 1630 3452 50  0000 C CNN
F 2 "" H 1625 3625 50  0001 C CNN
F 3 "" H 1625 3625 50  0001 C CNN
	1    1625 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	1325 3025 1325 3225
Connection ~ 1325 3025
Wire Wire Line
	1325 3025 1225 3025
$Comp
L Device:C C?
U 1 1 5F6E4B41
P 1325 3375
AR Path="/5F6E4B41" Ref="C?"  Part="1" 
AR Path="/5F580D08/5F6E4B41" Ref="C201"  Part="1" 
F 0 "C201" H 1440 3421 50  0000 L CNN
F 1 "1uF" H 1440 3330 50  0000 L CNN
F 2 "" H 1363 3225 50  0001 C CNN
F 3 "~" H 1325 3375 50  0001 C CNN
	1    1325 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	1325 3525 1325 3625
$Comp
L power:GND #PWR?
U 1 1 5F6E4B48
P 1325 3625
AR Path="/5F6E4B48" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B48" Ref="#PWR0201"  Part="1" 
F 0 "#PWR0201" H 1325 3375 50  0001 C CNN
F 1 "GND" H 1330 3452 50  0000 C CNN
F 2 "" H 1325 3625 50  0001 C CNN
F 3 "" H 1325 3625 50  0001 C CNN
	1    1325 3625
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 5F6E4B4E
P 3525 2525
AR Path="/5F6E4B4E" Ref="J?"  Part="1" 
AR Path="/5F580D08/5F6E4B4E" Ref="J201"  Part="1" 
F 0 "J201" H 3575 2300 50  0000 C CNN
F 1 "Conn_02x01 BATTERY" H 3575 2391 50  0000 C CNN
F 2 "" H 3525 2525 50  0001 C CNN
F 3 "~" H 3525 2525 50  0001 C CNN
	1    3525 2525
	-1   0    0    1   
$EndComp
Wire Wire Line
	3075 3025 2975 3025
Wire Wire Line
	3075 3025 3075 2775
Wire Wire Line
	3075 2525 3225 2525
$Comp
L power:GND #PWR?
U 1 1 5F6E4B57
P 3825 2575
AR Path="/5F6E4B57" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B57" Ref="#PWR0204"  Part="1" 
F 0 "#PWR0204" H 3825 2325 50  0001 C CNN
F 1 "GND" H 3830 2402 50  0000 C CNN
F 2 "" H 3825 2575 50  0001 C CNN
F 3 "" H 3825 2575 50  0001 C CNN
	1    3825 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3725 2525 3825 2525
Wire Wire Line
	3825 2525 3825 2575
Text GLabel 4075 2775 2    50   BiDi ~ 0
V_BATT
Wire Wire Line
	3075 2525 3075 2775
Wire Wire Line
	3075 2775 4075 2775
$Comp
L power:GND #PWR?
U 1 1 5F6E4B62
P 5875 3975
AR Path="/5F6E4B62" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B62" Ref="#PWR0207"  Part="1" 
F 0 "#PWR0207" H 5875 3725 50  0001 C CNN
F 1 "GND" H 5880 3802 50  0000 C CNN
F 2 "" H 5875 3975 50  0001 C CNN
F 3 "" H 5875 3975 50  0001 C CNN
	1    5875 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	5875 3575 5875 3975
Wire Wire Line
	6025 3575 5875 3575
$Comp
L StarGazer:AP22811BW5 U?
U 1 1 5F6E4B6E
P 6375 3275
AR Path="/5F6E4B6E" Ref="U?"  Part="1" 
AR Path="/5F580D08/5F6E4B6E" Ref="U202"  Part="1" 
F 0 "U202" H 6375 3440 50  0000 C CNN
F 1 "AP22811BW5" H 6375 3349 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5_HandSoldering" H 6375 3325 50  0001 C CNN
F 3 "" H 6375 3325 50  0001 C CNN
F 4 "Mosfet, active low (batt protection)" H 6375 3275 50  0001 C CNN "part_details"
F 5 " AP22811BW5-7 " H 6375 3275 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/diodes-incorporated/AP22811BW5-7/AP22811BW5-7DICT-ND/8545787" H 6375 3275 50  0001 C CNN "part_url"
	1    6375 3275
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F6E4B74
P 5675 3025
AR Path="/5F6E4B74" Ref="C?"  Part="1" 
AR Path="/5F580D08/5F6E4B74" Ref="C202"  Part="1" 
F 0 "C202" V 5423 3025 50  0000 C CNN
F 1 "1uF" V 5514 3025 50  0000 C CNN
F 2 "" H 5713 2875 50  0001 C CNN
F 3 "~" H 5675 3025 50  0001 C CNN
	1    5675 3025
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F6E4B7A
P 5525 3025
AR Path="/5F6E4B7A" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B7A" Ref="#PWR0205"  Part="1" 
F 0 "#PWR0205" H 5525 2775 50  0001 C CNN
F 1 "GND" V 5530 2897 50  0000 R CNN
F 2 "" H 5525 3025 50  0001 C CNN
F 3 "" H 5525 3025 50  0001 C CNN
	1    5525 3025
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F6E4B84
P 5625 3725
AR Path="/5F6E4B84" Ref="R?"  Part="1" 
AR Path="/5F580D08/5F6E4B84" Ref="R205"  Part="1" 
F 0 "R205" V 5418 3725 50  0000 C CNN
F 1 "10k" V 5509 3725 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5555 3725 50  0001 C CNN
F 3 "~" H 5625 3725 50  0001 C CNN
F 4 "" H 5625 3725 50  0001 C CNN "Name"
F 5 "" H 5625 3725 50  0001 C CNN "part_details"
F 6 "Resistor - Pull Up" H 5625 3725 50  0001 C CNN "part_name"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC1206JR-0710KL/311-10KERCT-ND/732156" H 5625 3725 50  0001 C CNN "part_url"
	1    5625 3725
	1    0    0    -1  
$EndComp
Wire Wire Line
	5625 3875 5625 3975
$Comp
L power:GND #PWR?
U 1 1 5F6E4B8B
P 5625 3975
AR Path="/5F6E4B8B" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4B8B" Ref="#PWR0206"  Part="1" 
F 0 "#PWR0206" H 5625 3725 50  0001 C CNN
F 1 "GND" H 5630 3802 50  0000 C CNN
F 2 "" H 5625 3975 50  0001 C CNN
F 3 "" H 5625 3975 50  0001 C CNN
	1    5625 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	5625 3575 5625 3475
Wire Wire Line
	5625 3475 6025 3475
Connection ~ 5625 3475
Text GLabel 5175 3475 0    50   BiDi ~ 0
V_USB
Wire Wire Line
	5225 3475 5175 3475
Wire Wire Line
	5525 3475 5625 3475
$Comp
L Device:R R?
U 1 1 5F6E4B9B
P 5375 3475
AR Path="/5F6E4B9B" Ref="R?"  Part="1" 
AR Path="/5F580D08/5F6E4B9B" Ref="R204"  Part="1" 
F 0 "R204" V 5168 3475 50  0000 C CNN
F 1 "10k" V 5259 3475 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5305 3475 50  0001 C CNN
F 3 "~" H 5375 3475 50  0001 C CNN
F 4 "" H 5375 3475 50  0001 C CNN "Name"
F 5 "" H 5375 3475 50  0001 C CNN "part_details"
F 6 "Resistor - Pull Up" H 5375 3475 50  0001 C CNN "part_name"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC1206JR-0710KL/311-10KERCT-ND/732156" H 5375 3475 50  0001 C CNN "part_url"
	1    5375 3475
	0    1    1    0   
$EndComp
Wire Wire Line
	5875 3375 6025 3375
Wire Wire Line
	6725 3475 6875 3475
Connection ~ 3075 2775
Text Notes 3625 3775 2    50   ~ 0
10k PROG allows for 100mA from BATT.
Text Notes 2075 2375 2    79   ~ 0
BATTERY CHARGING\n
Wire Notes Line
	875  3925 875  2225
Wire Notes Line
	875  2225 4425 2225
Wire Notes Line
	4425 2225 4425 3925
Wire Notes Line
	4425 3925 875  3925
NoConn ~ 6875 3475
Wire Wire Line
	5825 3025 5875 3025
Wire Wire Line
	5875 3025 5875 3375
Connection ~ 5875 3025
Wire Wire Line
	5875 3025 5875 2675
Wire Notes Line
	4675 4200 4675 2225
Wire Notes Line
	4675 2225 7450 2225
Wire Notes Line
	7450 2225 7450 4225
Wire Notes Line
	7450 4225 4675 4200
Text Notes 5625 2375 2    79   ~ 0
POWER TOGGLE
$Comp
L Switch:SW_DIP_x01 SW?
U 1 1 5F6E4BB5
P 5575 2675
AR Path="/5F6E4BB5" Ref="SW?"  Part="1" 
AR Path="/5F580D08/5F6E4BB5" Ref="SW201"  Part="1" 
F 0 "SW201" H 5575 2942 50  0000 C CNN
F 1 "SW_DIP_x01" H 5575 2851 50  0000 C CNN
F 2 "" H 5575 2675 50  0001 C CNN
F 3 "~" H 5575 2675 50  0001 C CNN
	1    5575 2675
	1    0    0    -1  
$EndComp
Text GLabel 9950 2700 2    51   BiDi ~ 0
V_REG
Text Notes 8125 2400 0    79   ~ 0
VOLT REGULATOR\n
Text GLabel 6950 3375 2    50   BiDi ~ 0
V_BATT_ON
Text GLabel 8475 2700 0    50   BiDi ~ 0
V_BATT_ON
$Comp
L Regulator_Linear:TLV75528PDBV U?
U 1 1 5F6E4BC4
P 9100 2800
AR Path="/5F6E4BC4" Ref="U?"  Part="1" 
AR Path="/5F580D08/5F6E4BC4" Ref="U203"  Part="1" 
F 0 "U203" H 9100 3142 50  0000 C CNN
F 1 "TLV75528PDBV" H 9100 3051 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9100 3100 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tlv755p.pdf" H 9100 2800 50  0001 C CNN
F 4 "Linear Regulator, 2.8v 500mA, 230mV~ dropout" H 9100 2800 50  0001 C CNN "part_details"
F 5 "TLV75528PDBVR" H 9100 2800 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/texas-instruments/TLV75528PDBVR/296-51798-1-ND/9746161" H 9100 2800 50  0001 C CNN "part_url"
	1    9100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2700 8475 2700
Wire Wire Line
	8800 2800 8800 2700
Connection ~ 8800 2700
Connection ~ 8800 2800
$Comp
L Device:C C?
U 1 1 5F6E4BCE
P 9800 3100
AR Path="/5F6E4BCE" Ref="C?"  Part="1" 
AR Path="/5F580D08/5F6E4BCE" Ref="C204"  Part="1" 
F 0 "C204" H 9915 3146 50  0000 L CNN
F 1 "1.0uF" H 9915 3055 50  0000 L CNN
F 2 "" H 9838 2950 50  0001 C CNN
F 3 "~" H 9800 3100 50  0001 C CNN
	1    9800 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	9800 2700 9800 2950
Wire Wire Line
	9400 2700 9800 2700
Connection ~ 9800 2700
Wire Wire Line
	9800 2700 9950 2700
Wire Wire Line
	8800 2950 8800 2800
Wire Wire Line
	9100 3100 9100 3250
Connection ~ 9100 3250
$Comp
L Device:C C?
U 1 1 5F6E4BDF
P 8800 3100
AR Path="/5F6E4BDF" Ref="C?"  Part="1" 
AR Path="/5F580D08/5F6E4BDF" Ref="C203"  Part="1" 
F 0 "C203" H 8915 3146 50  0000 L CNN
F 1 "1.0uF" H 8915 3055 50  0000 L CNN
F 2 "" H 8838 2950 50  0001 C CNN
F 3 "~" H 8800 3100 50  0001 C CNN
	1    8800 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8800 3250 9100 3250
Wire Wire Line
	9100 3250 9100 3375
$Comp
L power:GND #PWR?
U 1 1 5F6E4BE7
P 9100 3375
AR Path="/5F6E4BE7" Ref="#PWR?"  Part="1" 
AR Path="/5F580D08/5F6E4BE7" Ref="#PWR0208"  Part="1" 
F 0 "#PWR0208" H 9100 3125 50  0001 C CNN
F 1 "GND" H 9105 3202 50  0000 C CNN
F 2 "" H 9100 3375 50  0001 C CNN
F 3 "" H 9100 3375 50  0001 C CNN
	1    9100 3375
	1    0    0    -1  
$EndComp
Text Notes 9650 2625 0    79   ~ 0
V_REG = 2.8V\n
Wire Notes Line
	7975 2225 7975 3650
Wire Notes Line
	7975 3650 10550 3650
Wire Notes Line
	10550 3650 10550 2225
Wire Notes Line
	10550 2225 7975 2225
Text GLabel 5175 2675 0    50   BiDi ~ 0
V_BATT
Wire Wire Line
	5175 2675 5275 2675
Wire Wire Line
	6725 3375 6950 3375
Wire Wire Line
	9100 3250 9800 3250
$EndSCHEMATC
