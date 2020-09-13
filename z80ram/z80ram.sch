EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "z80ctrl CPU/RAM/RTC Board"
Date "2020-09-01"
Rev "REV1"
Comp "J.B. Langston"
Comment1 "https://github.com/jblang/z80ctrl"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 5350 1900 0    50   ~ 0
A0
Text Label 5350 2000 0    50   ~ 0
A1
Text Label 5350 2100 0    50   ~ 0
A2
Text Label 5350 2200 0    50   ~ 0
A3
Text Label 5350 2300 0    50   ~ 0
A4
Text Label 5350 2400 0    50   ~ 0
A5
Text Label 5350 2500 0    50   ~ 0
A6
Text Label 5350 2600 0    50   ~ 0
A7
Text Label 5350 2700 0    50   ~ 0
A8
Text Label 5350 2800 0    50   ~ 0
A9
Text Label 5350 2900 0    50   ~ 0
A10
Text Label 5350 3000 0    50   ~ 0
A11
Text Label 5350 3100 0    50   ~ 0
A12
Text Label 5350 3200 0    50   ~ 0
A13
Text Label 5350 3300 0    50   ~ 0
A14
Text Label 3500 5750 0    50   ~ 0
D0
Text Label 3500 5850 0    50   ~ 0
D1
Text Label 3500 5950 0    50   ~ 0
D2
Text Label 3500 6050 0    50   ~ 0
D3
Text Label 3500 6150 0    50   ~ 0
D4
Text Label 3500 6250 0    50   ~ 0
D5
Text Label 3500 6350 0    50   ~ 0
D6
Text Label 3500 6450 0    50   ~ 0
D7
Wire Wire Line
	3500 5750 3650 5750
Wire Wire Line
	3500 5850 3650 5850
Wire Wire Line
	3500 5950 3650 5950
Wire Wire Line
	3500 6050 3650 6050
Wire Wire Line
	3500 6150 3650 6150
Wire Wire Line
	3500 6250 3650 6250
Wire Wire Line
	3500 6350 3650 6350
Wire Wire Line
	3500 6450 3650 6450
Wire Wire Line
	6650 2600 6500 2600
Wire Wire Line
	6650 2500 6500 2500
Wire Wire Line
	6650 2400 6500 2400
Wire Wire Line
	6650 2300 6500 2300
Wire Wire Line
	6650 2200 6500 2200
Wire Wire Line
	6650 2100 6500 2100
Wire Wire Line
	6650 2000 6500 2000
Wire Wire Line
	6650 1900 6500 1900
Text Label 6650 2600 2    50   ~ 0
D7
Text Label 6650 2500 2    50   ~ 0
D6
Text Label 6650 2400 2    50   ~ 0
D5
Text Label 6650 2300 2    50   ~ 0
D4
Text Label 6650 2200 2    50   ~ 0
D3
Text Label 6650 2100 2    50   ~ 0
D2
Text Label 6650 2000 2    50   ~ 0
D1
Text Label 6650 1900 2    50   ~ 0
D0
Wire Wire Line
	6450 6650 6650 6650
Wire Wire Line
	6450 6350 6650 6350
Wire Wire Line
	6450 6050 6650 6050
Wire Wire Line
	6450 5750 6650 5750
Text Label 6650 6650 2    50   ~ 0
B18
Text Label 6650 6350 2    50   ~ 0
B17
Text Label 6650 6050 2    50   ~ 0
B16
Text Label 6650 5750 2    50   ~ 0
B15
Text Label 5250 6750 0    50   ~ 0
BB18
Text Label 5250 6650 0    50   ~ 0
BA18
Text Label 5250 6450 0    50   ~ 0
BB17
Text Label 5250 6350 0    50   ~ 0
BA17
Text Label 5250 6150 0    50   ~ 0
BB16
Text Label 5250 6050 0    50   ~ 0
BA16
Text Label 5250 5850 0    50   ~ 0
BB15
Text Label 5250 5750 0    50   ~ 0
BA15
$Comp
L 74xx:74LS257 U3
U 1 1 5F15B782
P 5950 6350
F 0 "U3" H 6050 7200 50  0000 C CNN
F 1 "74LS257" H 6150 7100 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5950 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS257" H 5950 6350 50  0001 C CNN
	1    5950 6350
	1    0    0    -1  
$EndComp
Text Label 4850 5750 2    50   ~ 0
BA15
Text Label 4850 5850 2    50   ~ 0
BA16
Text Label 4850 5950 2    50   ~ 0
BA17
Text Label 4850 6050 2    50   ~ 0
BA18
Text Label 4850 6150 2    50   ~ 0
BB15
Text Label 4850 6250 2    50   ~ 0
BB16
Text Label 4850 6350 2    50   ~ 0
BB17
Text Label 4850 6450 2    50   ~ 0
BB18
Wire Wire Line
	4650 6450 4850 6450
