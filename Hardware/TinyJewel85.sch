EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:domotab
LIBS:serigraphie
LIBS:Jewel_V2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "TinyJewel85"
Date "2017-08-10"
Rev "1.0"
Comp "Anderson69s.com"
Comment1 "Alexandre Perier-Muzet"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY85-S IC1
U 1 1 567108AD
P 4100 1825
F 0 "IC1" H 2950 2225 50  0000 C CNN
F 1 "ATTINY85-S" H 5100 1425 50  0000 C CNN
F 2 "domotab:SOIC8-W" H 4050 1425 50  0001 C CIN
F 3 "" H 4100 1825 50  0000 C CNN
	1    4100 1825
	1    0    0    -1  
$EndComp
Text GLabel 1800 2075 0    60   Input ~ 0
RST
Text GLabel 2500 1575 0    60   Input ~ 0
PB0
Text GLabel 2150 1675 0    60   Input ~ 0
PB1
Text GLabel 1800 1775 0    60   Input ~ 0
PB2
Text GLabel 1450 1875 0    60   Input ~ 0
PB3
Text GLabel 1100 1975 0    60   Input ~ 0
PB4
Wire Wire Line
	2150 1675 2750 1675
Wire Wire Line
	2500 1575 2750 1575
Wire Wire Line
	1450 1875 2750 1875
Wire Wire Line
	1800 1775 2750 1775
Wire Wire Line
	1100 1975 2750 1975
Wire Wire Line
	2750 2075 1800 2075
$Comp
L GND #PWR01
U 1 1 56A87EFD
P 5550 2125
F 0 "#PWR01" H 5550 1875 50  0001 C CNN
F 1 "GND" H 5550 1975 50  0000 C CNN
F 2 "" H 5550 2125 50  0000 C CNN
F 3 "" H 5550 2125 50  0000 C CNN
	1    5550 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2075 5550 2075
Wire Wire Line
	5550 2075 5550 2125
$Comp
L WS2812B D2
U 1 1 59311D1E
P 2950 4825
F 0 "D2" H 2950 4975 60  0000 C CNN
F 1 "SK6812" H 2950 4575 60  0000 C CNN
F 2 "domotab:WS2812B" H 2950 4825 60  0001 C CNN
F 3 "" H 2950 4825 60  0000 C CNN
	1    2950 4825
	1    0    0    -1  
$EndComp
$Comp
L WS2812B D3
U 1 1 59311D62
P 4150 4825
F 0 "D3" H 4150 4975 60  0000 C CNN
F 1 "SK6812" H 4150 4575 60  0000 C CNN
F 2 "domotab:WS2812B" H 4150 4825 60  0001 C CNN
F 3 "" H 4150 4825 60  0000 C CNN
	1    4150 4825
	1    0    0    -1  
$EndComp
$Comp
L WS2812B D1
U 1 1 59311DA1
P 1800 4825
F 0 "D1" H 1800 4975 60  0000 C CNN
F 1 "SK6812" H 1800 4575 60  0000 C CNN
F 2 "domotab:WS2812B" H 1800 4825 60  0001 C CNN
F 3 "" H 1800 4825 60  0000 C CNN
	1    1800 4825
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 59311DF4
P 1250 3625
F 0 "C1" H 1050 3750 50  0000 L CNN
F 1 "100nF" H 975 3500 50  0000 L CNN
F 2 "domotab:SM0402" H 1288 3475 50  0001 C CNN
F 3 "" H 1250 3625 50  0001 C CNN
	1    1250 3625
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 59311E31
P 2500 3625
F 0 "C2" H 2275 3725 50  0000 L CNN
F 1 "100nF" H 2175 3500 50  0000 L CNN
F 2 "domotab:SM0402" H 2538 3475 50  0001 C CNN
F 3 "" H 2500 3625 50  0001 C CNN
	1    2500 3625
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59311E6B
P 3650 3625
F 0 "C3" H 3450 3750 50  0000 L CNN
F 1 "100nF" H 3350 3500 50  0000 L CNN
F 2 "domotab:SM0402" H 3688 3475 50  0001 C CNN
F 3 "" H 3650 3625 50  0001 C CNN
	1    3650 3625
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 59311EBB
P 10000 1850
F 0 "P1" V 9950 1850 40  0000 C CNN
F 1 "CONN_2" V 10050 1850 40  0000 C CNN
F 2 "Connectors_JST:JST_PH_S2B-PH-SM4-TB_02x2.00mm_Angled" H 10000 1850 60  0001 C CNN
F 3 "" H 10000 1850 60  0000 C CNN
	1    10000 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59312862
