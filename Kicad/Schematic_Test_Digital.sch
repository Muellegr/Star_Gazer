EESchema Schematic File Version 4
LIBS:StarGazer-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	575  2175 575  3525
Wire Notes Line
	3225 2175 575  2175
Wire Notes Line
	3225 3525 3225 2175
Wire Notes Line
	575  3525 3225 3525
Text Notes 650  2450 0    79   ~ 0
OSCILLATOR\n16MHZ
$Comp
L Device:C_Small C?
U 1 1 5F64B273
P 2525 2950
AR Path="/5F64B273" Ref="C?"  Part="1" 
AR Path="/5F580392/5F64B273" Ref="C303"  Part="1" 
F 0 "C303" V 2296 2950 50  0000 C CNN
F 1 "4pF" V 2387 2950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2525 2950 50  0001 C CNN
F 3 "~" H 2525 2950 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/yageo/CC0805BRNPO9BN3R9/311-4131-6-ND/8026143" H 2525 2950 50  0001 C CNN "part_url"
F 5 "Capactitor - Crystal" H 2525 2950 50  0001 C CNN "part_name"
	1    2525 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2525 2850 2525 2625
Wire Wire Line
	2525 3100 2525 3050
$Comp
L Device:C_Small C?
U 1 1 5F64B27B
P 1125 3000
AR Path="/5F64B27B" Ref="C?"  Part="1" 
AR Path="/5F580392/5F64B27B" Ref="C301"  Part="1" 
F 0 "C301" V 896 3000 50  0000 C CNN
F 1 "4pF" V 987 3000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1125 3000 50  0001 C CNN
F 3 "~" H 1125 3000 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/yageo/CC0805BRNPO9BN3R9/311-4131-6-ND/8026143" H 1125 3000 50  0001 C CNN "part_url"
F 5 "Capactitor - Crystal" H 1125 3000 50  0001 C CNN "part_name"
	1    1125 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1125 2900 1125 2775
Wire Wire Line
	1125 3100 2200 3100
Connection ~ 2525 3100
Wire Wire Line
	1175 2625 1300 2625
NoConn ~ 2900 2475
Wire Wire Line
	2900 2475 2825 2475
Wire Wire Line
	2675 2625 2725 2625
Text GLabel 2725 2625 2    50   BiDi ~ 0
OSC_OUT
$Comp
L Device:R_POT RV?
U 1 1 5F64B28C
P 2675 2475
AR Path="/5F64B28C" Ref="RV?"  Part="1" 
AR Path="/5F580392/5F64B28C" Ref="RV301"  Part="1" 
F 0 "RV301" V 2468 2475 50  0000 C CNN
F 1 "R_POT" V 2559 2475 50  0000 C CNN
F 2 "Kicad:35WR10KLFTR" H 2675 2475 50  0001 C CNN
F 3 "~" H 2675 2475 50  0001 C CNN
F 4 "Adjustable external clock resistor." H 2675 2475 50  0001 C CNN "part_details"
F 5 "Resistor - Potentiometer" H 2675 2475 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/tt-electronics-bi/35WR10KLFTR/987-1694-6-ND/6009891" H 2675 2475 50  0001 C CNN "part_url"
	1    2675 2475
	0    1    1    0   
$EndComp
Connection ~ 2525 2625
Wire Wire Line
	2525 2625 2525 2475
Wire Wire Line
	1125 2775 1300 2775
Connection ~ 1125 2775
Wire Wire Line
	2525 3100 2525 3275
Connection ~ 2200 3100
Wire Wire Line
	2525 3100 2200 3100
Wire Wire Line
	2100 2625 2525 2625
Wire Wire Line
	1000 2775 1125 2775
$Comp
L power:GND #PWR?
U 1 1 5F64B29B
P 1175 2625
AR Path="/5F64B29B" Ref="#PWR?"  Part="1" 
AR Path="/5F580392/5F64B29B" Ref="#PWR0304"  Part="1" 
F 0 "#PWR0304" H 1175 2375 50  0001 C CNN
F 1 "GND" H 1180 2452 50  0000 C CNN
F 2 "" H 1175 2625 50  0001 C CNN
F 3 "" H 1175 2625 50  0001 C CNN
	1    1175 2625
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F64B2A1
P 2525 3275
AR Path="/5F64B2A1" Ref="#PWR?"  Part="1" 
AR Path="/5F580392/5F64B2A1" Ref="#PWR0308"  Part="1" 
F 0 "#PWR0308" H 2525 3025 50  0001 C CNN
F 1 "GND" H 2530 3102 50  0000 C CNN
F 2 "" H 2525 3275 50  0001 C CNN
F 3 "" H 2525 3275 50  0001 C CNN
	1    2525 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2775 2200 3100
Wire Wire Line
	2100 2775 2200 2775
Text GLabel 1000 2775 0    50   BiDi ~ 0
OSC_IN
$Comp
L StarGazer:TSX-3225 U?
U 1 1 5F64B2AD
P 1550 2425
AR Path="/5F64B2AD" Ref="U?"  Part="1" 
AR Path="/5F580392/5F64B2AD" Ref="U301"  Part="1" 
F 0 "U301" H 1700 2556 79  0000 C CNN
F 1 "TSX-3225" H 1700 2421 79  0000 C CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_TSX3225-4Pin_3.2x2.5mm_HandSoldering" H 1600 2375 79  0001 C CNN
F 3 "" H 1600 2375 79  0001 C CNN
F 4 "16MHz Crystal" H 1550 2425 50  0001 C CNN "part_details"
F 5 "TSX-3225" H 1550 2425 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/epson/TSX-3225-16-0000MF10U-B3/SER4371DKR-ND/7932509" H 1550 2425 50  0001 C CNN "part_url"
	1    1550 2425
	1    0    0    -1  
$EndComp
Text Notes 700  5800 0    79   ~ 0
UI\n
Wire Notes Line
	600  6575 600  5625
Wire Notes Line
	2275 6575 600  6575
Wire Notes Line
	2275 5625 2275 6575
Wire Notes Line
	600  5625 2275 5625
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 5F64B2B8
P 1650 6025
AR Path="/5F64B2B8" Ref="J?"  Part="1" 
AR Path="/5F580392/5F64B2B8" Ref="J304"  Part="1" 
F 0 "J304" H 1622 5957 50  0000 R CNN
F 1 "CONN_JOYSTICK" H 1622 6048 50  0000 R CNN
F 2 "Connector_JST:JST_EH_B5B-EH-A_1x05_P2.50mm_Vertical" H 1650 6025 50  0001 C CNN
F 3 "~" H 1650 6025 50  0001 C CNN
F 4 "JST - 5 pin" H 1650 6025 50  0001 C CNN "part_details"
F 5 "LOCAL STOCK" H 1650 6025 50  0001 C CNN "part_url"
	1    1650 6025
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 6225 1450 6225
Wire Wire Line
	1350 6350 1350 6225
Wire Wire Line
	1350 6125 1450 6125
Wire Wire Line
	1350 6025 1450 6025
Wire Wire Line
	1350 5925 1450 5925
Wire Wire Line
	1350 5825 1450 5825
Text GLabel 1350 5825 0    51   BiDi ~ 0
V_REG
$Comp
L power:GND #PWR?
U 1 1 5F64B2C5
P 1350 6350
AR Path="/5F64B2C5" Ref="#PWR?"  Part="1" 
AR Path="/5F580392/5F64B2C5" Ref="#PWR0305"  Part="1" 
F 0 "#PWR0305" H 1350 6100 50  0001 C CNN
F 1 "GND" H 1355 6177 50  0000 C CNN
F 2 "" H 1350 6350 50  0001 C CNN
F 3 "" H 1350 6350 50  0001 C CNN
	1    1350 6350
	1    0    0    -1  
$EndComp
Text GLabel 1350 5925 0    47   BiDi ~ 0
UI_JOY_Y
Text GLabel 1350 6025 0    47   BiDi ~ 0
UI_JOY_X
Text GLabel 1350 6125 0    47   BiDi ~ 0
UI_BUTTON
Text Notes 7125 725  0    79   ~ 0
SHIFT REGISTERS
Wire Notes Line
	575  5475 2250 5475
Wire Wire Line
	1025 4850 1100 4850
Wire Wire Line
	1025 5050 1100 5050
Wire Wire Line
	1025 4950 1100 4950
Wire Notes Line
	2250 4600 575  4600
Wire Notes Line
	2250 5475 2250 4600
Wire Notes Line
	575  4600 575  5475
