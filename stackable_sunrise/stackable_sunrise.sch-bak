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
Text Notes 600  2300 0    50   ~ 0
sunrise 7 am \nsunset  default->12pm, can be toggled with button\ntoggle script on pc?\n\nif done on esp32 -- use the wled project with fastled library\n
Text Notes 600  1600 0    50   ~ 0
stackable design (m4 ?)\nbasic set of 5 (because 5 pcbs)\neach pcb has 12 leds \n     ->3.6w max consumption (white, full brightness) @5v\n     ->not a real problem, will never be full white\ntransparent paper for light diffusion\n4 screws/pcb -> extra layer on top and bottom\n(top couble act as a table?)\nmaybe add buzzer?
Text Notes 650  750  0    50   ~ 0
HARDWARE (propably on rpi pico)\n
Text Notes 650  1850 0    50   ~ 0
SOFTWARE (propably micropython)
Wire Notes Line
	550  2500 3050 2500
Wire Notes Line
	3050 2500 3050 600 
Wire Notes Line
	3050 600  550  600 
Wire Notes Line
	550  600  550  2500
$Comp
L LED:WS2812B D1
U 1 1 6069B025
P 1550 4700
F 0 "D1" H 1350 4950 50  0000 L CNN
F 1 "WS2812B" H 1600 4950 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 1600 4400 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 1650 4325 50  0001 L TNN
	1    1550 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 6069BAD5
P 2100 4700
F 0 "C1" H 2192 4746 50  0000 L CNN
F 1 "100u" H 2192 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2100 4700 50  0001 C CNN
F 3 "~" H 2100 4700 50  0001 C CNN
	1    2100 4700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 606A1B06
P 3700 3700
F 0 "H1" H 3800 3749 50  0000 L CNN
F 1 "MountingHole_Pad" H 3800 3658 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3x6.2mm_M4_Pad" H 3700 3700 50  0001 C CNN
F 3 "~" H 3700 3700 50  0001 C CNN
	1    3700 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 606A1EE1
P 1550 5050
F 0 "#PWR08" H 1550 4800 50  0001 C CNN
F 1 "GND" H 1555 4877 50  0000 C CNN
F 2 "" H 1550 5050 50  0001 C CNN
F 3 "" H 1550 5050 50  0001 C CNN
	1    1550 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 606A2638
P 3700 3800
F 0 "#PWR07" H 3700 3550 50  0001 C CNN
F 1 "GND" H 3705 3627 50  0000 C CNN
F 2 "" H 3700 3800 50  0001 C CNN
F 3 "" H 3700 3800 50  0001 C CNN
	1    3700 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 606A2CAF
P 2950 3800
F 0 "J2" H 3030 3842 50  0000 L CNN
F 1 "Conn_01x03" H 3030 3751 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Horizontal" H 2950 3800 50  0001 C CNN
F 3 "~" H 2950 3800 50  0001 C CNN
	1    2950 3800
	1    0    0    -1  
$EndComp
Text GLabel 2750 3800 0    50   Input ~ 0
power_supply_5v
Text GLabel 2750 3900 0    50   Input ~ 0
common_ground
Text GLabel 2450 3700 0    50   Input ~ 0
DIN
Text GLabel 1150 4700 0    50   Input ~ 0
DIN
Text GLabel 1500 4300 0    50   Input ~ 0
power_supply_5v
Wire Wire Line
	1500 4300 1550 4300
Wire Wire Line
	1550 4300 1550 4350
Wire Wire Line
	1550 5050 1550 5000
Wire Wire Line
	1150 4700 1250 4700
Wire Wire Line
	1550 4350 2100 4350
Wire Wire Line
	2100 4350 2100 4600
Connection ~ 1550 4350
Wire Wire Line
	1550 4350 1550 4400
Wire Wire Line
	2100 4800 2100 5000
Wire Wire Line
	2100 5000 1550 5000
Connection ~ 1550 5000
Wire Wire Line
	1850 4550 1850 4700
$Comp
L LED:WS2812B D3
U 1 1 606AD1A1
P 2900 4700
F 0 "D3" H 2700 4950 50  0000 L CNN
F 1 "WS2812B" H 2950 4950 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2950 4400 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3000 4325 50  0001 L TNN
	1    2900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4700 2600 4700
