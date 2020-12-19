EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L power:PWR_FLAG #FLG01
U 1 1 5FA20E67
P 1100 1500
F 0 "#FLG01" H 1100 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 1673 50  0000 C CNN
F 2 "" H 1100 1500 50  0001 C CNN
F 3 "~" H 1100 1500 50  0001 C CNN
	1    1100 1500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5FA2132E
P 1400 1600
F 0 "#FLG02" H 1400 1675 50  0001 C CNN
F 1 "PWR_FLAG" H 1400 1773 50  0000 C CNN
F 2 "" H 1400 1600 50  0001 C CNN
F 3 "~" H 1400 1600 50  0001 C CNN
	1    1400 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 1500 1100 1600
Wire Wire Line
	1400 1600 1400 1550
$Comp
L power:VCC #PWR02
U 1 1 5FA22DAF
P 1400 1500
F 0 "#PWR02" H 1400 1350 50  0001 C CNN
F 1 "VCC" H 1415 1673 50  0000 C CNN
F 2 "" H 1400 1500 50  0001 C CNN
F 3 "" H 1400 1500 50  0001 C CNN
	1    1400 1500
	1    0    0    -1  
$EndComp
Text GLabel 4700 4200 2    50   Input ~ 0
ROW_4
Text GLabel 4700 4300 2    50   Input ~ 0
ROW_5
Text GLabel 4700 4400 2    50   Input ~ 0
ROW_6
Text GLabel 4700 4500 2    50   Input ~ 0
ROW_7
Text GLabel 4700 5400 2    50   Input ~ 0
COL_7
Text GLabel 4700 4700 2    50   Input ~ 0
COL_0
Text GLabel 4700 5300 2    50   Input ~ 0
COL_6
Text GLabel 4700 5200 2    50   Input ~ 0
COL_5
Text GLabel 4700 5100 2    50   Input ~ 0
COL_4
Text GLabel 4700 5000 2    50   Input ~ 0
COL_3
Text GLabel 4700 4900 2    50   Input ~ 0
COL_2
Text GLabel 4700 4800 2    50   Input ~ 0
COL_1
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5FAC03DA
P 7200 2400
F 0 "J3" H 7280 2392 50  0000 L CNN
F 1 "Power" H 7280 2301 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 7200 2400 50  0001 C CNN
F 3 "~" H 7200 2400 50  0001 C CNN
	1    7200 2400
	1    0    0    -1  
$EndComp
Text GLabel 7000 2400 0    50   Input ~ 0
GND
Text GLabel 6750 2500 0    50   Input ~ 0
GND
Text GLabel 6750 2600 0    50   Input ~ 0
VCC3P3V
Wire Wire Line
	6750 2500 6850 2500
Wire Wire Line
	7000 2600 6750 2600
Wire Wire Line
	6850 2900 6850 2500
Connection ~ 6850 2500
Wire Wire Line
	6850 2500 7000 2500
Wire Wire Line
	7000 2900 6850 2900
Connection ~ 7000 2600
$Comp
L Device:CP C1
U 1 1 5FB4051F
P 7000 2750
F 0 "C1" H 7118 2796 50  0000 L CNN
F 1 "CP" H 7118 2705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7038 2600 50  0001 C CNN
F 3 "~" H 7000 2750 50  0001 C CNN
	1    7000 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 5FDBAD90
P 6650 5050
F 0 "J4" H 6758 5331 50  0000 C CNN
F 1 "Conn_01x04_Male" H 6758 5240 50  0000 C CNN
F 2 "Connector_PinSocket_2.00mm:PinSocket_1x04_P2.00mm_Vertical" H 6650 5050 50  0001 C CNN
F 3 "~" H 6650 5050 50  0001 C CNN
	1    6650 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5700 4000 6000
$Comp
L power:VCC #PWR03
U 1 1 6009E716
P 3000 3100
F 0 "#PWR03" H 3000 2950 50  0001 C CNN
F 1 "VCC" H 3015 3273 50  0000 C CNN
F 2 "" H 3000 3100 50  0001 C CNN
F 3 "" H 3000 3100 50  0001 C CNN
	1    3000 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4700 3300 4700