$Comp
L power:GND #PWR?
U 1 1 5F64B2D6
P 1100 5225
AR Path="/5F64B2D6" Ref="#PWR?"  Part="1" 
AR Path="/5F580392/5F64B2D6" Ref="#PWR0303"  Part="1" 
F 0 "#PWR0303" H 1100 4975 50  0001 C CNN
F 1 "GND" H 1105 5052 50  0000 C CNN
F 2 "" H 1100 5225 50  0001 C CNN
F 3 "" H 1100 5225 50  0001 C CNN
	1    1100 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 5150 1100 5225
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5F64B2DD
P 1300 5050
AR Path="/5F64B2DD" Ref="J?"  Part="1" 
AR Path="/5F580392/5F64B2DD" Ref="J302"  Part="1" 
F 0 "J302" H 1272 4932 50  0000 R CNN
F 1 "I2C_CONNECTOR_OUT" H 1272 5023 50  0000 R CNN
F 2 "Connector_JST:JST_EH_B4B-EH-A_1x04_P2.50mm_Vertical" H 1300 5050 50  0001 C CNN
F 3 "~" H 1300 5050 50  0001 C CNN
F 4 "JST - 4 pin" H 1300 5050 50  0001 C CNN "part_details"
F 5 "LOCAL STOCK" H 1300 5050 50  0001 C CNN "part_url"
	1    1300 5050
	-1   0    0    1   
$EndComp
Text Notes 600  4750 0    79   ~ 0
SCREEN\n
Text GLabel 1025 5050 0    50   BiDi ~ 0
I2C_SDA
Text GLabel 1025 4950 0    50   BiDi ~ 0
I2C_SCL
Text GLabel 1025 4850 0    51   BiDi ~ 0
V_REG
Wire Notes Line
	575  4500 2250 4500
Wire Wire Line
	1025 3875 1100 3875
Wire Wire Line
	1025 4075 1100 4075
Wire Wire Line
	1025 3975 1100 3975
Wire Notes Line
	2250 3625 575  3625
Wire Notes Line
	2250 4500 2250 3625
Wire Notes Line
	575  3625 575  4500
$Comp
L power:GND #PWR?
U 1 1 5F64B2EE
P 1100 4250
AR Path="/5F64B2EE" Ref="#PWR?"  Part="1" 
AR Path="/5F580392/5F64B2EE" Ref="#PWR0302"  Part="1" 
F 0 "#PWR0302" H 1100 4000 50  0001 C CNN
F 1 "GND" H 1105 4077 50  0000 C CNN
F 2 "" H 1100 4250 50  0001 C CNN
F 3 "" H 1100 4250 50  0001 C CNN
	1    1100 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 4175 1100 4250
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5F64B2F5
P 1300 4075
AR Path="/5F64B2F5" Ref="J?"  Part="1" 
AR Path="/5F580392/5F64B2F5" Ref="J301"  Part="1" 
F 0 "J301" H 1272 3957 50  0000 R CNN
F 1 "I2C_CONNECTOR_OUT" H 1272 4048 50  0000 R CNN
F 2 "Connector_JST:JST_EH_B4B-EH-A_1x04_P2.50mm_Vertical" H 1300 4075 50  0001 C CNN
F 3 "~" H 1300 4075 50  0001 C CNN
F 4 "JST - 4 pin" H 1300 4075 50  0001 C CNN "part_details"
F 5 "LOCAL STOCK" H 1300 4075 50  0001 C CNN "part_url"
	1    1300 4075
	-1   0    0    1   
$EndComp
Text Notes 600  3775 0    79   ~ 0
GPS\n
Text GLabel 1025 4075 0    50   BiDi ~ 0
I2C_SDA
Text GLabel 1025 3975 0    50   BiDi ~ 0
I2C_SCL
Text GLabel 1025 3875 0    51   BiDi ~ 0
V_REG
Connection ~ 10700 4900
Wire Wire Line
	10700 4800 10700 4900
Connection ~ 10700 4800
Wire Wire Line
	10700 4700 10700 4800
Connection ~ 10700 4700
Wire Wire Line
	10700 4600 10700 4700
Connection ~ 10700 4600
Wire Wire Line
	10700 4500 10700 4600
Connection ~ 10700 4500
Wire Wire Line
	10700 4400 10700 4500
Connection ~ 10700 4400
Wire Wire Line
	10700 4300 10700 4400
Connection ~ 10700 4300
Wire Wire Line
	10700 4200 10700 4300
Wire Wire Line
	10550 4900 10700 4900
Wire Wire Line
	10550 4800 10700 4800
Wire Wire Line
	10550 4700 10700 4700
Wire Wire Line
	10550 4600 10700 4600
Wire Wire Line
	10550 4500 10700 4500
Wire Wire Line
	10550 4400 10700 4400
Wire Wire Line
	10550 4300 10700 4300
Wire Wire Line
	10550 4200 10700 4200
Wire Wire Line
	10250 4900 10200 4900
$Comp
L Device:LED D?
U 1 1 5F64B31D
P 10400 4900
AR Path="/5F64B31D" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B31D" Ref="D324"  Part="1" 
F 0 "D324" H 10393 4645 39  0001 C CNN
F 1 "RING_LED" H 10393 4736 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 4900 50  0001 C CNN
F 3 "~" H 10400 4900 50  0001 C CNN
F 4 "LED - Green" H 10400 4900 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 4900 50  0001 C CNN "part_url"
	1    10400 4900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B323
P 10050 4900
AR Path="/5F64B323" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B323" Ref="R327"  Part="1" 
F 0 "R327" V 9843 4900 50  0001 C CNN
F 1 "330" V 9934 4900 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 4900 50  0001 C CNN
F 3 "~" H 10050 4900 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 4900 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 4900 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 4900 50  0001 C CNN "part_url"
	1    10050 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 4900 9900 4900
Wire Wire Line
	10250 4800 10200 4800
$Comp
L Device:LED D?
U 1 1 5F64B32B
P 10400 4800
AR Path="/5F64B32B" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B32B" Ref="D323"  Part="1" 
F 0 "D323" H 10393 4545 39  0001 C CNN
F 1 "RING_LED" H 10393 4636 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 4800 50  0001 C CNN
F 3 "~" H 10400 4800 50  0001 C CNN
F 4 "LED - Green" H 10400 4800 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 4800 50  0001 C CNN "part_url"
	1    10400 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B331
P 10050 4800
AR Path="/5F64B331" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B331" Ref="R326"  Part="1" 
F 0 "R326" V 9843 4800 50  0001 C CNN
F 1 "330" V 9934 4800 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 4800 50  0001 C CNN
F 3 "~" H 10050 4800 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 4800 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 4800 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 4800 50  0001 C CNN "part_url"
	1    10050 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 4800 9900 4800
Wire Wire Line
	10250 4700 10200 4700
$Comp
L Device:LED D?
U 1 1 5F64B339
P 10400 4700
AR Path="/5F64B339" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B339" Ref="D322"  Part="1" 
F 0 "D322" H 10393 4445 39  0001 C CNN
F 1 "RING_LED" H 10393 4536 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 4700 50  0001 C CNN
F 3 "~" H 10400 4700 50  0001 C CNN
F 4 "LED - Green" H 10400 4700 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 4700 50  0001 C CNN "part_url"
	1    10400 4700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B33F
P 10050 4700
AR Path="/5F64B33F" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B33F" Ref="R325"  Part="1" 
F 0 "R325" V 9843 4700 50  0001 C CNN
F 1 "330" V 9934 4700 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 4700 50  0001 C CNN
F 3 "~" H 10050 4700 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 4700 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 4700 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 4700 50  0001 C CNN "part_url"
	1    10050 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 4700 9900 4700
Wire Wire Line
	10250 4600 10200 4600
$Comp
L Device:LED D?
U 1 1 5F64B347
P 10400 4600
AR Path="/5F64B347" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B347" Ref="D321"  Part="1" 
F 0 "D321" H 10393 4345 39  0001 C CNN
F 1 "RING_LED" H 10393 4436 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 4600 50  0001 C CNN
F 3 "~" H 10400 4600 50  0001 C CNN
F 4 "LED - Green" H 10400 4600 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 4600 50  0001 C CNN "part_url"
	1    10400 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B34D
P 10050 4600
AR Path="/5F64B34D" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B34D" Ref="R324"  Part="1" 
F 0 "R324" V 9843 4600 50  0001 C CNN
F 1 "330" V 9934 4600 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 4600 50  0001 C CNN
F 3 "~" H 10050 4600 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 4600 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 4600 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 4600 50  0001 C CNN "part_url"
	1    10050 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 4600 9900 4600
Wire Wire Line
	10250 4500 10200 4500
$Comp
L Device:LED D?
U 1 1 5F64B355
P 10400 4500
AR Path="/5F64B355" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B355" Ref="D320"  Part="1" 
F 0 "D320" H 10393 4245 39  0001 C CNN
F 1 "RING_LED" H 10393 4336 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 4500 50  0001 C CNN
F 3 "~" H 10400 4500 50  0001 C CNN
F 4 "LED - Green" H 10400 4500 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 4500 50  0001 C CNN "part_url"
	1    10400 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B35B
P 10050 4500
AR Path="/5F64B35B" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B35B" Ref="R323"  Part="1" 
F 0 "R323" V 9843 4500 50  0001 C CNN
F 1 "330" V 9934 4500 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 4500 50  0001 C CNN
F 3 "~" H 10050 4500 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 4500 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 4500 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 4500 50  0001 C CNN "part_url"
	1    10050 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 4500 9900 4500
