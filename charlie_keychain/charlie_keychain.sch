EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Device:R_Small R2
U 1 1 605BC6EC
P 2450 1400
F 0 "R2" V 2646 1400 50  0000 C CNN
F 1 "330" V 2555 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2450 1400 50  0001 C CNN
F 3 "~" H 2450 1400 50  0001 C CNN
	1    2450 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 605BC891
P 2450 1700
F 0 "R3" V 2254 1700 50  0000 C CNN
F 1 "330" V 2345 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2450 1700 50  0001 C CNN
F 3 "~" H 2450 1700 50  0001 C CNN
	1    2450 1700
	0    1    1    0   
$EndComp
Text GLabel 2200 1050 1    50   Input ~ 0
pin_A
Text GLabel 2200 1700 1    50   Input ~ 0
pin_C
$Comp
L Device:R_Small R1
U 1 1 605BEE42
P 2450 1050
F 0 "R1" V 2646 1050 50  0000 C CNN
F 1 "330" V 2555 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2450 1050 50  0001 C CNN
F 3 "~" H 2450 1050 50  0001 C CNN
	1    2450 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 1400 2750 1400
Connection ~ 2750 1400
Wire Wire Line
	2750 1400 3100 1400
Connection ~ 3400 1050
Wire Wire Line
	3400 1050 3650 1050
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20PU U1
U 1 1 605C8024
P 5850 1550
F 0 "U1" H 5321 1596 50  0000 R CNN
F 1 "ATtiny85-20PU" H 5321 1505 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5850 1550 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 5850 1550 50  0001 C CNN
	1    5850 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 605C94D8
P 7900 1900
F 0 "BT1" H 8018 1996 50  0000 L CNN
F 1 "Battery_Cell" H 8018 1905 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_1060_1x2032" V 7900 1960 50  0001 C CNN
F 3 "~" V 7900 1960 50  0001 C CNN
	1    7900 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 605C9AFF
P 7900 2000
F 0 "#PWR03" H 7900 1750 50  0001 C CNN
F 1 "GND" H 7905 1827 50  0000 C CNN
F 2 "" H 7900 2000 50  0001 C CNN
F 3 "" H 7900 2000 50  0001 C CNN
	1    7900 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 605CAAAE
P 5850 2150
F 0 "#PWR04" H 5850 1900 50  0001 C CNN
F 1 "GND" H 5855 1977 50  0000 C CNN
F 2 "" H 5850 2150 50  0001 C CNN
F 3 "" H 5850 2150 50  0001 C CNN
	1    5850 2150
	1    0    0    -1  
$EndComp
Text Notes 4150 950  0    50   ~ 0
tri-state mode:\nhi\nlow\nhigh impedance \n(set as input in software)
$Comp
L power:VCC #PWR02
U 1 1 605CB856
P 7900 1300
F 0 "#PWR02" H 7900 1150 50  0001 C CNN
F 1 "VCC" H 7915 1473 50  0000 C CNN
F 2 "" H 7900 1300 50  0001 C CNN
F 3 "" H 7900 1300 50  0001 C CNN
	1    7900 1300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 605CBAF2
P 5850 950
F 0 "#PWR01" H 5850 800 50  0001 C CNN
F 1 "VCC" H 5865 1123 50  0000 C CNN
F 2 "" H 5850 950 50  0001 C CNN
F 3 "" H 5850 950 50  0001 C CNN
	1    5850 950 
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 605CCA2F
P 7900 1500
F 0 "SW1" V 7854 1598 50  0000 L CNN
F 1 "SW_SPST" V 7945 1598 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx01_Slide_Copal_CHS-01B_W7.62mm_P1.27mm" H 7900 1500 50  0001 C CNN
F 3 "~" H 7900 1500 50  0001 C CNN
	1    7900 1500
	0    1    1    0   
$EndComp
Text GLabel 6450 1250 2    50   Input ~ 0
pin_A
Text GLabel 2200 1400 1    50   Input ~ 0
pin_B
Text GLabel 6450 1450 2    50   Input ~ 0
pin_B
Text GLabel 6450 1550 2    50   Input ~ 0
pin_C
Text GLabel 6450 1650 2    50   Input ~ 0
pin_D
Wire Wire Line
	3400 1700 3650 1700
Connection ~ 3400 1700
Text GLabel 2200 2000 1    50   Input ~ 0
pin_D
$Comp
L Device:R_Small R4
U 1 1 605D9851
P 1950 2000
F 0 "R4" V 2000 2000 50  0000 C CNN
F 1 "330" V 2100 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1950 2000 50  0001 C CNN
F 3 "~" H 1950 2000 50  0001 C CNN
	1    1950 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 2000 2200 2000