Wire Wire Line
	2900 4350 3450 4350
Wire Wire Line
	3450 4350 3450 4600
Connection ~ 2900 4350
Wire Wire Line
	2900 4350 2900 4400
Wire Wire Line
	3450 4800 3450 5000
Wire Wire Line
	3450 5000 2900 5000
Wire Wire Line
	3200 4550 3200 4700
$Comp
L LED:WS2812B D4
U 1 1 606AF805
P 4300 4700
F 0 "D4" H 4100 4950 50  0000 L CNN
F 1 "WS2812B" H 4350 4950 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 4350 4400 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4400 4325 50  0001 L TNN
	1    4300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4700 4000 4700
Wire Wire Line
	4300 4350 4850 4350
Wire Wire Line
	4850 4350 4850 4600
Connection ~ 4300 4350
Wire Wire Line
	4300 4350 4300 4400
Wire Wire Line
	4850 4800 4850 5000
Wire Wire Line
	4850 5000 4300 5000
Wire Wire Line
	4600 4550 4600 4700
$Comp
L LED:WS2812B D5
U 1 1 606B086D
P 5650 4700
F 0 "D5" H 5450 4950 50  0000 L CNN
F 1 "WS2812B" H 5700 4950 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 5700 4400 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5750 4325 50  0001 L TNN
	1    5650 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4700 5350 4700
Wire Wire Line
	5650 4350 6200 4350
Wire Wire Line
	6200 4350 6200 4600
Connection ~ 5650 4350
Wire Wire Line
	5650 4350 5650 4400
Wire Wire Line
	6200 4800 6200 5000
Wire Wire Line
	6200 5000 5650 5000
Wire Wire Line
	5950 4550 5950 4700
$Comp
L LED:WS2812B D6
U 1 1 606B1D12
P 7050 4700
F 0 "D6" H 6850 4950 50  0000 L CNN
F 1 "WS2812B" H 7100 4950 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 7100 4400 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7150 4325 50  0001 L TNN
	1    7050 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4700 6750 4700
Wire Wire Line
	7050 4350 7600 4350
Wire Wire Line
	7600 4350 7600 4600
Connection ~ 7050 4350
Wire Wire Line
	7050 4350 7050 4400
Wire Wire Line
	7600 4800 7600 5000
Wire Wire Line
	7600 5000 7050 5000
Wire Wire Line
	7350 4550 7350 4700
$Comp
L LED:WS2812B D7
U 1 1 606B302D
P 8450 4700
F 0 "D7" H 8250 4950 50  0000 L CNN
F 1 "WS2812B" H 8500 4950 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 8500 4400 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 8550 4325 50  0001 L TNN
	1    8450 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4700 8150 4700
Wire Wire Line
	8450 4350 9000 4350
Wire Wire Line
	9000 4350 9000 4600
Connection ~ 8450 4350
Wire Wire Line
	8450 4350 8450 4400
Wire Wire Line
	9000 4800 9000 5000
Wire Wire Line
	9000 5000 8450 5000
Wire Wire Line
	8750 4550 8750 4700
$Comp
L LED:WS2812B D10
U 1 1 606BC2F1
P 1550 6000
F 0 "D10" H 1350 6250 50  0000 L CNN
F 1 "WS2812B" H 1600 6250 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 1600 5700 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 1650 5625 50  0001 L TNN
	1    1550 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 606BC2FD
P 1550 6350
F 0 "#PWR09" H 1550 6100 50  0001 C CNN
F 1 "GND" H 1555 6177 50  0000 C CNN
F 2 "" H 1550 6350 50  0001 C CNN
F 3 "" H 1550 6350 50  0001 C CNN
	1    1550 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5600 1550 5600
Wire Wire Line
	1550 5600 1550 5650
Wire Wire Line
	1550 6350 1550 6300
Wire Wire Line
	1550 5650 2100 5650
Wire Wire Line
	2100 5650 2100 5900
Connection ~ 1550 5650
Wire Wire Line
	1550 5650 1550 5700
Wire Wire Line
	2100 6100 2100 6300
Wire Wire Line
	2100 6300 1550 6300
Connection ~ 1550 6300
Wire Wire Line
	1850 5850 1850 6000