Wire Wire Line
	10250 4400 10200 4400
$Comp
L Device:LED D?
U 1 1 5F64B363
P 10400 4400
AR Path="/5F64B363" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B363" Ref="D319"  Part="1" 
F 0 "D319" H 10393 4145 39  0001 C CNN
F 1 "RING_LED" H 10393 4236 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 4400 50  0001 C CNN
F 3 "~" H 10400 4400 50  0001 C CNN
F 4 "LED - Green" H 10400 4400 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 4400 50  0001 C CNN "part_url"
	1    10400 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B369
P 10050 4400
AR Path="/5F64B369" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B369" Ref="R322"  Part="1" 
F 0 "R322" V 9843 4400 50  0001 C CNN
F 1 "330" V 9934 4400 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 4400 50  0001 C CNN
F 3 "~" H 10050 4400 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 4400 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 4400 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 4400 50  0001 C CNN "part_url"
	1    10050 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 4400 9900 4400
Wire Wire Line
	10250 4300 10200 4300
Wire Wire Line
	10250 4200 10200 4200
$Comp
L Device:LED D?
U 1 1 5F64B372
P 10400 4300
AR Path="/5F64B372" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B372" Ref="D318"  Part="1" 
F 0 "D318" H 10393 4045 39  0001 C CNN
F 1 "RING_LED" H 10393 4136 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 4300 50  0001 C CNN
F 3 "~" H 10400 4300 50  0001 C CNN
F 4 "LED - Green" H 10400 4300 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 4300 50  0001 C CNN "part_url"
	1    10400 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B378
P 10050 4300
AR Path="/5F64B378" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B378" Ref="R321"  Part="1" 
F 0 "R321" V 9843 4300 50  0001 C CNN
F 1 "330" V 9934 4300 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 4300 50  0001 C CNN
F 3 "~" H 10050 4300 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 4300 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 4300 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 4300 50  0001 C CNN "part_url"
	1    10050 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 4300 9900 4300
$Comp
L Device:LED D?
U 1 1 5F64B37F
P 10400 4200
AR Path="/5F64B37F" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B37F" Ref="D317"  Part="1" 
F 0 "D317" H 10393 3945 39  0000 C CNN
F 1 "RING_LED" H 10393 4036 39  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 4200 50  0001 C CNN
F 3 "~" H 10400 4200 50  0001 C CNN
F 4 "LED - Green" H 10400 4200 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 4200 50  0001 C CNN "part_url"
	1    10400 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B385
P 10050 4200
AR Path="/5F64B385" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B385" Ref="R320"  Part="1" 
F 0 "R320" V 9843 4200 39  0000 C CNN
F 1 "330" V 9934 4200 39  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 4200 50  0001 C CNN
F 3 "~" H 10050 4200 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 4200 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 4200 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 4200 50  0001 C CNN "part_url"
	1    10050 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 4200 9900 4200
Connection ~ 10700 3375
Wire Wire Line
	10700 3275 10700 3375
Connection ~ 10700 3275
Wire Wire Line
	10700 3175 10700 3275
Connection ~ 10700 3175
Wire Wire Line
	10700 3075 10700 3175
Connection ~ 10700 3075
Wire Wire Line
	10700 2975 10700 3075
Connection ~ 10700 2975
Wire Wire Line
	10700 2875 10700 2975
Connection ~ 10700 2875
Wire Wire Line
	10700 2775 10700 2875
Wire Wire Line
	10550 3375 10700 3375
Wire Wire Line
	10550 3275 10700 3275
Wire Wire Line
	10550 3175 10700 3175
Wire Wire Line
	10550 3075 10700 3075
Wire Wire Line
	10550 2975 10700 2975
Wire Wire Line
	10550 2875 10700 2875
Wire Wire Line
	10550 2775 10700 2775
Wire Wire Line
	10250 3375 10200 3375
$Comp
L Device:LED D?
U 1 1 5F64B3AA
P 10400 3375
AR Path="/5F64B3AA" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B3AA" Ref="D316"  Part="1" 
F 0 "D316" H 10393 3120 39  0001 C CNN
F 1 "RING_LED" H 10393 3211 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 3375 50  0001 C CNN
F 3 "~" H 10400 3375 50  0001 C CNN
F 4 "LED - Green" H 10400 3375 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 3375 50  0001 C CNN "part_url"
	1    10400 3375
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B3B0
P 10050 3375
AR Path="/5F64B3B0" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B3B0" Ref="R319"  Part="1" 
F 0 "R319" V 9843 3375 50  0001 C CNN
F 1 "330" V 9934 3375 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 3375 50  0001 C CNN
F 3 "~" H 10050 3375 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 3375 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 3375 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 3375 50  0001 C CNN "part_url"
	1    10050 3375
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 3375 9900 3375
Wire Wire Line
	10250 3275 10200 3275
$Comp
L Device:LED D?
U 1 1 5F64B3B8
P 10400 3275
AR Path="/5F64B3B8" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B3B8" Ref="D315"  Part="1" 
F 0 "D315" H 10393 3020 39  0001 C CNN
F 1 "RING_LED" H 10393 3111 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 3275 50  0001 C CNN
F 3 "~" H 10400 3275 50  0001 C CNN
F 4 "LED - Green" H 10400 3275 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 3275 50  0001 C CNN "part_url"
	1    10400 3275
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B3BE
P 10050 3275
AR Path="/5F64B3BE" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B3BE" Ref="R318"  Part="1" 
F 0 "R318" V 9843 3275 50  0001 C CNN
F 1 "330" V 9934 3275 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 3275 50  0001 C CNN
F 3 "~" H 10050 3275 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 3275 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 3275 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 3275 50  0001 C CNN "part_url"
	1    10050 3275
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 3275 9900 3275
Wire Wire Line
	10250 3175 10200 3175
$Comp
L Device:LED D?
U 1 1 5F64B3C6
P 10400 3175
AR Path="/5F64B3C6" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B3C6" Ref="D314"  Part="1" 
F 0 "D314" H 10393 2920 39  0001 C CNN
F 1 "RING_LED" H 10393 3011 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 3175 50  0001 C CNN
F 3 "~" H 10400 3175 50  0001 C CNN
F 4 "LED - Green" H 10400 3175 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 3175 50  0001 C CNN "part_url"
	1    10400 3175
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B3CC
P 10050 3175
AR Path="/5F64B3CC" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B3CC" Ref="R317"  Part="1" 
F 0 "R317" V 9843 3175 50  0001 C CNN
F 1 "330" V 9934 3175 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 3175 50  0001 C CNN
F 3 "~" H 10050 3175 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 3175 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 3175 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 3175 50  0001 C CNN "part_url"
	1    10050 3175
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 3175 9900 3175
Wire Wire Line
	10250 3075 10200 3075
$Comp
L Device:LED D?
U 1 1 5F64B3D4
P 10400 3075
AR Path="/5F64B3D4" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B3D4" Ref="D313"  Part="1" 
F 0 "D313" H 10393 2820 39  0001 C CNN
F 1 "RING_LED" H 10393 2911 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 3075 50  0001 C CNN
F 3 "~" H 10400 3075 50  0001 C CNN
F 4 "LED - Green" H 10400 3075 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 3075 50  0001 C CNN "part_url"
	1    10400 3075
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B3DA
P 10050 3075
AR Path="/5F64B3DA" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B3DA" Ref="R316"  Part="1" 
F 0 "R316" V 9843 3075 50  0001 C CNN
F 1 "330" V 9934 3075 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 3075 50  0001 C CNN
F 3 "~" H 10050 3075 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 3075 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 3075 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 3075 50  0001 C CNN "part_url"
	1    10050 3075
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 3075 9900 3075
Wire Wire Line
	10250 2975 10200 2975
$Comp
L Device:LED D?
U 1 1 5F64B3E2
P 10400 2975
AR Path="/5F64B3E2" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B3E2" Ref="D312"  Part="1" 
F 0 "D312" H 10393 2720 39  0001 C CNN
F 1 "RING_LED" H 10393 2811 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 2975 50  0001 C CNN
F 3 "~" H 10400 2975 50  0001 C CNN
F 4 "LED - Green" H 10400 2975 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 2975 50  0001 C CNN "part_url"
	1    10400 2975
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B3E8
P 10050 2975
AR Path="/5F64B3E8" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B3E8" Ref="R315"  Part="1" 
F 0 "R315" V 9843 2975 50  0001 C CNN
F 1 "330" V 9934 2975 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 2975 50  0001 C CNN
F 3 "~" H 10050 2975 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 2975 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 2975 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 2975 50  0001 C CNN "part_url"
	1    10050 2975
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 2975 9900 2975
Wire Wire Line
	10250 2875 10200 2875