Wire Wire Line
	3300 3900 2750 3900
Wire Wire Line
	3300 3800 2600 3800
Text GLabel 2500 3800 0    50   Input ~ 0
SDA_MCP
Text GLabel 2500 3900 0    50   Input ~ 0
SCL_MCP
Text GLabel 4700 3800 2    50   Input ~ 0
ROW_0
Text GLabel 4700 3900 2    50   Input ~ 0
ROW_1
Text GLabel 4700 4000 2    50   Input ~ 0
ROW_2
Text GLabel 4700 4100 2    50   Input ~ 0
ROW_3
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 600A5090
P 7500 4200
F 0 "J5" H 7608 4481 50  0000 C CNN
F 1 "Conn_01x04_Male" H 7608 4390 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7500 4200 50  0001 C CNN
F 3 "~" H 7500 4200 50  0001 C CNN
	1    7500 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 600A6019
P 6650 4300
F 0 "J1" H 6758 4681 50  0000 C CNN
F 1 "Conn_01x05_Male" H 6758 4590 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 6650 4300 50  0001 C CNN
F 3 "~" H 6650 4300 50  0001 C CNN
	1    6650 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 600ACBB4
P 2600 3650
F 0 "R1" H 2670 3696 50  0000 L CNN
F 1 "R" H 2670 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2530 3650 50  0001 C CNN
F 3 "~" H 2600 3650 50  0001 C CNN
	1    2600 3650
	1    0    0    -1  
$EndComp
Connection ~ 2600 3800
Wire Wire Line
	2600 3800 2500 3800
$Comp
L Device:R R2
U 1 1 600AD4A6
P 2750 3750
F 0 "R2" H 2820 3796 50  0000 L CNN
F 1 "R" H 2820 3705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2680 3750 50  0001 C CNN
F 3 "~" H 2750 3750 50  0001 C CNN
	1    2750 3750
	1    0    0    -1  
$EndComp
Connection ~ 2750 3900
Wire Wire Line
	2750 3900 2500 3900
$Comp
L Interface_Expansion:MCP23017_SO U1
U 1 1 60095999
P 4000 4600
F 0 "U1" H 4000 5881 50  0000 C CNN
F 1 "MCP23017_SO" H 4000 5790 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 4200 3600 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 4200 3500 50  0001 L CNN
	1    4000 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3500 2600 3100
Wire Wire Line
	2600 3100 2750 3100
Wire Wire Line
	4000 3100 4000 3500
Connection ~ 3000 3100
Wire Wire Line
	3000 3100 4000 3100
Wire Wire Line
	3000 3100 3000 4700
Wire Wire Line
	2750 3600 2750 3100
Connection ~ 2750 3100
Wire Wire Line
	2750 3100 3000 3100
Text Notes 6350 4800 2    50   ~ 0
GROVE
Text Notes 6400 3800 2    50   ~ 0
M5 ATOM
Text GLabel 7250 5250 2    50   Input ~ 0
GND
Text GLabel 7250 5150 2    50   Input ~ 0
VCC5V
Text GLabel 7250 5050 2    50   Input ~ 0
SDA_GROVE
Text GLabel 7250 4950 2    50   Input ~ 0
SCL_GROVE
Text GLabel 6850 4100 2    50   Input ~ 0
VCC3P3V
Text GLabel 6850 4200 2    50   Input ~ 0
G22
Text GLabel 6850 4300 2    50   Input ~ 0
G19
Text GLabel 6850 4400 2    50   Input ~ 0
G23
Text GLabel 6850 4500 2    50   Input ~ 0
G33
Text GLabel 7700 4100 2    50   Input ~ 0
G21
Text GLabel 7700 4200 2    50   Input ~ 0
G25
Text GLabel 7700 4300 2    50   Input ~ 0
VCC5V
Text GLabel 7700 4400 2    50   Input ~ 0
GND
$Comp
L kbd:MJ-4PP-9 J6
U 1 1 6035C26D
P 6450 5675
F 0 "J6" H 6481 5951 50  0000 C CNN
F 1 "MJ-4PP-9" H 6481 5860 50  0000 C CNN
F 2 "kbd:MJ-4PP-9_1side" H 6725 5850 50  0001 C CNN
F 3 "~" H 6725 5850 50  0001 C CNN
	1    6450 5675
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5600 6950 5600
Wire Wire Line
	6650 5650 7000 5650