Text Label 5350 3400 0    50   ~ 0
B15
Text Label 5350 3500 0    50   ~ 0
B16
Text Label 5350 3600 0    50   ~ 0
B17
Text Label 5350 3700 0    50   ~ 0
B18
Wire Wire Line
	5350 3400 5500 3400
Wire Wire Line
	5350 3500 5500 3500
Wire Wire Line
	5350 3600 5500 3600
Wire Wire Line
	5350 3700 5500 3700
$Comp
L 74xx:74HCT574 U2
U 1 1 5F1A2173
P 4150 6250
F 0 "U2" H 4250 7000 50  0000 C CNN
F 1 "74HCT574" H 4350 6900 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 4150 6250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HCT574" H 4150 6250 50  0001 C CNN
	1    4150 6250
	1    0    0    -1  
$EndComp
Text Label 5250 6950 0    50   ~ 0
A15
Wire Wire Line
	5250 6950 5450 6950
Text Label 6700 2900 2    50   ~ 0
~MREQ
Text Label 6700 3100 2    50   ~ 0
~WR
Text Label 6700 3000 2    50   ~ 0
~RD
Wire Wire Line
	6500 2900 6700 2900
Wire Wire Line
	6500 3000 6700 3000
Wire Wire Line
	6500 3100 6700 3100
$Comp
L Memory_RAM:AS6C4008-55PCN U4
U 1 1 5F146081
P 6000 2800
F 0 "U4" H 6100 3950 50  0000 C CNN
F 1 "AS6C4008-55PCN" H 6400 3850 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 6000 2900 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 6000 2900 50  0001 C CNN
	1    6000 2800
	1    0    0    -1  
$EndComp
$Comp
L CPU:Z80CPU U1
U 1 1 5F1B98A9
P 4100 3100
F 0 "U1" H 4250 4600 50  0000 C CNN
F 1 "Z80CPU" H 4300 4500 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 4100 3500 50  0001 C CNN
F 3 "www.zilog.com/manage_directlink.php?filepath=docs/z80/um0080" H 4100 3500 50  0001 C CNN
	1    4100 3100
	1    0    0    -1  
$EndComp
Text Label 4950 1900 2    50   ~ 0
A0
Text Label 4950 2000 2    50   ~ 0
A1
Text Label 4950 2100 2    50   ~ 0
A2
Text Label 4950 2200 2    50   ~ 0
A3
Text Label 4950 2300 2    50   ~ 0
A4
Text Label 4950 2400 2    50   ~ 0
A5
Text Label 4950 2500 2    50   ~ 0
A6
Text Label 4950 2600 2    50   ~ 0
A7
Text Label 4950 2700 2    50   ~ 0
A8
Text Label 4950 2800 2    50   ~ 0
A9
Text Label 4950 2900 2    50   ~ 0
A10
Text Label 4950 3000 2    50   ~ 0
A11
Text Label 4950 3100 2    50   ~ 0
A12
Text Label 4950 3200 2    50   ~ 0
A13
Text Label 4950 3300 2    50   ~ 0
A14
Text Label 4950 3400 2    50   ~ 0
A15
Text Label 4950 3600 2    50   ~ 0
D0
Text Label 4950 3700 2    50   ~ 0
D1
Text Label 4950 3800 2    50   ~ 0
D2
Text Label 4950 3900 2    50   ~ 0
D3
Text Label 4950 4000 2    50   ~ 0
D4
Text Label 4950 4100 2    50   ~ 0
D5
Text Label 4950 4200 2    50   ~ 0
D6
Text Label 4950 4300 2    50   ~ 0
D7
Wire Wire Line
	4950 3600 4800 3600
Wire Wire Line
	4950 3700 4800 3700
Wire Wire Line
	4950 3800 4800 3800
Wire Wire Line
	4950 3900 4800 3900
Wire Wire Line
	4950 4000 4800 4000
Wire Wire Line
	4950 4100 4800 4100
Wire Wire Line
	4950 4200 4800 4200
Wire Wire Line
	4950 4300 4800 4300
Text Label 3100 1900 0    50   ~ 0
~RST
Text Label 3100 2500 0    50   ~ 0
~NMI
Text Label 3100 2600 0    50   ~ 0
~INT
Text Label 3100 2900 0    50   ~ 0
~M1
Text Label 3100 3900 0    50   ~ 0
~IORQ
Text Label 3100 3800 0    50   ~ 0
~MREQ
Text Label 3100 3600 0    50   ~ 0
~RD
Text Label 3100 3700 0    50   ~ 0
~WR
Wire Wire Line
	3400 1900 3100 1900
Wire Wire Line
	3400 2500 3100 2500
Wire Wire Line
	3400 2600 3100 2600
Wire Wire Line
	3400 2900 3100 2900
Wire Wire Line
	3400 3900 3100 3900
Wire Wire Line
	3400 3800 3100 3800