$Comp
L Device:LED D?
U 1 1 5F64B3F0
P 10400 2875
AR Path="/5F64B3F0" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B3F0" Ref="D311"  Part="1" 
F 0 "D311" H 10393 2620 39  0001 C CNN
F 1 "RING_LED" H 10393 2711 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 2875 50  0001 C CNN
F 3 "~" H 10400 2875 50  0001 C CNN
F 4 "LED - Green" H 10400 2875 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 2875 50  0001 C CNN "part_url"
	1    10400 2875
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B3F6
P 10050 2875
AR Path="/5F64B3F6" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B3F6" Ref="R314"  Part="1" 
F 0 "R314" V 9843 2875 50  0001 C CNN
F 1 "330" V 9934 2875 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 2875 50  0001 C CNN
F 3 "~" H 10050 2875 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 2875 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 2875 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 2875 50  0001 C CNN "part_url"
	1    10050 2875
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 2875 9900 2875
Wire Wire Line
	10250 2775 10200 2775
Wire Wire Line
	9550 2775 9900 2775
Wire Notes Line
	4800 4975 2350 4975
Wire Notes Line
	4800 6350 4800 4975
Wire Notes Line
	2350 6350 4800 6350
Wire Notes Line
	2350 4975 2350 6350
Wire Wire Line
	3500 5675 3500 5925
Text Notes 2375 5125 0    79   ~ 0
I2C
Text GLabel 2750 4100 0    50   BiDi ~ 0
I2C_SDA
Text GLabel 2750 4000 0    50   BiDi ~ 0
I2C_SCL
Text GLabel 5225 3075 2    50   BiDi ~ 0
I2C_SDA
Text GLabel 5225 3175 2    50   BiDi ~ 0
I2C_SCL
Wire Wire Line
	2800 5925 3500 5925
Wire Wire Line
	2800 5825 3150 5825
Text GLabel 2800 5825 0    50   BiDi ~ 0
I2C_SDA
Text GLabel 2800 5925 0    50   BiDi ~ 0
I2C_SCL
Text GLabel 2800 5200 0    51   BiDi ~ 0
V_REG
Connection ~ 3150 5200
Wire Wire Line
	3150 5200 2800 5200
Wire Wire Line
	3500 5200 3500 5375
Wire Wire Line
	3150 5200 3500 5200
Wire Wire Line
	3150 5375 3150 5200
Wire Wire Line
	3150 5675 3150 5825
$Comp
L Device:R R?
U 1 1 5F64B4C2
P 3500 5525
AR Path="/5F64B4C2" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B4C2" Ref="R303"  Part="1" 
F 0 "R303" V 3293 5525 50  0000 C CNN
F 1 "R_I2C_PULLUP" V 3384 5525 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3430 5525 50  0001 C CNN
F 3 "~" H 3500 5525 50  0001 C CNN
	1    3500 5525
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B4C8
P 3150 5525
AR Path="/5F64B4C8" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B4C8" Ref="R302"  Part="1" 
F 0 "R302" V 2943 5525 50  0000 C CNN
F 1 "R_I2C_PULLUP" V 3034 5525 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3080 5525 50  0001 C CNN
F 3 "~" H 3150 5525 50  0001 C CNN
	1    3150 5525
	1    0    0    -1  
$EndComp
Text Notes 2400 3750 0    79   ~ 0
MAGNOMETER
Wire Notes Line
	6000 3600 2350 3600
Wire Notes Line
	6000 4925 6000 3600
Wire Notes Line
	2350 3600 2350 4925
Wire Wire Line
	2750 4000 3025 4000
Wire Wire Line
	2750 4100 3025 4100
$Comp
L StarGazer:LIS3MDL U?
U 1 1 5F64B4EE
P 3575 3850
AR Path="/5F64B4EE" Ref="U?"  Part="1" 
AR Path="/5F580392/5F64B4EE" Ref="U302"  Part="1" 
F 0 "U302" H 3575 3981 79  0000 C CNN
F 1 "LIS3MDLTR" H 3575 3846 79  0000 C CNN
F 2 "Package_LGA:LGA-12_2x2mm_P0.5mm" H 3575 3850 79  0001 C CNN
F 3 "" H 3575 3850 79  0001 C CNN
F 4 "Magnometer Sensor " H 3575 3850 50  0001 C CNN "part_details"
F 5 "LIS3MDLTR" H 3575 3850 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/stmicroelectronics/LIS3MDLTR/497-13892-1-ND/4309737" H 3575 3850 50  0001 C CNN "part_url"
	1    3575 3850
	1    0    0    -1  
$EndComp
Wire Notes Line
	5625 1625 3325 1625
Wire Notes Line
	5625 3525 5625 1625
Wire Notes Line
	3325 3525 5625 3525
Wire Notes Line
	3325 1625 3325 3525
Text Notes 3375 1775 0    79   ~ 0
GYRO
$Comp
L power:GND #PWR?
U 1 1 5F64B4F9
P 5025 2375
AR Path="/5F64B4F9" Ref="#PWR?"  Part="1" 
AR Path="/5F580392/5F64B4F9" Ref="#PWR0312"  Part="1" 
F 0 "#PWR0312" H 5025 2125 50  0001 C CNN
F 1 "GND" H 5030 2202 50  0000 C CNN
F 2 "" H 5025 2375 50  0001 C CNN
F 3 "" H 5025 2375 50  0001 C CNN
	1    5025 2375
	1    0    0    -1  
$EndComp
Wire Wire Line
	5025 2275 5025 2375
Connection ~ 5025 2275
Wire Wire Line
	5025 2175 5025 2275
Connection ~ 4925 2175
Wire Wire Line
	4925 2175 5025 2175
Connection ~ 4925 2275
Wire Wire Line
	4925 2275 5025 2275
Wire Wire Line
	4925 2175 4925 2275
Wire Wire Line
	5225 3075 4925 3075
Wire Wire Line
	4925 3175 5225 3175
$Comp
L power:GND #PWR?
U 1 1 5F64B509
P 5025 2975
AR Path="/5F64B509" Ref="#PWR?"  Part="1" 
AR Path="/5F580392/5F64B509" Ref="#PWR0313"  Part="1" 
F 0 "#PWR0313" H 5025 2725 50  0001 C CNN
F 1 "GND" H 5030 2802 50  0000 C CNN
F 2 "" H 5025 2975 50  0001 C CNN
F 3 "" H 5025 2975 50  0001 C CNN
	1    5025 2975
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4925 2975 5025 2975
Wire Wire Line
	4075 1825 4075 2175
Wire Wire Line
	5175 1825 4075 1825
Wire Wire Line
	5175 2875 5175 1825
Wire Wire Line
	4925 2875 5175 2875
Wire Wire Line
	3875 2175 4075 2175
Connection ~ 3875 2175
Wire Wire Line
	3675 2175 3875 2175
Wire Wire Line
	3875 2625 3875 2175
Wire Wire Line
	3875 3075 4075 3075
Wire Wire Line
	3875 2925 3875 3075
$Comp
L Device:C C?
U 1 1 5F64B51A
P 3875 2775
AR Path="/5F64B51A" Ref="C?"  Part="1" 
AR Path="/5F580392/5F64B51A" Ref="C305"  Part="1" 
F 0 "C305" H 3990 2821 50  0000 L CNN
F 1 "2.2uF" H 3990 2730 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3913 2625 50  0001 C CNN
F 3 "~" H 3875 2775 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/885012107001/732-7612-1-ND/5454239" H 3875 2775 50  0001 C CNN "part_url"
F 5 "Capactitor - Bypass" H 3875 2775 50  0001 C CNN "part_name"
	1    3875 2775
	-1   0    0    1   
$EndComp
Text GLabel 3675 2175 0    51   BiDi ~ 0
V_REG
Connection ~ 4075 2175
Wire Wire Line
	4075 2275 4075 2175
Wire Wire Line
	4175 2275 4075 2275
Wire Wire Line
	4175 2175 4075 2175
NoConn ~ 4125 3175
$Comp
L power:GND #PWR?
U 1 1 5F64B526
P 4075 3275
AR Path="/5F64B526" Ref="#PWR?"  Part="1" 
AR Path="/5F580392/5F64B526" Ref="#PWR0311"  Part="1" 
F 0 "#PWR0311" H 4075 3025 50  0001 C CNN
F 1 "GND" H 4080 3102 50  0000 C CNN
F 2 "" H 4075 3275 50  0001 C CNN
F 3 "" H 4075 3275 50  0001 C CNN
	1    4075 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	4075 3075 4075 3275
Connection ~ 4075 3075
Wire Wire Line
	4075 2975 4075 3075
Connection ~ 4075 2975
Wire Wire Line
	4075 2875 4075 2975
Connection ~ 4075 2875
Wire Wire Line
	4075 2775 4075 2875
Connection ~ 4075 2775
Wire Wire Line
	4075 2675 4075 2775
Connection ~ 4075 2675
Wire Wire Line
	4075 2575 4075 2675
Connection ~ 4075 2575
Wire Wire Line
	4075 2475 4075 2575