Wire Wire Line
	1150 1050 2350 1050
Wire Wire Line
	1150 1050 850  1050
Connection ~ 1150 1050
Wire Wire Line
	850  2000 1150 2000
Connection ~ 1150 2000
Wire Wire Line
	1150 2000 1300 2000
Wire Wire Line
	1350 2000 1350 1500
Connection ~ 1350 2000
Connection ~ 1300 2000
Wire Wire Line
	1300 2000 1350 2000
$Comp
L Device:LED_Small D3
U 1 1 605DF866
P 1550 1400
F 0 "D3" H 1550 1635 50  0000 C CNN
F 1 "LED_Small" H 1550 1544 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 1550 1400 50  0001 C CNN
F 3 "~" V 1550 1400 50  0001 C CNN
	1    1550 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1700 1750 1700
Wire Wire Line
	1350 2000 1450 2000
Wire Wire Line
	2550 1050 2750 1050
Wire Wire Line
	2550 1700 2750 1700
$Comp
L Device:LED_Small D5
U 1 1 605DFE4C
P 3650 1400
F 0 "D5" V 3604 1498 50  0000 L CNN
F 1 "LED_Small" V 3695 1498 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 3650 1400 50  0001 C CNN
F 3 "~" V 3650 1400 50  0001 C CNN
	1    3650 1400
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D4
U 1 1 605E024D
P 3400 1400
F 0 "D4" V 3446 1330 50  0000 R CNN
F 1 "LED_Small" V 3355 1330 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 3400 1400 50  0001 C CNN
F 3 "~" V 3400 1400 50  0001 C CNN
	1    3400 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 605E06AD
P 3100 1200
F 0 "D2" V 3146 1130 50  0000 R CNN
F 1 "LED_Small" V 3055 1130 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 3100 1200 50  0001 C CNN
F 3 "~" V 3100 1200 50  0001 C CNN
	1    3100 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 605E09F9
P 2750 1200
F 0 "D1" V 2704 1298 50  0000 L CNN
F 1 "LED_Small" V 2795 1298 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 2750 1200 50  0001 C CNN
F 3 "~" V 2750 1200 50  0001 C CNN
	1    2750 1200
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D8
U 1 1 605E1145
P 3100 1550
F 0 "D8" V 3054 1648 50  0000 L CNN
F 1 "LED_Small" V 3145 1648 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 3100 1550 50  0001 C CNN
F 3 "~" V 3100 1550 50  0001 C CNN
	1    3100 1550
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D7
U 1 1 605E1716
P 2750 1550
F 0 "D7" V 2796 1480 50  0000 R CNN
F 1 "LED_Small" V 2705 1480 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 2750 1550 50  0001 C CNN
F 3 "~" V 2750 1550 50  0001 C CNN
	1    2750 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 1100 2750 1050
Connection ~ 2750 1050
Wire Wire Line
	2750 1050 3100 1050
Wire Wire Line
	3100 1100 3100 1050
Connection ~ 3100 1050
Wire Wire Line
	3100 1050 3400 1050
Wire Wire Line
	3100 1300 3100 1400
Wire Wire Line
	2750 1300 2750 1400
Wire Wire Line
	2750 1450 2750 1400
Wire Wire Line
	2750 1650 2750 1700
Connection ~ 2750 1700
Wire Wire Line
	2750 1700 3100 1700
Wire Wire Line
	3100 1650 3100 1700
Connection ~ 3100 1700
Wire Wire Line
	3100 1700 3400 1700
Wire Wire Line
	3100 1450 3100 1400
Connection ~ 3100 1400
Wire Wire Line
	3400 1500 3400 1700
Wire Wire Line
	3400 1050 3400 1300
Wire Wire Line
	3650 1050 3650 1300
Wire Wire Line
	3650 1500 3650 1700
$Comp
L Device:LED_Small D12
U 1 1 605E661D
P 1750 1850
F 0 "D12" V 1796 1780 50  0000 R CNN
F 1 "LED_Small" V 1705 1780 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 1750 1850 50  0001 C CNN
F 3 "~" V 1750 1850 50  0001 C CNN
	1    1750 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D11
U 1 1 605E6AA2
P 1450 1850
F 0 "D11" V 1404 1948 50  0000 L CNN
F 1 "LED_Small" V 1495 1948 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 1450 1850 50  0001 C CNN
F 3 "~" V 1450 1850 50  0001 C CNN
	1    1450 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 2000 1450 1950
Wire Wire Line
	1450 1750 1450 1700
Connection ~ 1450 2000
Wire Wire Line
	1450 2000 1750 2000
Wire Wire Line
	1750 2000 1750 1950