$Comp
L LED:WS2812B D11
U 1 1 606BC311
P 2900 6000
F 0 "D11" H 2700 6250 50  0000 L CNN
F 1 "WS2812B" H 2950 6250 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2950 5700 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3000 5625 50  0001 L TNN
	1    2900 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6000 2600 6000
Wire Wire Line
	2900 5650 3450 5650
Wire Wire Line
	3450 5650 3450 5900
Connection ~ 2900 5650
Wire Wire Line
	2900 5650 2900 5700
Wire Wire Line
	3450 6100 3450 6300
Wire Wire Line
	3450 6300 2900 6300
Wire Wire Line
	3200 5850 3200 6000
$Comp
L LED:WS2812B D12
U 1 1 606BC327
P 4300 6000
F 0 "D12" H 4100 6250 50  0000 L CNN
F 1 "WS2812B" H 4350 6250 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 4350 5700 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4400 5625 50  0001 L TNN
	1    4300 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6000 4000 6000
Wire Wire Line
	4300 5650 4850 5650
Wire Wire Line
	4850 5650 4850 5900
Connection ~ 4300 5650
Wire Wire Line
	4300 5650 4300 5700
Wire Wire Line
	4850 6100 4850 6300
Wire Wire Line
	4850 6300 4300 6300
Wire Wire Line
	4600 5850 4600 6000
$Comp
L LED:WS2812B D13
U 1 1 606BC33D
P 5650 6000
F 0 "D13" H 5450 6250 50  0000 L CNN
F 1 "WS2812B" H 5700 6250 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 5700 5700 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5750 5625 50  0001 L TNN
	1    5650 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6000 5350 6000
Wire Wire Line
	6200 6100 6200 6300
Wire Wire Line
	6200 6300 5650 6300
Wire Wire Line
	5950 5850 5950 6000
$Comp
L LED:WS2812B D8
U 1 1 606BC353
P 7050 5950
F 0 "D8" H 6850 6200 50  0000 L CNN
F 1 "WS2812B" H 7100 6200 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 7100 5650 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7150 5575 50  0001 L TNN
	1    7050 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5950 6750 5950
Wire Wire Line
	7050 5600 7600 5600
Wire Wire Line
	7600 5600 7600 5850
Connection ~ 7050 5600
Wire Wire Line
	7050 5600 7050 5650
Wire Wire Line
	7600 6050 7600 6250
Wire Wire Line
	7600 6250 7050 6250
Wire Wire Line
	7350 5800 7350 5950
$Comp
L LED:WS2812B D9
U 1 1 606BC369
P 8450 5950
F 0 "D9" H 8250 6200 50  0000 L CNN
F 1 "WS2812B" H 8500 6200 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 8500 5650 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 8550 5575 50  0001 L TNN
	1    8450 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5950 8150 5950
Wire Wire Line
	8450 5600 9000 5600
Wire Wire Line
	9000 5600 9000 5850
Connection ~ 8450 5600
Wire Wire Line
	8450 5600 8450 5650
Wire Wire Line
	9000 6050 9000 6250
Wire Wire Line
	9000 6250 8450 6250
Wire Wire Line
	8750 5800 8750 5950
Wire Wire Line
	2100 4350 2900 4350
Connection ~ 2100 4350
Wire Wire Line
	3450 4350 4300 4350
Connection ~ 3450 4350
Wire Wire Line
	4850 4350 5650 4350
Connection ~ 4850 4350
Wire Wire Line
	6200 4350 7050 4350
Connection ~ 6200 4350
Wire Wire Line
	7600 4350 8450 4350
Connection ~ 7600 4350
Wire Wire Line
	8450 5000 7600 5000
Connection ~ 8450 5000
Connection ~ 7600 5000
Wire Wire Line
	7050 5000 6200 5000
Connection ~ 7050 5000
Connection ~ 6200 5000
Wire Wire Line
	5650 5000 4850 5000
Connection ~ 5650 5000
Connection ~ 4850 5000
Wire Wire Line
	4300 5000 3450 5000
Connection ~ 4300 5000
Connection ~ 3450 5000
Wire Wire Line
	2900 5000 2100 5000
Connection ~ 2900 5000
Connection ~ 2100 5000
Wire Wire Line
	1850 4550 2500 4550