Wire Wire Line
	3400 3600 3100 3600
Wire Wire Line
	3400 3700 3100 3700
Text Label 3100 3100 0    50   ~ 0
~WAIT
Wire Wire Line
	3400 3100 3100 3100
Text Label 3100 2200 0    50   ~ 0
CLK
Wire Wire Line
	3400 2200 3100 2200
Text Label 3100 4200 0    50   ~ 0
~BUSRQ
Text Label 3100 4300 0    50   ~ 0
~BUSACK~
Wire Wire Line
	3400 4200 3100 4200
Wire Wire Line
	3400 4300 3100 4300
$Comp
L power:GND #PWR0101
U 1 1 5F493809
P 4100 4600
F 0 "#PWR0101" H 4100 4350 50  0001 C CNN
F 1 "GND" H 4105 4427 50  0000 C CNN
F 2 "" H 4100 4600 50  0001 C CNN
F 3 "" H 4100 4600 50  0001 C CNN
	1    4100 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F493F78
P 6000 3900
F 0 "#PWR0102" H 6000 3650 50  0001 C CNN
F 1 "GND" H 6005 3727 50  0000 C CNN
F 2 "" H 6000 3900 50  0001 C CNN
F 3 "" H 6000 3900 50  0001 C CNN
	1    6000 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F4944BC
P 4150 7050
F 0 "#PWR0103" H 4150 6800 50  0001 C CNN
F 1 "GND" H 4155 6877 50  0000 C CNN
F 2 "" H 4150 7050 50  0001 C CNN
F 3 "" H 4150 7050 50  0001 C CNN
	1    4150 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F49488B
P 5950 7350
F 0 "#PWR0104" H 5950 7100 50  0001 C CNN
F 1 "GND" H 5955 7177 50  0000 C CNN
F 2 "" H 5950 7350 50  0001 C CNN
F 3 "" H 5950 7350 50  0001 C CNN
	1    5950 7350
	1    0    0    -1  
$EndComp
Entry Wire Line
	5050 1900 5150 2000
Entry Wire Line
	5050 2000 5150 2100
Entry Wire Line
	5050 2100 5150 2200
Entry Wire Line
	5050 2200 5150 2300
Entry Wire Line
	5050 2300 5150 2400
Entry Wire Line
	5050 2400 5150 2500
Entry Wire Line
	5050 2500 5150 2600
Entry Wire Line
	5050 2600 5150 2700
Entry Wire Line
	5050 2700 5150 2800
Entry Wire Line
	5050 2800 5150 2900
Entry Wire Line
	5050 2900 5150 3000
Entry Wire Line
	5050 3000 5150 3100
Entry Wire Line
	5050 3100 5150 3200
Entry Wire Line
	5050 3200 5150 3300
Entry Wire Line
	5050 3300 5150 3400
Entry Wire Line
	5050 3400 5150 3500
Entry Wire Line
	5250 1900 5150 2000
Entry Wire Line
	5250 2000 5150 2100
Entry Wire Line
	5250 2100 5150 2200
Entry Wire Line
	5250 2200 5150 2300
Entry Wire Line
	5250 2300 5150 2400
Entry Wire Line
	5250 2400 5150 2500
Entry Wire Line
	5250 2500 5150 2600
Entry Wire Line
	5250 2600 5150 2700
Entry Wire Line
	5250 2700 5150 2800
Entry Wire Line
	5250 2800 5150 2900
Entry Wire Line
	5250 2900 5150 3000
Entry Wire Line
	5250 3000 5150 3100
Entry Wire Line
	5250 3100 5150 3200
Entry Wire Line
	5250 3200 5150 3300
Entry Wire Line
	5250 3300 5150 3400
Wire Wire Line
	4800 1900 5050 1900
Wire Wire Line
	4800 2000 5050 2000
Wire Wire Line
	4800 2100 5050 2100
Wire Wire Line
	4800 2200 5050 2200
Wire Wire Line
	4800 2300 5050 2300
Wire Wire Line
	4800 2400 5050 2400
Wire Wire Line
	4800 2500 5050 2500
Wire Wire Line
	4800 2600 5050 2600
Wire Wire Line
	4800 2700 5050 2700
Wire Wire Line
	4800 2800 5050 2800
Wire Wire Line
	4800 2900 5050 2900
Wire Wire Line
	4800 3000 5050 3000
Wire Wire Line
	4800 3100 5050 3100
Wire Wire Line
	4800 3200 5050 3200
Wire Wire Line
	4800 3300 5050 3300
Wire Wire Line
	4800 3400 5050 3400
Entry Wire Line
	4950 3600 5050 3700
Entry Wire Line
	4950 3700 5050 3800
Entry Wire Line
	4950 3800 5050 3900
Entry Wire Line
	4950 3900 5050 4000
Entry Wire Line
	4950 4000 5050 4100