Wire Wire Line
	4175 3175 4125 3175
Wire Wire Line
	4175 3075 4075 3075
Wire Wire Line
	4175 2975 4075 2975
Wire Wire Line
	4175 2875 4075 2875
Wire Wire Line
	4175 2775 4075 2775
Wire Wire Line
	4175 2675 4075 2675
Wire Wire Line
	4175 2575 4075 2575
Wire Wire Line
	4175 2475 4075 2475
$Comp
L StarGazer:LSM6DS33TR U?
U 1 1 5F64B544
P 4575 2025
AR Path="/5F64B544" Ref="U?"  Part="1" 
AR Path="/5F580392/5F64B544" Ref="U303"  Part="1" 
F 0 "U303" H 4550 2140 50  0000 C CNN
F 1 "LSM6DS33TR" H 4550 2049 50  0000 C CNN
F 2 "Package_LGA:LGA-16_3x3mm_P0.5mm_LayoutBorder3x5y" H 4575 2025 50  0001 C CNN
F 3 "" H 4575 2025 50  0001 C CNN
F 4 "6-axis Gyrometer" H 4575 2025 50  0001 C CNN "part_details"
F 5 "LSM6DS33TR" H 4575 2025 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/stmicroelectronics/LSM6DS33TR/497-15996-1-ND/5452396" H 4575 2025 50  0001 C CNN "part_url"
	1    4575 2025
	1    0    0    -1  
$EndComp
Wire Notes Line
	7075 550  7075 5550
Wire Notes Line
	10925 550  7075 550 
Wire Notes Line
	7075 5550 10925 5550
Text Notes 650  675  0    79   ~ 0
RESET DIAGRAM
Wire Notes Line
	575  2025 2675 2025
Wire Notes Line
	575  550  575  2025
Wire Notes Line
	2675 550  575  550 
Wire Notes Line
	2675 2025 2675 550 
Wire Wire Line
	1675 1150 1675 1325
Connection ~ 1675 1150
Wire Wire Line
	1675 1150 1225 1150
Wire Wire Line
	1675 975  1675 1150
Connection ~ 1675 1325
Wire Wire Line
	1625 975  1675 975 
$Comp
L Device:C C?
U 1 1 5F64B55C
P 1675 1475
AR Path="/5F64B55C" Ref="C?"  Part="1" 
AR Path="/5F580392/5F64B55C" Ref="C302"  Part="1" 
F 0 "C302" H 1790 1521 50  0000 L CNN
F 1 "1uF" H 1790 1430 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1713 1325 50  0001 C CNN
F 3 "~" H 1675 1475 50  0001 C CNN
F 4 "" H 1675 1475 50  0001 C CNN "part_details"
F 5 "Capactitor - Bypass" H 1675 1475 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/885012107015/732-7625-1-ND/5454252" H 1675 1475 50  0001 C CNN "part_url"
	1    1675 1475
	1    0    0    -1  
$EndComp
Wire Wire Line
	1225 1325 1675 1325
Wire Wire Line
	1675 1325 2075 1325
Wire Wire Line
	1675 1625 1675 1725
$Comp
L Device:CP C?
U 1 1 5F64B56E
P 8425 3925
AR Path="/5F64B56E" Ref="C?"  Part="1" 
AR Path="/5F580392/5F64B56E" Ref="C308"  Part="1" 
F 0 "C308" H 8307 3879 50  0000 R CNN
F 1 "10uF" H 8307 3970 50  0000 R CNN
F 2 "Capacitor_SMD:CP_Elec_4x3" H 8463 3775 50  0001 C CNN
F 3 "~" H 8425 3925 50  0001 C CNN
F 4 "Capactitor - Bypass" H 8425 3925 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/865080340001/732-8411-1-ND/5728368" H 8425 3925 50  0001 C CNN "part_url"
	1    8425 3925
	-1   0    0    1   
$EndComp
$Comp
L StarGazer:74HC595D U?
U 1 1 5F64B577
P 9150 4000
AR Path="/5F64B577" Ref="U?"  Part="1" 
AR Path="/5F580392/5F64B577" Ref="U306"  Part="1" 
F 0 "U306" H 9125 4067 50  0000 C CNN
F 1 "74HC595PW" H 9125 3975 51  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 9200 4100 50  0001 C CNN
F 3 "" H 9200 4100 50  0001 C CNN
F 4 "Shift Register" H 9150 4000 50  0001 C CNN "part_details"
F 5 "74HC595PW,118" H 9150 4000 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/nexperia-usa-inc/74HC595PW-112/1727-6439-ND/1230493" H 9150 4000 50  0001 C CNN "part_url"
	1    9150 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B590
P 1475 975
AR Path="/5F64B590" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B590" Ref="R301"  Part="1" 
F 0 "R301" V 1268 975 50  0000 C CNN
F 1 "10k" V 1359 975 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1405 975 50  0001 C CNN
F 3 "~" H 1475 975 50  0001 C CNN
F 4 "" H 1475 975 50  0001 C CNN "Name"
F 5 "" H 1475 975 50  0001 C CNN "part_details"
F 6 "Resistor - Pull Up" H 1475 975 50  0001 C CNN "part_name"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC1206JR-0710KL/311-10KERCT-ND/732156" H 1475 975 50  0001 C CNN "part_url"
	1    1475 975 
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F64B5A8
P 2075 1525
AR Path="/5F64B5A8" Ref="SW?"  Part="1" 
AR Path="/5F580392/5F64B5A8" Ref="SW301"  Part="1" 
F 0 "SW301" V 2029 1673 50  0000 L CNN
F 1 "RESET PUSH" V 2120 1673 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_RS282G05A3" H 2075 1725 50  0001 C CNN
F 3 "~" H 2075 1725 50  0001 C CNN
F 4 "Push Switch" H 2075 1525 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/c-k/PTS636-SM43-SMTR-LFS/CKN12310-1-ND/10071745" H 2075 1525 50  0001 C CNN "part_url"
	1    2075 1525
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 4650 8700 4650
Wire Wire Line
	7400 3225 7400 4650
Wire Wire Line
	8700 3225 7400 3225
Wire Wire Line
	7400 3125 8700 3125
Wire Wire Line
	7400 1775 7400 3125
Wire Wire Line
	9250 5250 9250 5325
Connection ~ 9250 5250
Wire Wire Line
	8700 5050 8600 5050
Wire Wire Line
	9250 5150 9250 5250
Connection ~ 9250 5150
Text GLabel 8300 4450 0    50   BiDi ~ 0
SHIFT_REG_LATCH
Wire Wire Line
	8300 4450 8700 4450
Text GLabel 8300 4350 0    50   BiDi ~ 0
SHIFT_REG_CLK
Wire Wire Line
	8300 4350 8700 4350
$Comp
L power:GND #PWR?
U 1 1 5F64B5CF
P 8200 3775
AR Path="/5F64B5CF" Ref="#PWR?"  Part="1" 
AR Path="/5F580392/5F64B5CF" Ref="#PWR0316"  Part="1" 
F 0 "#PWR0316" H 8200 3525 50  0001 C CNN
F 1 "GND" H 8205 3602 50  0000 C CNN
F 2 "" H 8200 3775 50  0001 C CNN
F 3 "" H 8200 3775 50  0001 C CNN
	1    8200 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 3775 8200 3775
Wire Wire Line
	8425 4075 8425 4200
Connection ~ 8425 4200
Wire Wire Line
	8425 4200 8700 4200
Wire Wire Line
	8300 4200 8425 4200
Wire Wire Line
	8700 4950 8300 4950
Wire Wire Line
	9250 5100 9250 5150
Text GLabel 8300 4200 0    50   BiDi ~ 0
V_REG
$Comp
L power:GND #PWR?
U 1 1 5F64B5DE
P 9250 5325
AR Path="/5F64B5DE" Ref="#PWR?"  Part="1" 
AR Path="/5F580392/5F64B5DE" Ref="#PWR0319"  Part="1" 
F 0 "#PWR0319" H 9250 5075 50  0001 C CNN
F 1 "GND" H 9255 5152 50  0000 C CNN
F 2 "" H 9250 5325 50  0001 C CNN
F 3 "" H 9250 5325 50  0001 C CNN
	1    9250 5325
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3700 9250 3725
Connection ~ 9250 3700
Wire Wire Line
	8700 3525 8600 3525
Text GLabel 8300 2925 0    50   BiDi ~ 0
SHIFT_REG_LATCH
Wire Wire Line
	8300 2925 8700 2925
Text GLabel 8300 2825 0    50   BiDi ~ 0
SHIFT_REG_CLK
Wire Wire Line
	8300 2825 8700 2825
Wire Wire Line
	8700 3425 8300 3425