Wire Wire Line
	6650 5700 7050 5700
Wire Wire Line
	6650 5750 7100 5750
$Sheet
S 9325 750  1450 1600
U 6006EC30
F0 "Sheet6006EC2F" 50
F1 "file6006EC2F.sch" 50
$EndSheet
$Comp
L Jumper:SolderJumper_3_Open JP3
U 1 1 5FD9620D
P 2850 5350
F 0 "JP3" H 2850 5463 50  0000 C CNN
F 1 "I2C_A2" H 2850 5554 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 2850 5350 50  0001 C CNN
F 3 "~" H 2850 5350 50  0001 C CNN
	1    2850 5350
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP2
U 1 1 5FD97D0E
P 2300 5450
F 0 "JP2" H 2300 5563 50  0000 C CNN
F 1 "I2C_A1" H 2300 5654 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 2300 5450 50  0001 C CNN
F 3 "~" H 2300 5450 50  0001 C CNN
	1    2300 5450
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5FD9A55D
P 1800 5550
F 0 "JP1" H 1800 5663 50  0000 C CNN
F 1 "I2C_A0" H 1800 5754 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 1800 5550 50  0001 C CNN
F 3 "~" H 1800 5550 50  0001 C CNN
	1    1800 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 5200 2850 5200
Wire Wire Line
	2300 5300 3300 5300
Wire Wire Line
	3300 5400 1800 5400
Wire Wire Line
	2000 5550 2000 6000
Wire Wire Line
	2000 6000 2500 6000
Wire Wire Line
	3050 5350 3050 6000
Connection ~ 3050 6000
Wire Wire Line
	3050 6000 4000 6000
Wire Wire Line
	2500 5450 2500 6000
Connection ~ 2500 6000
Wire Wire Line
	2500 6000 3050 6000
$Comp
L power:VCC #PWR05
U 1 1 5FDA1357
P 1600 4800
F 0 "#PWR05" H 1600 4650 50  0001 C CNN
F 1 "VCC" H 1615 4973 50  0000 C CNN
F 2 "" H 1600 4800 50  0001 C CNN
F 3 "" H 1600 4800 50  0001 C CNN
	1    1600 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4875 1600 5550
Connection ~ 1600 4875
Wire Wire Line
	2100 4875 2100 5450
Wire Wire Line
	2650 5350 2650 4875
Wire Wire Line
	2650 4875 2100 4875
Connection ~ 2100 4875
Text GLabel 10650 4600 2    50   Input ~ 0
SCL_MCP
Text GLabel 10650 4700 2    50   Input ~ 0
SDA_MCP
Text GLabel 8700 4400 0    50   Input ~ 0
SCL_GROVE
Text GLabel 8700 4500 0    50   Input ~ 0
SDA_GROVE
$Comp
L power:VCC #PWR07
U 1 1 5FDAA221
P 9400 3525
F 0 "#PWR07" H 9400 3375 50  0001 C CNN
F 1 "VCC" H 9415 3698 50  0000 C CNN
F 2 "" H 9400 3525 50  0001 C CNN
F 3 "" H 9400 3525 50  0001 C CNN
	1    9400 3525
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP6
U 1 1 5FDAD142
P 10000 4300
F 0 "JP6" H 10000 4564 50  0000 C CNN
F 1 "I2C_EN" H 10000 4473 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 10000 4300 50  0001 C CNN
F 3 "~" H 10000 4300 50  0001 C CNN
	1    10000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3525 10300 3525
Wire Wire Line
	10300 3525 10300 4300
Connection ~ 9400 3525
Wire Wire Line
	8700 4400 8825 4400
Wire Wire Line
	8700 4500 8750 4500
Wire Wire Line
	8825 4400 8825 5400
Connection ~ 8825 4400
Wire Wire Line
	8825 4400 8900 4400