Entry Wire Line
	4950 4100 5050 4200
Entry Wire Line
	4950 4200 5050 4300
Entry Wire Line
	4950 4300 5050 4400
Wire Wire Line
	4650 6150 4850 6150
Wire Wire Line
	4650 6250 4850 6250
Wire Wire Line
	4650 6050 4850 6050
Wire Wire Line
	4650 5950 4850 5950
Wire Wire Line
	4650 5850 4850 5850
Wire Wire Line
	4650 6350 4850 6350
Wire Wire Line
	4650 5750 4850 5750
Entry Wire Line
	4850 5750 4950 5850
Entry Wire Line
	4850 5850 4950 5950
Entry Wire Line
	4850 5950 4950 6050
Entry Wire Line
	4850 6050 4950 6150
Entry Wire Line
	4850 6150 4950 6250
Entry Wire Line
	4850 6250 4950 6350
Entry Wire Line
	4850 6350 4950 6450
Entry Wire Line
	4850 6450 4950 6550
Entry Wire Line
	4950 5850 5050 5750
Entry Wire Line
	4950 5950 5050 5850
Entry Wire Line
	4950 6150 5050 6050
Entry Wire Line
	4950 6250 5050 6150
Entry Wire Line
	4950 6450 5050 6350
Entry Wire Line
	4950 6550 5050 6450
Entry Wire Line
	4950 6850 5050 6750
Entry Wire Line
	4950 6750 5050 6650
Entry Wire Line
	6650 6650 6750 6550
Entry Wire Line
	6650 6350 6750 6250
Entry Wire Line
	6650 6050 6750 5950
Entry Wire Line
	6650 5750 6750 5650
Wire Wire Line
	5250 1900 5500 1900
Wire Wire Line
	5250 2000 5500 2000
Wire Wire Line
	5250 2100 5500 2100
Wire Wire Line
	5250 2200 5500 2200
Wire Wire Line
	5250 2300 5500 2300
Wire Wire Line
	5250 2400 5500 2400
Wire Wire Line
	5250 2500 5500 2500
Wire Wire Line
	5250 2600 5500 2600
Wire Wire Line
	5250 2700 5500 2700
Wire Wire Line
	5250 2800 5500 2800
Wire Wire Line
	5250 2900 5500 2900
Wire Wire Line
	5250 3000 5500 3000
Wire Wire Line
	5250 3100 5500 3100
Wire Wire Line
	5250 3200 5500 3200
Wire Wire Line
	5250 3300 5500 3300
Entry Wire Line
	5250 3800 5350 3700
Entry Wire Line
	5250 3700 5350 3600
Entry Wire Line
	5250 3600 5350 3500
Entry Wire Line
	5250 3500 5350 3400
Entry Wire Line
	5150 6850 5250 6950
Wire Wire Line
	5050 5750 5450 5750
Wire Wire Line
	5050 5850 5450 5850
Wire Wire Line
	5050 6050 5450 6050
Wire Wire Line
	5050 6150 5450 6150
Wire Wire Line
	5050 6350 5450 6350
Wire Wire Line
	5050 6450 5450 6450
Wire Wire Line
	5050 6650 5450 6650
Wire Wire Line
	5050 6750 5450 6750
Entry Wire Line
	3400 5650 3500 5750
Entry Wire Line
	3400 5750 3500 5850
Entry Wire Line
	3400 5850 3500 5950
Entry Wire Line
	3400 5950 3500 6050
Entry Wire Line
	3400 6050 3500 6150
Entry Wire Line
	3400 6150 3500 6250
Entry Wire Line
	3400 6250 3500 6350
Entry Wire Line
	3400 6350 3500 6450
Wire Bus Line
	5050 5050 3400 5050
Wire Bus Line
	5250 5050 6750 5050
$Comp
L Connector_Generic:Conn_01x39 J1
U 1 1 5F4B7646
P 1200 2750
F 0 "J1" H 1280 2792 50  0000 L CNN
F 1 "BUS" H 1280 2701 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x39_P2.54mm_Vertical" H 1200 2750 50  0001 C CNN
F 3 "~" H 1200 2750 50  0001 C CNN
	1    1200 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x23 J2
U 1 1 5F4B9758
P 2450 3550
F 0 "J2" H 2530 3592 50  0000 L CNN
F 1 "BUSEXT" H 2530 3501 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x23_P2.54mm_Vertical" H 2450 3550 50  0001 C CNN
F 3 "~" H 2450 3550 50  0001 C CNN
	1    2450 3550
	1    0    0    -1  