$Comp
L power:GND #PWR?
U 1 1 5F64B5FE
P 9250 3725
AR Path="/5F64B5FE" Ref="#PWR?"  Part="1" 
AR Path="/5F580392/5F64B5FE" Ref="#PWR0318"  Part="1" 
F 0 "#PWR0318" H 9250 3475 50  0001 C CNN
F 1 "GND" H 9255 3552 50  0000 C CNN
F 2 "" H 9250 3725 50  0001 C CNN
F 3 "" H 9250 3725 50  0001 C CNN
	1    9250 3725
	1    0    0    -1  
$EndComp
Text GLabel 1225 1150 0    50   BiDi ~ 0
SW_RESET_N
Wire Wire Line
	1325 975  1225 975 
Text GLabel 1225 975  0    50   BiDi ~ 0
V_REG
$Comp
L power:GND #PWR?
U 1 1 5F64B61D
P 2075 1725
AR Path="/5F64B61D" Ref="#PWR?"  Part="1" 
AR Path="/5F580392/5F64B61D" Ref="#PWR0307"  Part="1" 
F 0 "#PWR0307" H 2075 1475 50  0001 C CNN
F 1 "GND" H 2080 1552 50  0000 C CNN
F 2 "" H 2075 1725 50  0001 C CNN
F 3 "" H 2075 1725 50  0001 C CNN
	1    2075 1725
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F64B623
P 1675 1725
AR Path="/5F64B623" Ref="#PWR?"  Part="1" 
AR Path="/5F580392/5F64B623" Ref="#PWR0306"  Part="1" 
F 0 "#PWR0306" H 1675 1475 50  0001 C CNN
F 1 "GND" H 1680 1552 50  0000 C CNN
F 2 "" H 1675 1725 50  0001 C CNN
F 3 "" H 1675 1725 50  0001 C CNN
	1    1675 1725
	1    0    0    -1  
$EndComp
Text GLabel 1225 1325 0    50   BiDi ~ 0
RESET_N
Text GLabel 8600 3525 0    50   BiDi ~ 0
SHIFT_REG_OUTPUT_ENABLE_N
Text GLabel 8600 5050 0    50   BiDi ~ 0
SHIFT_REG_OUTPUT_ENABLE_N
Wire Wire Line
	8700 4750 8550 4750
NoConn ~ 8550 4750
Wire Wire Line
	9250 5250 10700 5250
Wire Wire Line
	10700 4900 10700 5250
Wire Wire Line
	9250 3700 10700 3700
Wire Wire Line
	10700 3375 10700 3700
Text GLabel 1175 7050 0    50   BiDi ~ 0
SWDIO
Text GLabel 1175 6950 0    50   BiDi ~ 0
SWCLK
Text GLabel 1175 7150 0    50   BiDi ~ 0
SW_RESET_N
$Comp
L power:GND #PWR0301
U 1 1 5F581F30
P 975 7450
F 0 "#PWR0301" H 975 7200 50  0001 C CNN
F 1 "GND" H 980 7277 50  0000 C CNN
F 2 "" H 975 7450 50  0001 C CNN
F 3 "" H 975 7450 50  0001 C CNN
	1    975  7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	975  7450 975  7350
Text GLabel 1175 7250 0    50   BiDi ~ 0
SW_3_3V
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 5F581F38
P 1575 7150
AR Path="/5F581F38" Ref="J?"  Part="1" 
AR Path="/5F580392/5F581F38" Ref="J303"  Part="1" 
F 0 "J303" H 1547 7082 50  0000 R CNN
F 1 "SWD_DEBUG" H 1547 7173 50  0000 R CNN
F 2 "Connector_JST:JST_EH_B5B-EH-A_1x05_P2.50mm_Vertical" H 1575 7150 50  0001 C CNN
F 3 "~" H 1575 7150 50  0001 C CNN
F 4 "LOCAL STOCK" H 1575 7150 50  0001 C CNN "part_url"
	1    1575 7150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1175 6950 1375 6950
Wire Wire Line
	1375 7050 1175 7050
Wire Wire Line
	1175 7150 1375 7150
Wire Wire Line
	1175 7250 1375 7250
Wire Wire Line
	975  7350 1375 7350
Wire Notes Line
	600  6650 600  7700
Wire Notes Line
	600  7700 2350 7700
Wire Notes Line
	2350 7700 2350 6650
Wire Notes Line
	2350 6650 600  6650
Text Notes 650  6775 0    50   ~ 0
SWD - PROGRAM\n
Text GLabel 2750 4200 0    51   BiDi ~ 0
V_REG
Wire Wire Line
	3025 4200 2875 4200
Wire Wire Line
	2875 4200 2875 4300
Wire Wire Line
	2875 4300 3025 4300
Connection ~ 2875 4200
Wire Wire Line
	2875 4200 2750 4200
$Comp
L power:GND #PWR0105
U 1 1 5F746BCA
P 4275 4700
F 0 "#PWR0105" H 4275 4450 50  0001 C CNN
F 1 "GND" H 4280 4527 50  0000 C CNN
F 2 "" H 4275 4700 50  0001 C CNN
F 3 "" H 4275 4700 50  0001 C CNN
	1    4275 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4175 4600 4275 4600
Wire Wire Line
	4275 4600 4275 4700
Connection ~ 4275 4600
Wire Wire Line
	4175 4400 4275 4400
Wire Wire Line
	3025 4500 2875 4500
Text GLabel 5575 4000 2    51   BiDi ~ 0
V_REG
Wire Wire Line
	5575 4000 5475 4000
Wire Wire Line
	4175 4100 4275 4100
Wire Wire Line
	4275 4100 4275 4000
Connection ~ 4275 4000
Wire Wire Line
	4275 4000 4175 4000
$Comp
L Device:C C?
U 1 1 5F891147
P 5050 4350
AR Path="/5F891147" Ref="C?"  Part="1" 
AR Path="/5F580392/5F891147" Ref="C309"  Part="1" 
F 0 "C309" H 5165 4396 50  0000 L CNN
F 1 "100nF" H 5165 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5088 4200 50  0001 C CNN
F 3 "~" H 5050 4350 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/885012107001/732-7612-1-ND/5454239" H 5050 4350 50  0001 C CNN "part_url"
F 5 "Capactitor - Bypass" H 5050 4350 50  0001 C CNN "part_name"
	1    5050 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4275 4000 5050 4000
Wire Wire Line
	5050 4000 5050 4200
Wire Wire Line
	4175 4200 4600 4200
Wire Wire Line
	4275 4400 4275 4500
Wire Wire Line
	4275 4500 4275 4600
Wire Wire Line
	4175 4500 4275 4500
$Comp
L Device:C C?
U 1 1 5F7F2C46
P 4600 4350
AR Path="/5F7F2C46" Ref="C?"  Part="1" 
AR Path="/5F580392/5F7F2C46" Ref="C304"  Part="1" 
F 0 "C304" H 4715 4396 50  0000 L CNN
F 1 "100nF" H 4715 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4638 4200 50  0001 C CNN
F 3 "~" H 4600 4350 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/885012107001/732-7612-1-ND/5454239" H 4600 4350 50  0001 C CNN "part_url"
F 5 "Capactitor - Bypass" H 4600 4350 50  0001 C CNN "part_name"
	1    4600 4350
	-1   0    0    1   
$EndComp
Connection ~ 4275 4500
Wire Wire Line
	4275 4600 4600 4600
Wire Wire Line
	5050 4500 5050 4600
Connection ~ 4600 4600
Wire Wire Line
	4600 4600 5050 4600
Wire Wire Line
	4600 4500 4600 4600
Wire Wire Line
	5475 4500 5475 4600
Wire Wire Line
	5475 4600 5050 4600
Connection ~ 5050 4600
Wire Wire Line
	5050 4000 5475 4000
Wire Wire Line
	5475 4000 5475 4200
Connection ~ 5050 4000
Connection ~ 5475 4000
Wire Wire Line
	3025 4400 2875 4400
NoConn ~ 2875 4400
NoConn ~ 2875 4500
Wire Notes Line
	2350 4925 6000 4925
Connection ~ 9250 3625
Wire Wire Line
	9250 3575 9250 3625
Wire Wire Line
	9250 3625 9250 3700
Connection ~ 10700 2775
Wire Wire Line
	8425 800  8200 800 
Wire Wire Line
	10700 1925 10700 2250
Wire Wire Line
	9250 2250 10700 2250
Wire Wire Line
	8300 1675 8700 1675
Text GLabel 8300 1675 0    50   BiDi ~ 0
SHIFT_REG_DATA_IN
Text GLabel 8600 2075 0    50   BiDi ~ 0
SHIFT_REG_OUTPUT_ENABLE_N
$Comp
L power:GND #PWR?
U 1 1 5F64B617
P 9250 2275
AR Path="/5F64B617" Ref="#PWR?"  Part="1" 
AR Path="/5F580392/5F64B617" Ref="#PWR0317"  Part="1" 
F 0 "#PWR0317" H 9250 2025 50  0001 C CNN
F 1 "GND" H 9255 2102 50  0000 C CNN
F 2 "" H 9250 2275 50  0001 C CNN
F 3 "" H 9250 2275 50  0001 C CNN
	1    9250 2275
	1    0    0    -1  