Wire Wire Line
	2500 4550 2500 4700
Wire Wire Line
	3200 4550 3900 4550
Wire Wire Line
	3900 4550 3900 4700
Wire Wire Line
	4600 4550 5250 4550
Wire Wire Line
	5250 4550 5250 4700
Wire Wire Line
	5950 4550 6650 4550
Wire Wire Line
	6650 4550 6650 4700
Wire Wire Line
	7350 4550 8050 4550
Wire Wire Line
	8050 4550 8050 4700
Text GLabel 1500 5600 0    50   Input ~ 0
power_supply_5v
Wire Wire Line
	8750 4550 9400 4550
Wire Wire Line
	9400 5250 700  5250
Wire Wire Line
	700  5250 700  6000
Wire Wire Line
	700  6000 1250 6000
Wire Wire Line
	9400 4550 9400 5250
Wire Wire Line
	1850 5850 2500 5850
Wire Wire Line
	2500 5850 2500 6000
Wire Wire Line
	3200 5850 3900 5850
Wire Wire Line
	3900 5850 3900 6000
Wire Wire Line
	5250 5850 5250 6000
Wire Wire Line
	4600 5850 5250 5850
Wire Wire Line
	5950 5850 6650 5850
Wire Wire Line
	6650 5850 6650 5950
Wire Wire Line
	7350 5800 8050 5800
Wire Wire Line
	8050 5800 8050 5950
Wire Wire Line
	8750 5800 9400 5800
Text GLabel 9400 5800 2    50   Input ~ 0
din_next_layer
Wire Wire Line
	8450 5600 7600 5600
Connection ~ 7600 5600
Wire Wire Line
	7050 5600 6200 5600
Wire Wire Line
	4300 5650 3450 5650
Connection ~ 3450 5650
Wire Wire Line
	2900 5650 2100 5650
Connection ~ 2100 5650
Wire Wire Line
	5650 6300 4850 6300
Connection ~ 5650 6300
Connection ~ 4850 6300
Wire Wire Line
	4300 6300 3450 6300
Connection ~ 4300 6300
Connection ~ 3450 6300
Wire Wire Line
	2100 6300 2900 6300
Connection ~ 2100 6300
Connection ~ 2900 6300
Wire Wire Line
	6200 6300 7050 6300
Wire Wire Line
	7050 6300 7050 6250
Connection ~ 6200 6300
Connection ~ 7050 6250
Wire Wire Line
	7600 6250 8450 6250
Connection ~ 7600 6250
Connection ~ 8450 6250
Connection ~ 4850 5650
Connection ~ 6200 5650
Wire Wire Line
	6200 5600 6200 5650
Wire Wire Line
	6200 5650 6200 5900
Wire Wire Line
	5650 5650 4850 5650
Wire Wire Line
	5650 5650 5650 5700
Connection ~ 5650 5650
Wire Wire Line
	5650 5650 6200 5650
Text GLabel 9400 6250 2    50   Input ~ 0
common_ground
Wire Wire Line
	9400 6250 9000 6250
Connection ~ 9000 6250
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 607893E7
P 5450 3800
F 0 "J3" H 5530 3842 50  0000 L CNN
F 1 "Conn_01x03" H 5530 3751 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Horizontal" H 5450 3800 50  0001 C CNN
F 3 "~" H 5450 3800 50  0001 C CNN
	1    5450 3800
	1    0    0    -1  
$EndComp
Text GLabel 5250 3700 0    50   Input ~ 0
din_next_layer
Text GLabel 5250 3800 0    50   Input ~ 0
5v_next_layer
Text GLabel 5250 3900 0    50   Input ~ 0
common_ground
$Comp
L Device:R_Small R12
U 1 1 6079AAC4
P 2650 3700
F 0 "R12" V 2454 3700 50  0000 C CNN
F 1 "330" V 2545 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2650 3700 50  0001 C CNN
F 3 "~" H 2650 3700 50  0001 C CNN
	1    2650 3700
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C8
U 1 1 6079B162
P 3450 4700
F 0 "C8" H 3542 4746 50  0000 L CNN
F 1 "100u" H 3542 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3450 4700 50  0001 C CNN
F 3 "~" H 3450 4700 50  0001 C CNN
	1    3450 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 6079B472