$EndComp
Text Label 800  2350 0    50   ~ 0
A0
Text Label 800  2250 0    50   ~ 0
A1
Text Label 800  2150 0    50   ~ 0
A2
Text Label 800  2050 0    50   ~ 0
A3
Text Label 800  1950 0    50   ~ 0
A4
Text Label 800  1850 0    50   ~ 0
A5
Text Label 800  1750 0    50   ~ 0
A6
Text Label 800  1650 0    50   ~ 0
A7
Text Label 800  1550 0    50   ~ 0
A8
Text Label 800  1450 0    50   ~ 0
A9
Text Label 800  1350 0    50   ~ 0
A10
Text Label 800  1250 0    50   ~ 0
A11
Text Label 800  1150 0    50   ~ 0
A12
Text Label 800  1050 0    50   ~ 0
A13
Text Label 800  950  0    50   ~ 0
A14
Text Label 800  850  0    50   ~ 0
A15
Text Label 800  3450 0    50   ~ 0
D0
Text Label 800  3550 0    50   ~ 0
D1
Text Label 800  3650 0    50   ~ 0
D2
Text Label 800  3750 0    50   ~ 0
D3
Text Label 800  3850 0    50   ~ 0
D4
Text Label 800  3950 0    50   ~ 0
D5
Text Label 800  4050 0    50   ~ 0
D6
Text Label 800  4150 0    50   ~ 0
D7
Text Label 800  3350 0    50   ~ 0
~IORQ
Text Label 800  3250 0    50   ~ 0
~RD
Text Label 800  3150 0    50   ~ 0
~WR
Text Label 800  3050 0    50   ~ 0
~MREQ
Text Label 800  2950 0    50   ~ 0
~INT
Text Label 800  2850 0    50   ~ 0
CLK
Text Label 800  2750 0    50   ~ 0
~RST
Text Label 800  2650 0    50   ~ 0
~M1
Wire Wire Line
	800  2650 1000 2650
Wire Wire Line
	800  2750 1000 2750
Wire Wire Line
	800  2850 1000 2850
Wire Wire Line
	800  2950 1000 2950
Wire Wire Line
	800  3050 1000 3050
Wire Wire Line
	800  3150 1000 3150
Wire Wire Line
	800  3250 1000 3250
Wire Wire Line
	800  3350 1000 3350
Wire Wire Line
	800  3450 1000 3450
Wire Wire Line
	800  3550 1000 3550
Wire Wire Line
	800  3650 1000 3650
Wire Wire Line
	800  3750 1000 3750
Wire Wire Line
	800  3850 1000 3850
Wire Wire Line
	800  3950 1000 3950
Wire Wire Line
	800  4050 1000 4050
Wire Wire Line
	800  4150 1000 4150
Wire Wire Line
	800  850  1000 850 
Wire Wire Line
	800  950  1000 950 
Wire Wire Line
	800  1050 1000 1050
Wire Wire Line
	800  1150 1000 1150
Wire Wire Line
	800  1250 1000 1250
Wire Wire Line
	800  1350 1000 1350
Wire Wire Line
	800  1450 1000 1450
Wire Wire Line
	800  1550 1000 1550
Wire Wire Line
	800  1650 1000 1650
Wire Wire Line
	800  1750 1000 1750
Wire Wire Line
	800  1850 1000 1850
Wire Wire Line
	800  1950 1000 1950
Wire Wire Line
	800  2050 1000 2050
Wire Wire Line
	800  2150 1000 2150
Wire Wire Line
	800  2250 1000 2250
Wire Wire Line
	800  2350 1000 2350
Text Label 3100 3000 0    50   ~ 0
~RFSH
Text Label 3100 3200 0    50   ~ 0
~HALT
Wire Wire Line
	3100 3000 3400 3000
Wire Wire Line
	3100 3200 3400 3200
Wire Wire Line
	1000 2450 2250 2450
Wire Wire Line
	1000 2550 2250 2550
Text Label 1950 3350 0    50   ~ 0
~NMI
Text Label 1950 3250 0    50   ~ 0
~WAIT
Text Label 1950 3150 0    50   ~ 0
~BUSRQ
Text Label 1950 3050 0    50   ~ 0
~HALT
Text Label 1950 2950 0    50   ~ 0
~BUSACK~
Text Label 1950 2650 0    50   ~ 0
~RFSH
Wire Wire Line
	1950 2650 2250 2650
Wire Wire Line
	1950 2950 2250 2950
Wire Wire Line
	1950 3050 2250 3050
Wire Wire Line
	1950 3150 2250 3150
Wire Wire Line
	1950 3250 2250 3250
Wire Wire Line
	1950 3350 2250 3350
NoConn ~ 1000 4250
NoConn ~ 1000 4350
NoConn ~ 2250 4350
NoConn ~ 2250 4250
NoConn ~ 2250 4150
NoConn ~ 2250 4050
NoConn ~ 2250 3950
NoConn ~ 2250 3850
NoConn ~ 2250 3750
NoConn ~ 2250 3650
NoConn ~ 2250 3550
NoConn ~ 2250 3450
NoConn ~ 2250 2750
NoConn ~ 2250 2850
Wire Wire Line
	1000 2550 700  2550