$EndComp
Text GLabel 8300 1225 0    50   BiDi ~ 0
V_REG
Wire Wire Line
	8300 1225 8425 1225
Connection ~ 8425 1225
Wire Wire Line
	8425 1100 8425 1225
$Comp
L power:GND #PWR?
U 1 1 5F64B60B
P 8200 800
AR Path="/5F64B60B" Ref="#PWR?"  Part="1" 
AR Path="/5F580392/5F64B60B" Ref="#PWR0314"  Part="1" 
F 0 "#PWR0314" H 8200 550 50  0001 C CNN
F 1 "GND" H 8205 627 50  0000 C CNN
F 2 "" H 8200 800 50  0001 C CNN
F 3 "" H 8200 800 50  0001 C CNN
	1    8200 800 
	1    0    0    -1  
$EndComp
Connection ~ 9250 2250
Wire Wire Line
	9250 2250 9250 2275
Text GLabel 8300 2675 0    50   BiDi ~ 0
V_REG
Wire Wire Line
	8300 2675 8425 2675
Wire Wire Line
	8425 2675 8700 2675
Connection ~ 8425 2675
Wire Wire Line
	8425 2550 8425 2675
Wire Wire Line
	8425 2250 8200 2250
$Comp
L power:GND #PWR?
U 1 1 5F64B5EF
P 8200 2250
AR Path="/5F64B5EF" Ref="#PWR?"  Part="1" 
AR Path="/5F580392/5F64B5EF" Ref="#PWR0315"  Part="1" 
F 0 "#PWR0315" H 8200 2000 50  0001 C CNN
F 1 "GND" H 8205 2077 50  0000 C CNN
F 2 "" H 8200 2250 50  0001 C CNN
F 3 "" H 8200 2250 50  0001 C CNN
	1    8200 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2175 9250 2250
Connection ~ 9250 2175
Wire Wire Line
	9250 2125 9250 2175
Wire Wire Line
	8425 1225 8700 1225
Wire Wire Line
	9550 1225 9900 1225
Wire Wire Line
	8700 2075 8600 2075
Wire Wire Line
	8700 1975 8300 1975
Wire Wire Line
	8700 1775 7400 1775
Wire Wire Line
	8300 1375 8700 1375
Text GLabel 8300 1375 0    50   BiDi ~ 0
SHIFT_REG_CLK
Wire Wire Line
	8300 1475 8700 1475
Text GLabel 8300 1475 0    50   BiDi ~ 0
SHIFT_REG_LATCH
$Comp
L Device:CP C?
U 1 1 5F64B5A2
P 8425 950
AR Path="/5F64B5A2" Ref="C?"  Part="1" 
AR Path="/5F580392/5F64B5A2" Ref="C306"  Part="1" 
F 0 "C306" H 8307 904 50  0000 R CNN
F 1 "10uF" H 8307 995 50  0000 R CNN
F 2 "Capacitor_SMD:CP_Elec_4x3" H 8463 800 50  0001 C CNN
F 3 "~" H 8425 950 50  0001 C CNN
F 4 "Capactitor - Bypass" H 8425 950 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/865080340001/732-8411-1-ND/5728368" H 8425 950 50  0001 C CNN "part_url"
	1    8425 950 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B59C
P 10050 1225
AR Path="/5F64B59C" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B59C" Ref="R304"  Part="1" 
F 0 "R304" V 9843 1225 39  0000 C CNN
F 1 "330" V 9934 1225 39  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 1225 50  0001 C CNN
F 3 "~" H 10050 1225 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 1225 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 1225 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 1225 50  0001 C CNN "part_url"
	1    10050 1225
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F64B596
P 10400 1225
AR Path="/5F64B596" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B596" Ref="D301"  Part="1" 
F 0 "D301" H 10393 970 39  0000 C CNN
F 1 "RING_LED" H 10393 1061 39  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 1225 50  0001 C CNN
F 3 "~" H 10400 1225 50  0001 C CNN
F 4 "LED - Green" H 10400 1225 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 1225 50  0001 C CNN "part_url"
	1    10400 1225
	-1   0    0    1   
$EndComp
$Comp
L StarGazer:74HC595D U?
U 1 1 5F64B586
P 9150 2475
AR Path="/5F64B586" Ref="U?"  Part="1" 
AR Path="/5F580392/5F64B586" Ref="U305"  Part="1" 
F 0 "U305" H 9125 2542 50  0000 C CNN
F 1 "74HC595PW" H 9125 2450 51  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 9200 2575 50  0001 C CNN
F 3 "" H 9200 2575 50  0001 C CNN
F 4 "Shift Register" H 9150 2475 50  0001 C CNN "part_details"
F 5 "74HC595PW,118" H 9150 2475 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/nexperia-usa-inc/74HC595PW-112/1727-6439-ND/1230493" H 9150 2475 50  0001 C CNN "part_url"
	1    9150 2475
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5F64B57D
P 8425 2400
AR Path="/5F64B57D" Ref="C?"  Part="1" 
AR Path="/5F580392/5F64B57D" Ref="C307"  Part="1" 
F 0 "C307" H 8307 2354 50  0000 R CNN
F 1 "10uF" H 8307 2445 50  0000 R CNN
F 2 "Capacitor_SMD:CP_Elec_4x3" H 8463 2250 50  0001 C CNN
F 3 "~" H 8425 2400 50  0001 C CNN
F 4 "Capactitor - Bypass" H 8425 2400 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/865080340001/732-8411-1-ND/5728368" H 8425 2400 50  0001 C CNN "part_url"
	1    8425 2400
	-1   0    0    1   
$EndComp
$Comp
L StarGazer:74HC595D U?
U 1 1 5F64B568
P 9150 1025
AR Path="/5F64B568" Ref="U?"  Part="1" 
AR Path="/5F580392/5F64B568" Ref="U304"  Part="1" 
F 0 "U304" H 9125 1092 50  0000 C CNN
F 1 "74HC595PW" H 9125 1000 51  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 9200 1125 50  0001 C CNN
F 3 "" H 9200 1125 50  0001 C CNN
F 4 "Shift Register" H 9150 1025 50  0001 C CNN "part_details"
F 5 "74HC595PW,118" H 9150 1025 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/nexperia-usa-inc/74HC595PW-112/1727-6439-ND/1230493" H 9150 1025 50  0001 C CNN "part_url"
	1    9150 1025
	1    0    0    -1  
$EndComp
Wire Notes Line
	10925 5550 10925 550 
Wire Wire Line
	9550 1325 9900 1325
$Comp
L Device:R R?
U 1 1 5F64B492
P 10050 1325
AR Path="/5F64B492" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B492" Ref="R305"  Part="1" 
F 0 "R305" V 9843 1325 50  0001 C CNN
F 1 "330" V 9934 1325 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 1325 50  0001 C CNN
F 3 "~" H 10050 1325 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 1325 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 1325 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 1325 50  0001 C CNN "part_url"
	1    10050 1325
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F64B48C
P 10400 1325
AR Path="/5F64B48C" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B48C" Ref="D302"  Part="1" 
F 0 "D302" H 10393 1070 39  0001 C CNN
F 1 "RING_LED" H 10393 1161 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 1325 50  0001 C CNN
F 3 "~" H 10400 1325 50  0001 C CNN
F 4 "LED - Green" H 10400 1325 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 1325 50  0001 C CNN "part_url"
	1    10400 1325
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 1225 10200 1225
Wire Wire Line
	10250 1325 10200 1325
Wire Wire Line
	9550 1425 9900 1425
$Comp
L Device:R R?
U 1 1 5F64B483
P 10050 1425
AR Path="/5F64B483" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B483" Ref="R306"  Part="1" 
F 0 "R306" V 9843 1425 50  0001 C CNN
F 1 "330" V 9934 1425 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 1425 50  0001 C CNN
F 3 "~" H 10050 1425 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 1425 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 1425 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 1425 50  0001 C CNN "part_url"
	1    10050 1425
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F64B47D
P 10400 1425
AR Path="/5F64B47D" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B47D" Ref="D303"  Part="1" 
F 0 "D303" H 10393 1170 39  0001 C CNN
F 1 "RING_LED" H 10393 1261 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 1425 50  0001 C CNN
F 3 "~" H 10400 1425 50  0001 C CNN
F 4 "LED - Green" H 10400 1425 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 1425 50  0001 C CNN "part_url"
	1    10400 1425
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 1425 10200 1425
Wire Wire Line
	9550 1525 9900 1525