P 4850 4700
F 0 "C9" H 4942 4746 50  0000 L CNN
F 1 "100u" H 4942 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4850 4700 50  0001 C CNN
F 3 "~" H 4850 4700 50  0001 C CNN
	1    4850 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 6079BCFB
P 6200 4700
F 0 "C10" H 6292 4746 50  0000 L CNN
F 1 "100u" H 6292 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6200 4700 50  0001 C CNN
F 3 "~" H 6200 4700 50  0001 C CNN
	1    6200 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 6079C34A
P 7600 4700
F 0 "C11" H 7692 4746 50  0000 L CNN
F 1 "100u" H 7692 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7600 4700 50  0001 C CNN
F 3 "~" H 7600 4700 50  0001 C CNN
	1    7600 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 6079C9A2
P 9000 4700
F 0 "C12" H 9092 4746 50  0000 L CNN
F 1 "100u" H 9092 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9000 4700 50  0001 C CNN
F 3 "~" H 9000 4700 50  0001 C CNN
	1    9000 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 6079D16A
P 9000 5950
F 0 "C14" H 9092 5996 50  0000 L CNN
F 1 "100u" H 9092 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9000 5950 50  0001 C CNN
F 3 "~" H 9000 5950 50  0001 C CNN
	1    9000 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 6079D909
P 7600 5950
F 0 "C13" H 7692 5996 50  0000 L CNN
F 1 "100u" H 7692 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7600 5950 50  0001 C CNN
F 3 "~" H 7600 5950 50  0001 C CNN
	1    7600 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 6079DD2C
P 6200 6000
F 0 "C18" H 6292 6046 50  0000 L CNN
F 1 "100u" H 6292 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6200 6000 50  0001 C CNN
F 3 "~" H 6200 6000 50  0001 C CNN
	1    6200 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 6079E374
P 4850 6000
F 0 "C17" H 4942 6046 50  0000 L CNN
F 1 "100u" H 4942 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4850 6000 50  0001 C CNN
F 3 "~" H 4850 6000 50  0001 C CNN
	1    4850 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 6079E99A
P 3450 6000
F 0 "C16" H 3542 6046 50  0000 L CNN
F 1 "100u" H 3542 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3450 6000 50  0001 C CNN
F 3 "~" H 3450 6000 50  0001 C CNN
	1    3450 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 6079EF35
P 2100 6000
F 0 "C15" H 2192 6046 50  0000 L CNN
F 1 "100u" H 2192 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2100 6000 50  0001 C CNN
F 3 "~" H 2100 6000 50  0001 C CNN
	1    2100 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3700 2550 3700
$Comp
L Switch:SW_SPST SW1
U 1 1 607C421D
P 6700 950
F 0 "SW1" H 6700 1185 50  0000 C CNN
F 1 "power_switch" H 6700 1094 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx01_Slide_6.7x4.1mm_W8.61mm_P2.54mm_LowProfile" H 6700 950 50  0001 C CNN
F 3 "~" H 6700 950 50  0001 C CNN
	1    6700 950 
	1    0    0    -1  
$EndComp
Text GLabel 8850 1850 0    50   Input ~ 0
power_supply_5v
Connection ~ 9100 1850
Text GLabel 10350 1050 2    50   Input ~ 0
digital1
Wire Wire Line
	9300 2950 9100 2950
Wire Wire Line
	9100 2450 9100 2950
Connection ~ 9100 2450
Wire Wire Line
	9300 2450 9100 2450
Wire Wire Line
	9100 1950 9100 2450
Wire Wire Line
	9100 1850 9100 1950
Connection ~ 9100 1950
Wire Wire Line
	9300 1950 9100 1950
Wire Wire Line
	9100 1500 9100 1850
Wire Wire Line
	9100 1050 9100 1500
Connection ~ 9100 1500
Wire Wire Line
	9300 1500 9100 1500
Wire Wire Line
	9250 1050 9300 1050
Wire Wire Line
	9100 1050 9250 1050
Connection ~ 9250 1050
Wire Wire Line
	9250 1050 9250 1250
Wire Wire Line
	9250 1250 9800 1250
Wire Wire Line
	10200 1050 10350 1050
Wire Wire Line
	10200 1050 10200 1250
Connection ~ 10200 1050
Wire Wire Line
	9700 1050 10200 1050