Connection ~ 1000 2550
$Comp
L power:VCC #PWR0105
U 1 1 5F7EC7C4
P 4150 5450
F 0 "#PWR0105" H 4150 5300 50  0001 C CNN
F 1 "VCC" H 4167 5623 50  0000 C CNN
F 2 "" H 4150 5450 50  0001 C CNN
F 3 "" H 4150 5450 50  0001 C CNN
	1    4150 5450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 5F7ED2E3
P 5950 5450
F 0 "#PWR0106" H 5950 5300 50  0001 C CNN
F 1 "VCC" H 5967 5623 50  0000 C CNN
F 2 "" H 5950 5450 50  0001 C CNN
F 3 "" H 5950 5450 50  0001 C CNN
	1    5950 5450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 5F7EEB78
P 4100 1600
F 0 "#PWR0107" H 4100 1450 50  0001 C CNN
F 1 "VCC" H 4117 1773 50  0000 C CNN
F 2 "" H 4100 1600 50  0001 C CNN
F 3 "" H 4100 1600 50  0001 C CNN
	1    4100 1600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0108
U 1 1 5F7EF4D7
P 6000 1700
F 0 "#PWR0108" H 6000 1550 50  0001 C CNN
F 1 "VCC" H 6017 1873 50  0000 C CNN
F 2 "" H 6000 1700 50  0001 C CNN
F 3 "" H 6000 1700 50  0001 C CNN
	1    6000 1700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0109
U 1 1 5F7F0176
P 700 2550
F 0 "#PWR0109" H 700 2400 50  0001 C CNN
F 1 "VCC" H 717 2723 50  0000 C CNN
F 2 "" H 700 2550 50  0001 C CNN
F 3 "" H 700 2550 50  0001 C CNN
	1    700  2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2450 2800 2450
Connection ~ 2250 2450
$Comp
L power:GND #PWR0110
U 1 1 5F7FA3C0
P 2800 2450
F 0 "#PWR0110" H 2800 2200 50  0001 C CNN
F 1 "GND" H 2805 2277 50  0000 C CNN
F 2 "" H 2800 2450 50  0001 C CNN
F 3 "" H 2800 2450 50  0001 C CNN
	1    2800 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5F81F3F5
P 7550 5700
F 0 "BT1" H 7668 5796 50  0000 L CNN
F 1 "BATT" H 7668 5705 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_3001_1x12mm" V 7550 5760 50  0001 C CNN
F 3 "~" V 7550 5760 50  0001 C CNN
	1    7550 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F83C01B
P 8450 2950
F 0 "C1" H 8565 2996 50  0000 L CNN
F 1 "C" H 8565 2905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 8488 2800 50  0001 C CNN
F 3 "~" H 8450 2950 50  0001 C CNN
	1    8450 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F83CAA1
P 8800 2950
F 0 "C2" H 8915 2996 50  0000 L CNN
F 1 "C" H 8915 2905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 8838 2800 50  0001 C CNN
F 3 "~" H 8800 2950 50  0001 C CNN
	1    8800 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5F83CCBC
P 9150 2950
F 0 "C3" H 9265 2996 50  0000 L CNN
F 1 "C" H 9265 2905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 9188 2800 50  0001 C CNN
F 3 "~" H 9150 2950 50  0001 C CNN
	1    9150 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F83CF38
P 9450 2950
F 0 "C4" H 9565 2996 50  0000 L CNN
F 1 "C" H 9565 2905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 9488 2800 50  0001 C CNN
F 3 "~" H 9450 2950 50  0001 C CNN
	1    9450 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F83D132
P 9800 2950
F 0 "C5" H 9915 2996 50  0000 L CNN
F 1 "C" H 9915 2905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 9838 2800 50  0001 C CNN
F 3 "~" H 9800 2950 50  0001 C CNN
	1    9800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2800 8800 2800
Connection ~ 8800 2800
Wire Wire Line
	8800 2800 9150 2800
Connection ~ 9150 2800
Wire Wire Line
	9150 2800 9450 2800
Connection ~ 9450 2800
Wire Wire Line
	9450 2800 9800 2800
Wire Wire Line
	8450 3100 8800 3100
Connection ~ 8800 3100
Wire Wire Line
	8800 3100 9150 3100
Connection ~ 9150 3100
Wire Wire Line
	9150 3100 9450 3100
Connection ~ 9450 3100
Wire Wire Line
	9450 3100 9800 3100
$Comp
L power:VCC #PWR0111
U 1 1 5F8511D6
P 8100 2800
F 0 "#PWR0111" H 8100 2650 50  0001 C CNN
F 1 "VCC" H 8117 2973 50  0000 C CNN
F 2 "" H 8100 2800 50  0001 C CNN
F 3 "" H 8100 2800 50  0001 C CNN
	1    8100 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F851817