$Comp
L Device:R R?
U 1 1 5F64B475
P 10050 1525
AR Path="/5F64B475" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B475" Ref="R307"  Part="1" 
F 0 "R307" V 9843 1525 50  0001 C CNN
F 1 "330" V 9934 1525 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 1525 50  0001 C CNN
F 3 "~" H 10050 1525 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 1525 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 1525 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 1525 50  0001 C CNN "part_url"
	1    10050 1525
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F64B46F
P 10400 1525
AR Path="/5F64B46F" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B46F" Ref="D304"  Part="1" 
F 0 "D304" H 10393 1270 39  0001 C CNN
F 1 "RING_LED" H 10393 1361 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 1525 50  0001 C CNN
F 3 "~" H 10400 1525 50  0001 C CNN
F 4 "LED - Green" H 10400 1525 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 1525 50  0001 C CNN "part_url"
	1    10400 1525
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 1525 10200 1525
Wire Wire Line
	9550 1625 9900 1625
$Comp
L Device:R R?
U 1 1 5F64B467
P 10050 1625
AR Path="/5F64B467" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B467" Ref="R308"  Part="1" 
F 0 "R308" V 9843 1625 50  0001 C CNN
F 1 "330" V 9934 1625 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 1625 50  0001 C CNN
F 3 "~" H 10050 1625 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 1625 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 1625 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 1625 50  0001 C CNN "part_url"
	1    10050 1625
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F64B461
P 10400 1625
AR Path="/5F64B461" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B461" Ref="D305"  Part="1" 
F 0 "D305" H 10393 1370 39  0001 C CNN
F 1 "RING_LED" H 10393 1461 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 1625 50  0001 C CNN
F 3 "~" H 10400 1625 50  0001 C CNN
F 4 "LED - Green" H 10400 1625 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 1625 50  0001 C CNN "part_url"
	1    10400 1625
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 1625 10200 1625
Wire Wire Line
	9550 1725 9900 1725
$Comp
L Device:R R?
U 1 1 5F64B459
P 10050 1725
AR Path="/5F64B459" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B459" Ref="R309"  Part="1" 
F 0 "R309" V 9843 1725 50  0001 C CNN
F 1 "330" V 9934 1725 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 1725 50  0001 C CNN
F 3 "~" H 10050 1725 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 1725 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 1725 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 1725 50  0001 C CNN "part_url"
	1    10050 1725
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F64B453
P 10400 1725
AR Path="/5F64B453" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B453" Ref="D306"  Part="1" 
F 0 "D306" H 10393 1470 39  0001 C CNN
F 1 "RING_LED" H 10393 1561 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 1725 50  0001 C CNN
F 3 "~" H 10400 1725 50  0001 C CNN
F 4 "LED - Green" H 10400 1725 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 1725 50  0001 C CNN "part_url"
	1    10400 1725
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 1725 10200 1725
Wire Wire Line
	9550 1825 9900 1825
$Comp
L Device:R R?
U 1 1 5F64B44B
P 10050 1825
AR Path="/5F64B44B" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B44B" Ref="R310"  Part="1" 
F 0 "R310" V 9843 1825 50  0001 C CNN
F 1 "330" V 9934 1825 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 1825 50  0001 C CNN
F 3 "~" H 10050 1825 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 1825 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 1825 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 1825 50  0001 C CNN "part_url"
	1    10050 1825
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F64B445
P 10400 1825
AR Path="/5F64B445" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B445" Ref="D307"  Part="1" 
F 0 "D307" H 10393 1570 39  0001 C CNN
F 1 "RING_LED" H 10393 1661 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 1825 50  0001 C CNN
F 3 "~" H 10400 1825 50  0001 C CNN
F 4 "LED - Green" H 10400 1825 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 1825 50  0001 C CNN "part_url"
	1    10400 1825
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 1825 10200 1825
Wire Wire Line
	9550 1925 9900 1925
$Comp
L Device:R R?
U 1 1 5F64B43D
P 10050 1925
AR Path="/5F64B43D" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B43D" Ref="R311"  Part="1" 
F 0 "R311" V 9843 1925 50  0001 C CNN
F 1 "330" V 9934 1925 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 1925 50  0001 C CNN
F 3 "~" H 10050 1925 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 1925 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 1925 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 1925 50  0001 C CNN "part_url"
	1    10050 1925
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F64B437
P 10400 1925
AR Path="/5F64B437" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B437" Ref="D308"  Part="1" 
F 0 "D308" H 10393 1670 39  0001 C CNN
F 1 "RING_LED" H 10393 1761 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 1925 50  0001 C CNN
F 3 "~" H 10400 1925 50  0001 C CNN
F 4 "LED - Green" H 10400 1925 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 1925 50  0001 C CNN "part_url"
	1    10400 1925
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 1925 10200 1925
Wire Wire Line
	10550 1225 10700 1225
Wire Wire Line
	10550 1325 10700 1325
Wire Wire Line
	10550 1425 10700 1425
Wire Wire Line
	10550 1525 10700 1525
Wire Wire Line
	10550 1625 10700 1625
Wire Wire Line
	10550 1725 10700 1725
Wire Wire Line
	10550 1825 10700 1825
Wire Wire Line
	10550 1925 10700 1925
Wire Wire Line
	10700 1225 10700 1325
Connection ~ 10700 1325
Wire Wire Line
	10700 1325 10700 1425
Connection ~ 10700 1425
Wire Wire Line
	10700 1425 10700 1525
Connection ~ 10700 1525
Wire Wire Line
	10700 1525 10700 1625
Connection ~ 10700 1625
Wire Wire Line
	10700 1625 10700 1725
Connection ~ 10700 1725
Wire Wire Line
	10700 1725 10700 1825
Connection ~ 10700 1825
Wire Wire Line
	10700 1825 10700 1925
Connection ~ 10700 1925
Wire Wire Line
	9550 2675 9900 2675
$Comp
L Device:R R?
U 1 1 5F64B412
P 10050 2675
AR Path="/5F64B412" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B412" Ref="R312"  Part="1" 
F 0 "R312" V 9843 2675 39  0000 C CNN
F 1 "330" V 9934 2675 39  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 2675 50  0001 C CNN
F 3 "~" H 10050 2675 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 2675 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 2675 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 2675 50  0001 C CNN "part_url"
	1    10050 2675
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F64B40C
P 10400 2675
AR Path="/5F64B40C" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B40C" Ref="D309"  Part="1" 
F 0 "D309" H 10393 2420 39  0000 C CNN
F 1 "RING_LED" H 10393 2511 39  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 2675 50  0001 C CNN
F 3 "~" H 10400 2675 50  0001 C CNN
F 4 "LED - Green" H 10400 2675 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 2675 50  0001 C CNN "part_url"
	1    10400 2675
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F64B405
P 10050 2775
AR Path="/5F64B405" Ref="R?"  Part="1" 
AR Path="/5F580392/5F64B405" Ref="R313"  Part="1" 
F 0 "R313" V 9843 2775 50  0001 C CNN
F 1 "330" V 9934 2775 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9980 2775 50  0001 C CNN
F 3 "~" H 10050 2775 50  0001 C CNN
F 4 "Limits current to 8mA" H 10050 2775 50  0001 C CNN "part_details"
F 5 "Resistor - LED Ring" H 10050 2775 50  0001 C CNN "part_name"
F 6 "https://www.digikey.com/product-detail/en/yageo/RC1206FR-07330RL/311-330FRCT-ND/731769" H 10050 2775 50  0001 C CNN "part_url"
	1    10050 2775
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F64B3FF
P 10400 2775
AR Path="/5F64B3FF" Ref="D?"  Part="1" 
AR Path="/5F580392/5F64B3FF" Ref="D310"  Part="1" 
F 0 "D310" H 10393 2520 39  0001 C CNN
F 1 "RING_LED" H 10393 2611 39  0001 C CNN
F 2 "Diode_SMD:D_1206_3216Metric" H 10400 2775 50  0001 C CNN
F 3 "~" H 10400 2775 50  0001 C CNN
F 4 "LED - Green" H 10400 2775 50  0001 C CNN "part_name"
F 5 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/156120VS75000/732-5032-1-ND/4490060" H 10400 2775 50  0001 C CNN "part_url"
	1    10400 2775
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 2675 10200 2675
Wire Wire Line
	10550 2675 10700 2675
Wire Wire Line
	10700 2675 10700 2775
$Comp
L Device:C C?
U 1 1 5FC220FB
P 5475 4350
AR Path="/5FC220FB" Ref="C?"  Part="1" 
AR Path="/5F580392/5FC220FB" Ref="C310"  Part="1" 
F 0 "C310" H 5590 4396 50  0000 L CNN
F 1 "1uF" H 5590 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5513 4200 50  0001 C CNN
F 3 "~" H 5475 4350 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/w%C3%BCrth-elektronik/885012107001/732-7612-1-ND/5454239" H 5475 4350 50  0001 C CNN "part_url"
F 5 "Capactitor - Bypass" H 5475 4350 50  0001 C CNN "part_name"
	1    5475 4350
	-1   0    0    1   
$EndComp
Text GLabel 8300 1975 0    50   BiDi ~ 0
RESET_N
Text GLabel 8300 4950 0    50   BiDi ~ 0
RESET_N
Text GLabel 8300 3425 0    50   BiDi ~ 0
RESET_N
$EndSCHEMATC