$Comp
L Device:R_Small R2
U 1 1 608B5CF5
P 10100 1250
F 0 "R2" V 9904 1250 50  0000 C CNN
F 1 "10k" V 9995 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 10100 1250 50  0001 C CNN
F 3 "~" H 10100 1250 50  0001 C CNN
	1    10100 1250
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 608B5503
P 9900 1250
F 0 "C3" H 9992 1296 50  0000 L CNN
F 1 "100n" H 9992 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9900 1250 50  0001 C CNN
F 3 "~" H 9900 1250 50  0001 C CNN
	1    9900 1250
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 608E39A6
P 9500 1050
F 0 "SW2" H 9500 1335 50  0000 C CNN
F 1 "sleep_now" H 9500 1244 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 9500 1250 50  0001 C CNN
F 3 "~" H 9500 1250 50  0001 C CNN
	1    9500 1050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 608E4349
P 9500 1500
F 0 "SW3" H 9500 1785 50  0000 C CNN
F 1 "toggle_preset" H 9500 1694 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 9500 1700 50  0001 C CNN
F 3 "~" H 9500 1700 50  0001 C CNN
	1    9500 1500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 608E4835
P 9500 1950
F 0 "SW4" H 9500 2235 50  0000 C CNN
F 1 "increase_red" H 9500 2144 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 9500 2150 50  0001 C CNN
F 3 "~" H 9500 2150 50  0001 C CNN
	1    9500 1950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 608E4DF2
P 9500 2450
F 0 "SW5" H 9500 2735 50  0000 C CNN
F 1 "increase_green" H 9500 2644 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 9500 2650 50  0001 C CNN
F 3 "~" H 9500 2650 50  0001 C CNN
	1    9500 2450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 608E5169
P 9500 2950
F 0 "SW6" H 9500 3235 50  0000 C CNN
F 1 "increase_blue" H 9500 3144 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 9500 3150 50  0001 C CNN
F 3 "~" H 9500 3150 50  0001 C CNN
	1    9500 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 608E5BB7
P 9850 1600
F 0 "C4" H 9942 1646 50  0000 L CNN
F 1 "100n" H 9942 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9850 1600 50  0001 C CNN
F 3 "~" H 9850 1600 50  0001 C CNN
	1    9850 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 608E5E37
P 10050 1600
F 0 "R5" V 9854 1600 50  0000 C CNN
F 1 "10k" V 9945 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 10050 1600 50  0001 C CNN
F 3 "~" H 10050 1600 50  0001 C CNN
	1    10050 1600
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 608E611B
P 9850 2050
F 0 "C5" H 9942 2096 50  0000 L CNN
F 1 "100n" H 9942 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9850 2050 50  0001 C CNN
F 3 "~" H 9850 2050 50  0001 C CNN
	1    9850 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 608E651D
P 9850 2550
F 0 "C6" H 9942 2596 50  0000 L CNN
F 1 "100n" H 9942 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9850 2550 50  0001 C CNN
F 3 "~" H 9850 2550 50  0001 C CNN
	1    9850 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 608E6CE9
P 9850 3050
F 0 "C7" H 9942 3096 50  0000 L CNN
F 1 "100n" H 9942 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9850 3050 50  0001 C CNN
F 3 "~" H 9850 3050 50  0001 C CNN
	1    9850 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 608E705D
P 10050 2050
F 0 "R7" V 9854 2050 50  0000 C CNN
F 1 "10k" V 9945 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 10050 2050 50  0001 C CNN
F 3 "~" H 10050 2050 50  0001 C CNN
	1    10050 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 608E7399
P 10050 2550
F 0 "R9" V 9854 2550 50  0000 C CNN
F 1 "10k" V 9945 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 10050 2550 50  0001 C CNN
F 3 "~" H 10050 2550 50  0001 C CNN
	1    10050 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 608E76AA
P 10050 3050
F 0 "R11" V 9854 3050 50  0000 C CNN
F 1 "10k" V 9945 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 10050 3050 50  0001 C CNN
F 3 "~" H 10050 3050 50  0001 C CNN
	1    10050 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 1600 9300 1600
Wire Wire Line
	9300 1600 9300 1500
Connection ~ 9300 1500
Wire Wire Line
	9700 1500 10150 1500