P 8100 3100
F 0 "#PWR0112" H 8100 2850 50  0001 C CNN
F 1 "GND" H 8105 2927 50  0000 C CNN
F 2 "" H 8100 3100 50  0001 C CNN
F 3 "" H 8100 3100 50  0001 C CNN
	1    8100 3100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS138 U5
U 1 1 5F4F0A9F
P 2050 6650
F 0 "U5" H 2150 7200 50  0000 C CNN
F 1 "74LS138" H 2250 7100 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2050 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 2050 6650 50  0001 C CNN
	1    2050 6650
	1    0    0    -1  
$EndComp
Text Label 1350 6550 0    50   ~ 0
A5
Text Label 1350 6450 0    50   ~ 0
A6
Text Label 1350 6350 0    50   ~ 0
A7
Wire Wire Line
	1350 6350 1550 6350
Wire Wire Line
	1350 6450 1550 6450
Wire Wire Line
	1350 6550 1550 6550
Text Label 1350 6850 0    50   ~ 0
A4
Wire Wire Line
	1350 6850 1550 6850
Text Label 1350 6950 0    50   ~ 0
~IORQ
Text Label 1350 7050 0    50   ~ 0
~WR
Wire Wire Line
	1350 6950 1550 6950
Wire Wire Line
	1350 7050 1550 7050
NoConn ~ 2550 6350
NoConn ~ 2550 6450
NoConn ~ 2550 6550
NoConn ~ 2550 6750
NoConn ~ 2550 6950
NoConn ~ 2550 7050
NoConn ~ 2550 6850
Wire Wire Line
	2550 6650 3650 6650
Wire Wire Line
	3650 6750 3650 7050
Wire Wire Line
	3650 7050 4150 7050
Connection ~ 4150 7050
$Comp
L power:GND #PWR0113
U 1 1 5F6A6ED1
P 2050 7350
F 0 "#PWR0113" H 2050 7100 50  0001 C CNN
F 1 "GND" H 2055 7177 50  0000 C CNN
F 2 "" H 2050 7350 50  0001 C CNN
F 3 "" H 2050 7350 50  0001 C CNN
	1    2050 7350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0114
U 1 1 5F6A74A4
P 2050 6050
F 0 "#PWR0114" H 2050 5900 50  0001 C CNN
F 1 "VCC" H 2067 6223 50  0000 C CNN
F 2 "" H 2050 6050 50  0001 C CNN
F 3 "" H 2050 6050 50  0001 C CNN
	1    2050 6050
	1    0    0    -1  
$EndComp
$Comp
L Timer_RTC:DS1302+ U6
U 1 1 5F72670E
P 9950 5650
F 0 "U6" H 10494 5696 50  0000 L CNN
F 1 "DS1302+" H 10494 5605 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 9950 5150 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1302.pdf" H 9950 5450 50  0001 C CNN
	1    9950 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5500 7550 5100
Wire Wire Line
	9850 5100 9850 5250
Wire Wire Line
	7550 5800 7550 6050
$Comp
L power:GND #PWR0115
U 1 1 5F747149
P 9950 6050
F 0 "#PWR0115" H 9950 5800 50  0001 C CNN
F 1 "GND" H 9955 5877 50  0000 C CNN
F 2 "" H 9950 6050 50  0001 C CNN
F 3 "" H 9950 6050 50  0001 C CNN
	1    9950 6050
	1    0    0    -1  
$EndComp
Connection ~ 9950 6050
$Comp
L Device:Crystal_Small Y1
U 1 1 5F74778A
P 9250 5850
F 0 "Y1" H 9250 6075 50  0000 C CNN
F 1 "XTAL" H 9250 5984 50  0000 C CNN
F 2 "Crystal:Crystal_DS26_D2.0mm_L6.0mm_Horizontal" H 9250 5850 50  0001 C CNN
F 3 "~" H 9250 5850 50  0001 C CNN
	1    9250 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5850 9450 5850
Wire Wire Line
	9150 5850 9150 5750
Wire Wire Line
	9150 5750 9450 5750
$Comp
L Transistor_FET:2N7000 Q1
U 1 1 5F7680AC
P 8500 5750
F 0 "Q1" H 8704 5796 50  0000 L CNN
F 1 "2N7000" H 8704 5705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8700 5675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 8500 5750 50  0001 L CNN
	1    8500 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5550 9450 5550
Wire Wire Line
	8600 5450 8600 5550
Connection ~ 8600 5550
Wire Wire Line
	8600 5950 8600 6050
Connection ~ 8600 6050
Wire Wire Line
	8600 6050 9950 6050
Text Label 10650 5450 2    50   ~ 0
MISO
Wire Wire Line
	10450 5450 10650 5450
Text Label 9300 5450 0    50   ~ 0
SCK
Wire Wire Line
	9300 5450 9450 5450
Wire Wire Line
	7550 6050 8600 6050