Wire Wire Line
	1750 1750 1750 1700
Connection ~ 1750 2000
Wire Wire Line
	1750 2000 1850 2000
Connection ~ 1750 1700
Wire Wire Line
	1750 1700 2350 1700
$Comp
L Device:LED_Small D10
U 1 1 605E8113
P 1150 1650
F 0 "D10" V 1196 1580 50  0000 R CNN
F 1 "LED_Small" V 1105 1580 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 1150 1650 50  0001 C CNN
F 3 "~" V 1150 1650 50  0001 C CNN
	1    1150 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D9
U 1 1 605E8380
P 850 1650
F 0 "D9" V 804 1748 50  0000 L CNN
F 1 "LED_Small" V 895 1748 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 850 1650 50  0001 C CNN
F 3 "~" V 850 1650 50  0001 C CNN
	1    850  1650
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 1050 1150 1550
Wire Wire Line
	1150 1750 1150 2000
Wire Wire Line
	850  1050 850  1550
Wire Wire Line
	850  1750 850  2000
$Comp
L Device:LED_Small D6
U 1 1 605E9F91
P 1900 1500
F 0 "D6" H 1900 1293 50  0000 C CNN
F 1 "LED_Small" H 1900 1384 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 1900 1500 50  0001 C CNN
F 3 "~" V 1900 1500 50  0001 C CNN
	1    1900 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 1500 2000 1400
Wire Wire Line
	2000 1400 2350 1400
Wire Wire Line
	2000 1400 1650 1400
Connection ~ 2000 1400
Wire Wire Line
	1450 1400 1300 1400
Wire Wire Line
	1300 1400 1300 2000
Wire Wire Line
	1350 1500 1800 1500
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 605EDF67
P 4350 2700
F 0 "J1" H 4400 3017 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 4400 2926 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x03_P2.00mm_Vertical" H 4350 2700 50  0001 C CNN
F 3 "~" H 4350 2700 50  0001 C CNN
	1    4350 2700
	1    0    0    -1  
$EndComp
Text GLabel 4650 2700 2    50   Input ~ 0
MOSI
Text GLabel 4150 2600 0    50   Input ~ 0
MISO
Text GLabel 4150 2700 0    50   Input ~ 0
SCK
Text GLabel 4150 2800 0    50   Input ~ 0
RESET
$Comp
L power:GND #PWR05
U 1 1 605EFC20
P 4650 2800
F 0 "#PWR05" H 4650 2550 50  0001 C CNN
F 1 "GND" H 4655 2627 50  0000 C CNN
F 2 "" H 4650 2800 50  0001 C CNN
F 3 "" H 4650 2800 50  0001 C CNN
	1    4650 2800
	1    0    0    -1  
$EndComp
Text GLabel 6450 1750 2    50   Input ~ 0
RESET
Text GLabel 4450 2150 2    50   Input ~ 0
pin_A
Text GLabel 4450 2300 2    50   Input ~ 0
pin_B
Text GLabel 7150 1350 2    50   Input ~ 0
MISO
Text GLabel 4250 2150 0    50   Input ~ 0
MOSI
Wire Wire Line
	4250 2150 4450 2150
Text GLabel 4250 2300 0    50   Input ~ 0
SCK
Wire Wire Line
	4250 2300 4450 2300
Text Notes 3900 3100 0    50   ~ 0
AVR_ISP (for programming)\n
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 60605C42
P 3050 2550
F 0 "H1" H 3150 2599 50  0000 L CNN
F 1 "MountingHole_Pad" H 3150 2508 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad_TopBottom" H 3050 2550 50  0001 C CNN
F 3 "~" H 3050 2550 50  0001 C CNN
	1    3050 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 60606403
P 3050 2650
F 0 "#PWR06" H 3050 2400 50  0001 C CNN
F 1 "GND" H 3055 2477 50  0000 C CNN
F 2 "" H 3050 2650 50  0001 C CNN
F 3 "" H 3050 2650 50  0001 C CNN
	1    3050 2650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5E SW2
U 1 1 605C583E
P 6950 1450
F 0 "SW2" H 6950 1835 50  0000 C CNN
F 1 "SW_MEC_5E" H 6950 1744 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_Omron_B3FS-100xP" H 6950 1750 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 6950 1750 50  0001 C CNN
	1    6950 1450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 605C96CE
P 4650 2600
F 0 "#PWR07" H 4650 2450 50  0001 C CNN
F 1 "VCC" V 4665 2728 50  0000 L CNN
F 2 "" H 4650 2600 50  0001 C CNN
F 3 "" H 4650 2600 50  0001 C CNN
	1    4650 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 1350 6450 1350
$EndSCHEMATC