Wire Wire Line
	10150 1500 10150 1600
Wire Wire Line
	10150 1500 10200 1500
Connection ~ 10150 1500
Wire Wire Line
	9300 1950 9300 2050
Wire Wire Line
	9300 2050 9750 2050
Connection ~ 9300 1950
Wire Wire Line
	9700 1950 10150 1950
Wire Wire Line
	10150 1950 10150 2050
Wire Wire Line
	10150 1950 10200 1950
Connection ~ 10150 1950
Wire Wire Line
	9300 2450 9300 2550
Wire Wire Line
	9300 2550 9750 2550
Connection ~ 9300 2450
Wire Wire Line
	10150 2550 10150 2450
Wire Wire Line
	10150 2450 9700 2450
Wire Wire Line
	10150 2450 10200 2450
Connection ~ 10150 2450
Wire Wire Line
	9300 2950 9300 3050
Wire Wire Line
	9300 3050 9750 3050
Connection ~ 9300 2950
Wire Wire Line
	10150 3050 10150 2950
Wire Wire Line
	10150 2950 9700 2950
Wire Wire Line
	10150 2950 10200 2950
Connection ~ 10150 2950
$Comp
L Device:R_Small R1
U 1 1 6096D407
P 10200 950
F 0 "R1" H 10141 904 50  0000 R CNN
F 1 "100k" H 10141 995 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 10200 950 50  0001 C CNN
F 3 "~" H 10200 950 50  0001 C CNN
	1    10200 950 
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 6096E470
P 10200 1400
F 0 "R4" H 10141 1354 50  0000 R CNN
F 1 "100k" H 10141 1445 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 10200 1400 50  0001 C CNN
F 3 "~" H 10200 1400 50  0001 C CNN
	1    10200 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 6096E698
P 10200 1850
F 0 "R6" H 10141 1804 50  0000 R CNN
F 1 "100k" H 10141 1895 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 10200 1850 50  0001 C CNN
F 3 "~" H 10200 1850 50  0001 C CNN
	1    10200 1850
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 6096E95F
P 10200 2350
F 0 "R8" H 10141 2304 50  0000 R CNN
F 1 "100k" H 10141 2395 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 10200 2350 50  0001 C CNN
F 3 "~" H 10200 2350 50  0001 C CNN
	1    10200 2350
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 6096F08B
P 10200 2850
F 0 "R10" H 10141 2804 50  0000 R CNN
F 1 "100k" H 10141 2895 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 10200 2850 50  0001 C CNN
F 3 "~" H 10200 2850 50  0001 C CNN
	1    10200 2850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6096F515
P 10500 800
F 0 "#PWR01" H 10500 550 50  0001 C CNN
F 1 "GND" H 10505 627 50  0000 C CNN
F 2 "" H 10500 800 50  0001 C CNN
F 3 "" H 10500 800 50  0001 C CNN
	1    10500 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60970111
P 10500 1250
F 0 "#PWR02" H 10500 1000 50  0001 C CNN
F 1 "GND" H 10505 1077 50  0000 C CNN
F 2 "" H 10500 1250 50  0001 C CNN
F 3 "" H 10500 1250 50  0001 C CNN
	1    10500 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60970487
P 10500 1700
F 0 "#PWR04" H 10500 1450 50  0001 C CNN
F 1 "GND" H 10505 1527 50  0000 C CNN
F 2 "" H 10500 1700 50  0001 C CNN
F 3 "" H 10500 1700 50  0001 C CNN
	1    10500 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6097074D
P 10500 2200
F 0 "#PWR05" H 10500 1950 50  0001 C CNN
F 1 "GND" H 10505 2027 50  0000 C CNN
F 2 "" H 10500 2200 50  0001 C CNN
F 3 "" H 10500 2200 50  0001 C CNN
	1    10500 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 60970A08
P 10500 2700
F 0 "#PWR06" H 10500 2450 50  0001 C CNN
F 1 "GND" H 10505 2527 50  0000 C CNN
F 2 "" H 10500 2700 50  0001 C CNN
F 3 "" H 10500 2700 50  0001 C CNN
	1    10500 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 2700 10200 2700
Wire Wire Line
	10200 2700 10200 2750