P 3650 4000
F 0 "#PWR02" H 3650 3750 50  0001 C CNN
F 1 "GND" H 3650 3850 50  0000 C CNN
F 2 "" H 3650 4000 50  0000 C CNN
F 3 "" H 3650 4000 50  0000 C CNN
	1    3650 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5931288B
P 2500 4050
F 0 "#PWR03" H 2500 3800 50  0001 C CNN
F 1 "GND" H 2500 3900 50  0000 C CNN
F 2 "" H 2500 4050 50  0000 C CNN
F 3 "" H 2500 4050 50  0000 C CNN
	1    2500 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 593128B4
P 1250 4050
F 0 "#PWR04" H 1250 3800 50  0001 C CNN
F 1 "GND" H 1250 3900 50  0000 C CNN
F 2 "" H 1250 4050 50  0000 C CNN
F 3 "" H 1250 4050 50  0000 C CNN
	1    1250 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3225 3650 3475
$Comp
L +3.3V #PWR05
U 1 1 59312D51
P 5550 1500
F 0 "#PWR05" H 5550 1350 50  0001 C CNN
F 1 "+3.3V" H 5550 1640 50  0000 C CNN
F 2 "" H 5550 1500 50  0001 C CNN
F 3 "" H 5550 1500 50  0001 C CNN
	1    5550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1575 6050 1575
Wire Wire Line
	5550 1575 5550 1500
Wire Wire Line
	3650 4000 3650 3775
Wire Wire Line
	1250 3775 1250 4050
Wire Wire Line
	2500 4050 2500 3775
Wire Wire Line
	3650 3350 3875 3350
Wire Wire Line
	3875 3350 3875 4775
Wire Wire Line
	3875 4775 3950 4775
Connection ~ 3650 3350
$Comp
L +3.3V #PWR06
U 1 1 59313993
P 3650 3225
F 0 "#PWR06" H 3650 3075 50  0001 C CNN
F 1 "+3.3V" H 3650 3365 50  0000 C CNN
F 2 "" H 3650 3225 50  0001 C CNN
F 3 "" H 3650 3225 50  0001 C CNN
	1    3650 3225
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 593139E4
P 2500 3275
F 0 "#PWR07" H 2500 3125 50  0001 C CNN
F 1 "+3.3V" H 2500 3415 50  0000 C CNN
F 2 "" H 2500 3275 50  0001 C CNN
F 3 "" H 2500 3275 50  0001 C CNN
	1    2500 3275
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR08
U 1 1 59313A2B
P 1250 3275
F 0 "#PWR08" H 1250 3125 50  0001 C CNN
F 1 "+3.3V" H 1250 3415 50  0000 C CNN
F 2 "" H 1250 3275 50  0001 C CNN
F 3 "" H 1250 3275 50  0001 C CNN
	1    1250 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3275 2500 3475
Wire Wire Line
	1250 3275 1250 3475
Wire Wire Line
	2500 3325 2675 3325
Wire Wire Line
	2675 3325 2675 4775
Wire Wire Line
	2675 4775 2750 4775
Connection ~ 2500 3325
Wire Wire Line
	1250 3350 1500 3350
Wire Wire Line
	1500 3350 1500 4775
Wire Wire Line
	1500 4775 1600 4775