Wire Wire Line
	8750 4500 8750 5750
Connection ~ 8750 4500
Wire Wire Line
	8750 4500 8900 4500
Wire Wire Line
	6850 4950 7000 4950
Wire Wire Line
	6850 5050 7050 5050
Wire Wire Line
	6850 5150 7100 5150
Wire Wire Line
	6850 5250 6950 5250
Wire Wire Line
	6950 5600 6950 5250
Connection ~ 6950 5250
Wire Wire Line
	6950 5250 7250 5250
Wire Wire Line
	7100 5750 7100 5150
Connection ~ 7100 5150
Wire Wire Line
	7100 5150 7250 5150
Wire Wire Line
	7050 5700 7050 5050
Connection ~ 7050 5050
Wire Wire Line
	7050 5050 7250 5050
Wire Wire Line
	7000 5650 7000 4950
Connection ~ 7000 4950
Wire Wire Line
	7000 4950 7250 4950
Text GLabel 7000 2300 0    50   Input ~ 0
VIN
$Comp
L my_kicad_lib:PCA9515AD U2
U 1 1 5FDB0CA4
P 9300 4400
F 0 "U2" H 9300 3811 50  0000 C CNN
F 1 "PCA9515AD" H 9300 3720 50  0000 C CNN
F 2 "Package_SO:SOP-8_3.9x4.9mm_P1.27mm" H 8900 4750 50  0001 C CNN
F 3 "https://akizukidenshi.com/download/ds/nxp/PCA9515.pdf" H 9000 4850 50  0001 C CNN
	1    9300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3525 9400 3900
$Comp
L Jumper:SolderJumper_3_Open JP4
U 1 1 5FE70EF1
P 10075 4600
F 0 "JP4" H 10075 4713 50  0000 C CNN
F 1 "I2C_SCL" H 10075 4804 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 10075 4600 50  0001 C CNN
F 3 "~" H 10075 4600 50  0001 C CNN
	1    10075 4600
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP5
U 1 1 5FE739D5
P 10500 4700
F 0 "JP5" H 10500 4813 50  0000 C CNN
F 1 "I2C_SDA" H 10500 4904 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 10500 4700 50  0001 C CNN
F 3 "~" H 10500 4700 50  0001 C CNN
	1    10500 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9700 4400 10075 4400
Wire Wire Line
	9700 4500 10500 4500
Wire Wire Line
	10075 5400 10075 4800
Wire Wire Line
	8825 5400 10075 5400
Wire Wire Line
	10500 5750 10500 4900
Wire Wire Line
	8750 5750 10500 5750
Wire Wire Line
	10225 4600 10650 4600
Text GLabel 1800 1550 2    50   Input ~ 0
VCC5V
Wire Wire Line
	1800 1550 1400 1550
Connection ~ 1400 1550
Wire Wire Line
	1400 1550 1400 1500
Wire Wire Line
	2100 4875 1600 4875
Wire Wire Line
	1600 4800 1600 4875
$Comp
L power:GND #PWR06
U 1 1 5FFCB1F4
P 9300 4900
F 0 "#PWR06" H 9300 4650 50  0001 C CNN
F 1 "GND" H 9305 4727 50  0000 C CNN
F 2 "" H 9300 4900 50  0001 C CNN
F 3 "" H 9300 4900 50  0001 C CNN
	1    9300 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FFCBBCC
P 4000 6000
F 0 "#PWR04" H 4000 5750 50  0001 C CNN
F 1 "GND" H 4005 5827 50  0000 C CNN
F 2 "" H 4000 6000 50  0001 C CNN
F 3 "" H 4000 6000 50  0001 C CNN
	1    4000 6000
	1    0    0    -1  
$EndComp
Connection ~ 4000 6000
$Comp
L power:GND #PWR01
U 1 1 5FFCC19A
P 1100 1600
F 0 "#PWR01" H 1100 1350 50  0001 C CNN
F 1 "GND" H 1105 1427 50  0000 C CNN
F 2 "" H 1100 1600 50  0001 C CNN
F 3 "" H 1100 1600 50  0001 C CNN
	1    1100 1600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