Text Label 8000 5750 0    50   ~ 0
~AUXCS1
$Comp
L power:VCC #PWR0116
U 1 1 5F85CB66
P 9950 4950
F 0 "#PWR0116" H 9950 4800 50  0001 C CNN
F 1 "VCC" H 9967 5123 50  0000 C CNN
F 2 "" H 9950 4950 50  0001 C CNN
F 3 "" H 9950 4950 50  0001 C CNN
	1    9950 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F85D055
P 8100 2950
F 0 "C6" H 8215 2996 50  0000 L CNN
F 1 "C" H 8215 2905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 8138 2800 50  0001 C CNN
F 3 "~" H 8100 2950 50  0001 C CNN
	1    8100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2800 8450 2800
Connection ~ 8450 2800
Wire Wire Line
	8100 3100 8450 3100
Connection ~ 8450 3100
Wire Wire Line
	5450 7050 5450 7350
Wire Wire Line
	5450 7350 5950 7350
Connection ~ 5950 7350
Wire Wire Line
	8000 5750 8300 5750
Text Label 1950 4550 0    50   ~ 0
~AUXCS1
Wire Wire Line
	1950 4550 2250 4550
Text Label 800  4450 0    50   ~ 0
SCK
Text Label 800  4550 0    50   ~ 0
MISO
Wire Wire Line
	800  4450 1000 4450
Wire Wire Line
	800  4550 1000 4550
NoConn ~ 1000 4650
NoConn ~ 2250 4650
NoConn ~ 2250 4450
Wire Wire Line
	7550 5100 7950 5100
$Comp
L Device:R R1
U 1 1 5F7AB3A5
P 8600 5300
F 0 "R1" H 8670 5346 50  0000 L CNN
F 1 "R" H 8670 5255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8530 5300 50  0001 C CNN
F 3 "~" H 8600 5300 50  0001 C CNN
	1    8600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5150 8600 4950
Wire Wire Line
	8600 4950 9950 4950
Wire Wire Line
	9950 4950 9950 5250
Connection ~ 9950 4950
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F5A3136
P 9800 2800
F 0 "#FLG0101" H 9800 2875 50  0001 C CNN
F 1 "PWR_FLAG" H 9800 2973 50  0000 C CNN
F 2 "" H 9800 2800 50  0001 C CNN
F 3 "~" H 9800 2800 50  0001 C CNN
	1    9800 2800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F5A3599
P 9800 3100
F 0 "#FLG0102" H 9800 3175 50  0001 C CNN
F 1 "PWR_FLAG" H 9800 3273 50  0000 C CNN
F 2 "" H 9800 3100 50  0001 C CNN
F 3 "~" H 9800 3100 50  0001 C CNN
	1    9800 3100
	-1   0    0    1   
$EndComp
Connection ~ 9800 3100
Connection ~ 9800 2800
Connection ~ 8100 2800
Connection ~ 8100 3100
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5F5F3FE0
P 7950 5100
F 0 "#FLG0103" H 7950 5175 50  0001 C CNN
F 1 "PWR_FLAG" H 7950 5273 50  0000 C CNN
F 2 "" H 7950 5100 50  0001 C CNN
F 3 "~" H 7950 5100 50  0001 C CNN
	1    7950 5100
	-1   0    0    1   
$EndComp
Connection ~ 7950 5100
Wire Wire Line
	7950 5100 9850 5100
Wire Wire Line
	2250 1500 2500 1500
Wire Wire Line
	2250 1600 2500 1600
Wire Wire Line
	2250 1400 2500 1400
Wire Wire Line
	2250 1700 2500 1700
Text Label 2500 1700 2    50   ~ 0
~INT
Text Label 2500 1400 2    50   ~ 0
~NMI
Text Label 2500 1500 2    50   ~ 0
~WAIT
Text Label 2500 1600 2    50   ~ 0
~BUSRQ
$Comp
L Device:R_Network04 RN1
U 1 1 5F602531
P 2050 1500
F 0 "RN1" V 2375 1500 50  0000 C CNN
F 1 "10K" V 2284 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP5" V 2325 1500 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2050 1500 50  0001 C CNN
	1    2050 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0117
U 1 1 5F6920EC
P 1750 1700
F 0 "#PWR0117" H 1750 1550 50  0001 C CNN
F 1 "VCC" H 1767 1873 50  0000 C CNN
F 2 "" H 1750 1700 50  0001 C CNN
F 3 "" H 1750 1700 50  0001 C CNN
	1    1750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1700 1850 1700
Wire Bus Line
	5250 3500 5250 5050
Wire Bus Line
	6750 5050 6750 6550
Wire Bus Line
	3400 5050 3400 6350
Wire Bus Line
	4950 5850 4950 6850
Wire Bus Line
	5050 3700 5050 5050
Wire Bus Line
	5150 2000 5150 6850
$EndSCHEMATC