Connection ~ 1250 3350
$Comp
L GND #PWR09
U 1 1 59313B91
P 3250 5325
F 0 "#PWR09" H 3250 5075 50  0001 C CNN
F 1 "GND" H 3250 5175 50  0000 C CNN
F 2 "" H 3250 5325 50  0000 C CNN
F 3 "" H 3250 5325 50  0000 C CNN
	1    3250 5325
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 59313BBA
P 4600 5300
F 0 "#PWR010" H 4600 5050 50  0001 C CNN
F 1 "GND" H 4600 5150 50  0000 C CNN
F 2 "" H 4600 5300 50  0000 C CNN
F 3 "" H 4600 5300 50  0000 C CNN
	1    4600 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 59313BE3
P 2175 5300
F 0 "#PWR011" H 2175 5050 50  0001 C CNN
F 1 "GND" H 2175 5150 50  0000 C CNN
F 2 "" H 2175 5300 50  0000 C CNN
F 3 "" H 2175 5300 50  0000 C CNN
	1    2175 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4925 2175 4925
Wire Wire Line
	2175 4925 2175 5300
Wire Wire Line
	3200 4925 3250 4925
Wire Wire Line
	3250 4925 3250 5325
Wire Wire Line
	4400 4925 4600 4925
Wire Wire Line
	4600 4925 4600 5300
Wire Wire Line
	2050 4775 2350 4775
Wire Wire Line
	2350 4775 2350 4925
Wire Wire Line
	2350 4925 2750 4925
Wire Wire Line
	3200 4775 3525 4775
Wire Wire Line
	3525 4775 3525 4925
Wire Wire Line
	3525 4925 3950 4925
Text GLabel 4600 4775 2    60   Input ~ 0
PB4
Wire Wire Line
	4400 4775 4600 4775
NoConn ~ 1600 4925
$Comp
L BATTERY BT1
U 1 1 593142C8
P 10700 1875
F 0 "BT1" H 10700 2075 50  0000 C CNN
F 1 "BATTERY" H 10700 1685 50  0000 C CNN
F 2 "domotab:Support_Pile_Bouton_20mm" H 10700 1875 60  0001 C CNN
F 3 "" H 10700 1875 60  0000 C CNN
	1    10700 1875
	0    1    1    0   
$EndComp
Wire Notes Line
	675  2850 5225 2850
Wire Notes Line
	5225 2850 5225 5675
Wire Notes Line
	5225 5675 675  5675
Wire Notes Line
	675  5675 675  2850
Text Notes 4750 3250 2    60   ~ 0
LEDS
Wire Notes Line
	550  525  6625 525 
Wire Notes Line
	6625 525  6625 2725
Wire Notes Line
	6625 2725 550  2725
Wire Notes Line
	550  2725 550  525 
Text Notes 875  750  2    60   ~ 0
MCU
$Comp
L SW_PUSH SW1
U 1 1 59314866
P 2775 6450
F 0 "SW1" H 2925 6560 50  0000 C CNN
F 1 "Animations" H 2775 6370 50  0000 C CNN
F 2 "domotab:SWITCH_CMS" H 2775 6450 60  0001 C CNN
F 3 "" H 2775 6450 60  0000 C CNN
	1    2775 6450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 593148F8
P 3325 6875
F 0 "#PWR012" H 3325 6625 50  0001 C CNN
F 1 "GND" H 3325 6725 50  0000 C CNN
F 2 "" H 3325 6875 50  0000 C CNN
F 3 "" H 3325 6875 50  0000 C CNN
	1    3325 6875
	1    0    0    -1  
$EndComp
Text GLabel 2050 6450 0    60   Input ~ 0
PB3
Wire Wire Line
	2050 6450 2475 6450
Wire Wire Line
	3075 6450 3325 6450
Wire Wire Line
	3325 6450 3325 6875
Wire Notes Line
	1350 5775 4300 5775
Wire Notes Line
	4300 5775 4300 7700