Wire Wire Line
	10500 2200 10200 2200
Wire Wire Line
	10200 2200 10200 2250
Wire Wire Line
	10500 1700 10200 1700
Wire Wire Line
	10200 1700 10200 1750
Wire Wire Line
	10500 1250 10350 1250
Wire Wire Line
	10350 1250 10350 1300
Wire Wire Line
	10350 1300 10200 1300
Wire Wire Line
	10500 800  10200 800 
Wire Wire Line
	10200 800  10200 850 
Wire Wire Line
	10200 1500 10350 1500
Connection ~ 10200 1500
Text GLabel 10350 1500 2    50   Input ~ 0
digital2
Wire Wire Line
	10200 1950 10350 1950
Connection ~ 10200 1950
Text GLabel 10350 1950 2    50   Input ~ 0
digital3
Text GLabel 10550 2450 2    50   Input ~ 0
digital4
Text GLabel 10550 2950 2    50   Input ~ 0
digital5
Wire Wire Line
	10550 2450 10200 2450
Connection ~ 10200 2450
Wire Wire Line
	10550 2950 10200 2950
Connection ~ 10200 2950
Wire Notes Line
	7750 3200 11050 3200
Wire Notes Line
	11050 3200 11050 700 
Wire Notes Line
	11050 700  7750 700 
Wire Notes Line
	7750 700  7750 3200
Text Notes 7850 850  0    50   ~ 0
control panel\n
Text Notes 7800 3100 0    50   ~ 0
10k is the internal pullup \nresistor of the input pin
$Comp
L Device:C_Small C2
U 1 1 60A00014
P 6450 1150
F 0 "C2" H 6542 1196 50  0000 L CNN
F 1 "100u" H 6542 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6450 1150 50  0001 C CNN
F 3 "~" H 6450 1150 50  0001 C CNN
	1    6450 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 60A0166B
P 6000 1150
F 0 "J1" H 6057 1617 50  0000 C CNN
F 1 "USB_B_Micro" H 6057 1526 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 6150 1100 50  0001 C CNN
F 3 "~" H 6150 1100 50  0001 C CNN
	1    6000 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1550 6450 1550
Wire Wire Line
	6450 1550 6450 1250
Wire Wire Line
	6450 1050 6450 950 
Wire Wire Line
	6450 950  6300 950 
$Comp
L power:GND #PWR03
U 1 1 60A1DC06
P 6000 1550
F 0 "#PWR03" H 6000 1300 50  0001 C CNN
F 1 "GND" H 6005 1377 50  0000 C CNN
F 2 "" H 6000 1550 50  0001 C CNN
F 3 "" H 6000 1550 50  0001 C CNN
	1    6000 1550
	1    0    0    -1  
$EndComp
Connection ~ 6000 1550
Text GLabel 7000 950  2    50   Input ~ 0
power_supply_5v
Wire Wire Line
	6900 950  6950 950 
Wire Wire Line
	6500 950  6450 950 
Connection ~ 6450 950 
Wire Wire Line
	8850 1850 9100 1850
$Comp
L Device:LED_Small D2
U 1 1 60A5F643
P 6950 1150
F 0 "D2" V 6996 1080 50  0000 R CNN
F 1 "LED_Small" V 6905 1080 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6950 1150 50  0001 C CNN
F 3 "~" V 6950 1150 50  0001 C CNN
	1    6950 1150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 60A60B7A
P 6950 1350
F 0 "R3" V 6754 1350 50  0000 C CNN
F 1 "330" V 6845 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6950 1350 50  0001 C CNN
F 3 "~" H 6950 1350 50  0001 C CNN
	1    6950 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1050 6950 950 
Connection ~ 6950 950 
Wire Wire Line
	6950 950  7000 950 
Wire Wire Line
	6950 1450 6950 1550
Wire Wire Line
	6950 1550 6450 1550
Connection ~ 6450 1550
NoConn ~ 6300 1150
NoConn ~ 6300 1250
NoConn ~ 6300 1350
NoConn ~ 5900 1550
Text GLabel 5000 3450 2    50   Input ~ 0
5v_next_layer
Text GLabel 4750 3450 0    50   Input ~ 0
power_supply_5v
Wire Wire Line
	4750 3450 5000 3450
$EndSCHEMATC