Wire Notes Line
	4300 7700 1350 7700
Wire Notes Line
	1350 7700 1350 5775
Text Notes 3650 6025 0    60   ~ 0
ANIMATIONS
$Comp
L GND #PWR013
U 1 1 59314C0A
P 6600 5175
F 0 "#PWR013" H 6600 4925 50  0001 C CNN
F 1 "GND" H 6600 5025 50  0000 C CNN
F 2 "" H 6600 5175 50  0000 C CNN
F 3 "" H 6600 5175 50  0000 C CNN
	1    6600 5175
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR014
U 1 1 59314C36
P 7700 4975
F 0 "#PWR014" H 7700 4825 50  0001 C CNN
F 1 "+3.3V" H 7700 5115 50  0000 C CNN
F 2 "" H 7700 4975 50  0001 C CNN
F 3 "" H 7700 4975 50  0001 C CNN
	1    7700 4975
	0    1    1    0   
$EndComp
Text GLabel 7475 5225 2    60   Input ~ 0
PB0
Text GLabel 7700 4300 2    60   Input ~ 0
PB1
Text GLabel 6700 4150 0    60   Input ~ 0
PB2
Text GLabel 6100 4300 0    60   Input ~ 0
RST
$Comp
L CONN_02X03 J1
U 1 1 59314D76
P 6975 4650
F 0 "J1" V 6975 4875 50  0000 C CNN
F 1 "PROG" V 6975 4350 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x03_Pitch2.54mm" H 6975 3450 50  0001 C CNN
F 3 "" H 6975 3450 50  0001 C CNN
	1    6975 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	6875 4900 6875 5050
Wire Wire Line
	6875 5050 6600 5050
Wire Wire Line
	6600 5050 6600 5175
Wire Wire Line
	7075 4900 7075 4975
Wire Wire Line
	7075 4975 7700 4975
Wire Wire Line
	6975 4900 6975 5225
Wire Wire Line
	6975 5225 7475 5225
Wire Wire Line
	6100 4300 6875 4300
Wire Wire Line
	6875 4300 6875 4400
Wire Wire Line
	7075 4400 7075 4300
Wire Wire Line
	7075 4300 7700 4300
Wire Wire Line
	6975 4400 6975 4150
Wire Wire Line
	6975 4150 6700 4150
Wire Notes Line
	5550 3800 8425 3800
Wire Notes Line
	8425 3800 8425 5800
Wire Notes Line
	8425 5800 5550 5800
Wire Notes Line
	5550 5800 5550 3800
Text Notes 7425 3975 0    60   ~ 0
ICSP
$Comp
L GND #PWR015
U 1 1 59315B41
P 9275 2225
F 0 "#PWR015" H 9275 1975 50  0001 C CNN
F 1 "GND" H 9275 2075 50  0000 C CNN
F 2 "" H 9275 2225 50  0000 C CNN
F 3 "" H 9275 2225 50  0000 C CNN
	1    9275 2225
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR016
U 1 1 59315D5B
P 8350 1275
F 0 "#PWR016" H 8350 1125 50  0001 C CNN
F 1 "+3.3V" H 8350 1415 50  0000 C CNN
F 2 "" H 8350 1275 50  0001 C CNN
F 3 "" H 8350 1275 50  0001 C CNN
	1    8350 1275
	1    0    0    -1  
$EndComp
Wire Notes Line
	7850 625  10975 625 
Wire Notes Line
	10975 625  10975 3550
Wire Notes Line
	10975 3550 7850 3550
Wire Notes Line
	7850 3550 7850 625 
Text Notes 10275 850  0    60   ~ 0
BATTERY\n
$Comp
L SW_PUSH SW2
U 1 1 5931334F
P 8975 1750
F 0 "SW2" H 9125 1860 50  0000 C CNN
F 1 "ON/OFF" H 8975 1670 50  0000 C CNN
F 2 "domotab:Switch_DPDT" H 8975 1750 60  0001 C CNN
F 3 "" H 8975 1750 60  0000 C CNN
	1    8975 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9275 1750 9650 1750
Wire Wire Line
	8350 1275 8350 1750
Wire Wire Line
	8350 1750 8675 1750
Wire Wire Line
	9650 1950 9275 1950
Wire Wire Line
	9275 1950 9275 2225
Wire Wire Line
	10700 2175 9275 2175
Connection ~ 9275 2175
Wire Wire Line
	10700 1575 10700 1450
Wire Wire Line
	10700 1450 10300 1450
Wire Wire Line
	10300 1450 10300 2175
Connection ~ 10300 2175
$Comp
L HOLE_3MM H2
U 1 1 59337E96
P 9550 4650
F 0 "H2" H 9550 4500 60  0000 C CNN
F 1 "HOLE_3MM" H 9550 4800 60  0000 C CNN
F 2 "domotab:Hole_3mm" H 9550 4650 60  0001 C CNN
F 3 "" H 9550 4650 60  0000 C CNN
	1    9550 4650
	1    0    0    -1  
$EndComp
$Comp
L HOLE_3MM H3
U 1 1 5933803C
P 9850 5350
F 0 "H3" H 9850 5200 60  0000 C CNN
F 1 "HOLE_3MM" H 9850 5500 60  0000 C CNN
F 2 "domotab:Hole_3mm" H 9850 5350 60  0001 C CNN
F 3 "" H 9850 5350 60  0000 C CNN
	1    9850 5350
	1    0    0    -1  
$EndComp
$Comp
L HOLE_3MM H1
U 1 1 593380A2
P 9250 5350
F 0 "H1" H 9250 5200 60  0000 C CNN
F 1 "HOLE_3MM" H 9250 5500 60  0000 C CNN
F 2 "domotab:Hole_3mm" H 9250 5350 60  0001 C CNN
F 3 "" H 9250 5350 60  0000 C CNN
	1    9250 5350
	1    0    0    -1  
$EndComp
$Comp
L HOLE_3MM H4
U 1 1 593380ED
P 10300 4650
F 0 "H4" H 10300 4500 60  0000 C CNN
F 1 "HOLE_3MM" H 10300 4800 60  0000 C CNN
F 2 "domotab:Hole_3mm" H 10300 4650 60  0001 C CNN
F 3 "" H 10300 4650 60  0000 C CNN
	1    10300 4650
	1    0    0    -1  
$EndComp
$Comp
L HOLE_3MM H5
U 1 1 59338167
P 10450 5350
F 0 "H5" H 10450 5200 60  0000 C CNN
F 1 "HOLE_3MM" H 10450 5500 60  0000 C CNN
F 2 "domotab:Hole_3mm" H 10450 5350 60  0001 C CNN
F 3 "" H 10450 5350 60  0000 C CNN
	1    10450 5350
	1    0    0    -1  
$EndComp
Wire Notes Line
	8900 3900 10850 3900
Wire Notes Line
	10850 3900 10850 5700
Wire Notes Line
	10850 5700 8900 5700
Wire Notes Line
	8900 5700 8900 3900
Text Notes 9700 4150 0    60   ~ 0
HOLES\n
$Comp
L C C4
U 1 1 59365A1A
P 6050 1825
F 0 "C4" H 5850 1950 50  0000 L CNN
F 1 "100nF" H 5750 1700 50  0000 L CNN
F 2 "domotab:SM0402" H 6088 1675 50  0001 C CNN
F 3 "" H 6050 1825 50  0001 C CNN
	1    6050 1825
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 59365D38
P 6050 1975
F 0 "#PWR017" H 6050 1725 50  0001 C CNN
F 1 "GND" H 6050 1825 50  0000 C CNN
F 2 "" H 6050 1975 50  0000 C CNN
F 3 "" H 6050 1975 50  0000 C CNN
	1    6050 1975
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1575 6050 1675
Connection ~ 5550 1575
$EndSCHEMATC
