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
$Sheet
S 9750 725  1275 1300
U 605ACADC
F0 "Sheet605ACADB" 50
F1 "file605ACADB.sch" 50
$EndSheet
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
	1400 1600 1400 1500
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
L Connector_Generic:Conn_01x04 J5
U 1 1 5FAC03DA
P 6800 2400
F 0 "J5" H 6880 2392 50  0000 L CNN
F 1 "Conn_01x04" H 6880 2301 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 6800 2400 50  0001 C CNN
F 3 "~" H 6800 2400 50  0001 C CNN
	1    6800 2400
	1    0    0    -1  
$EndComp
Text GLabel 6600 2400 0    50   Input ~ 0
GND
Text GLabel 6350 2500 0    50   Input ~ 0
GND
Text GLabel 6350 2600 0    50   Input ~ 0
VCC3P3V
Wire Wire Line
	6350 2500 6450 2500
Wire Wire Line
	6600 2600 6350 2600
Wire Wire Line
	6450 2900 6450 2500
Connection ~ 6450 2500
Wire Wire Line
	6450 2500 6600 2500
Wire Wire Line
	6600 2900 6450 2900
Connection ~ 6600 2600
$Comp
L Device:CP C1
U 1 1 5FB4051F
P 6600 2750
F 0 "C1" H 6718 2796 50  0000 L CNN
F 1 "CP" H 6718 2705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 6638 2600 50  0001 C CNN
F 3 "~" H 6600 2750 50  0001 C CNN
	1    6600 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J4_GROVE1
U 1 1 5FDBAD90
P 6650 5050
F 0 "J4_GROVE1" H 6758 5331 50  0000 C CNN
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
L Connector:Conn_01x04_Male J3_PIKO_R1
U 1 1 600A5090
P 7500 4200
F 0 "J3_PIKO_R1" H 7608 4481 50  0000 C CNN
F 1 "Conn_01x04_Male" H 7608 4390 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7500 4200 50  0001 C CNN
F 3 "~" H 7500 4200 50  0001 C CNN
	1    7500 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J3_PIKO_L1
U 1 1 600A6019
P 6650 4300
F 0 "J3_PIKO_L1" H 6758 4681 50  0000 C CNN
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
L kbd:MJ-4PP-9 J2_TRRS1
U 1 1 6035C26D
P 6450 5675
F 0 "J2_TRRS1" H 6481 5951 50  0000 C CNN
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
Text Notes 6300 5950 0    50   ~ 0
https://wiki.seeedstudio.com/Grove_System/
Text GLabel 7250 4950 2    50   Input ~ 0
SCL_GROVE
Text GLabel 8675 4125 0    50   Input ~ 0
SCL_GROVE
Text GLabel 8675 4225 0    50   Input ~ 0
SDA_GROVE
Text GLabel 10750 4325 2    50   Input ~ 0
SCL_MCP
Text GLabel 10750 4425 2    50   Input ~ 0
SDA_MCP
$Comp
L Device:Jumper JP_I2C_EN1
U 1 1 5FD70B30
P 10400 4025
F 0 "JP_I2C_EN1" H 10400 4289 50  0000 C CNN
F 1 "I2C_EN" H 10400 4198 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 10400 4025 50  0001 C CNN
F 3 "~" H 10400 4025 50  0001 C CNN
	1    10400 4025
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5FD71A3C
P 9400 3350
F 0 "#PWR07" H 9400 3200 50  0001 C CNN
F 1 "VCC" H 9415 3523 50  0000 C CNN
F 2 "" H 9400 3350 50  0001 C CNN
F 3 "" H 9400 3350 50  0001 C CNN
	1    9400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 3350 10700 4025
Connection ~ 9400 3350
$Comp
L Jumper:SolderJumper_3_Open JP_A1
U 1 1 5FD7481E
P 2575 5450
F 0 "JP_A1" H 2575 5563 50  0000 C CNN
F 1 "I2C_A1" H 2575 5654 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 2575 5450 50  0001 C CNN
F 3 "~" H 2575 5450 50  0001 C CNN
	1    2575 5450
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP_A0
U 1 1 5FD751A9
P 2175 5550
F 0 "JP_A0" H 2175 5663 50  0000 C CNN
F 1 "I2C_A0" H 2175 5754 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 2175 5550 50  0001 C CNN
F 3 "~" H 2175 5550 50  0001 C CNN
	1    2175 5550
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP_A2
U 1 1 5FD73F81
P 2975 5350
F 0 "JP_A2" H 2975 5463 50  0000 C CNN
F 1 "I2C_A2" H 2975 5554 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 2975 5350 50  0001 C CNN
F 3 "~" H 2975 5350 50  0001 C CNN
	1    2975 5350
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 5FD86B2E
P 2100 5000
F 0 "#PWR05" H 2100 4850 50  0001 C CNN
F 1 "VCC" H 2115 5173 50  0000 C CNN
F 2 "" H 2100 5000 50  0001 C CNN
F 3 "" H 2100 5000 50  0001 C CNN
	1    2100 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 5200 2975 5200
Wire Wire Line
	2575 5300 3300 5300
Wire Wire Line
	2175 5400 3300 5400
Wire Wire Line
	3175 5350 3175 6000
Connection ~ 3175 6000
Wire Wire Line
	3175 6000 4000 6000
Wire Wire Line
	2775 5450 2775 6000
Connection ~ 2775 6000
Wire Wire Line
	2775 6000 3175 6000
Wire Wire Line
	2375 5550 2375 6000
Wire Wire Line
	2375 6000 2775 6000
Wire Wire Line
	2775 5000 2775 5350
Wire Wire Line
	2375 5000 2375 5450
Wire Wire Line
	2100 5000 2375 5000
Connection ~ 2375 5000
Wire Wire Line
	2375 5000 2775 5000
Wire Wire Line
	1975 5000 2100 5000
Wire Wire Line
	1975 5000 1975 5550
Connection ~ 2100 5000
Wire Wire Line
	8675 4125 8825 4125
Wire Wire Line
	8825 4125 8825 5125
Connection ~ 8825 4125
Wire Wire Line
	8825 4125 8900 4125
Wire Wire Line
	8675 4225 8750 4225
Wire Wire Line
	8750 4225 8750 5450
Connection ~ 8750 4225
Wire Wire Line
	8750 4225 8900 4225
Wire Wire Line
	6850 4950 7000 4950
Wire Wire Line
	6950 5600 6950 5250
Wire Wire Line
	6850 5250 6950 5250
Connection ~ 6950 5250
Wire Wire Line
	6950 5250 7250 5250
Wire Wire Line
	7100 5750 7100 5150
Wire Wire Line
	6850 5150 7100 5150
Connection ~ 7100 5150
Wire Wire Line
	7100 5150 7250 5150
Wire Wire Line
	6850 5050 7050 5050
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
$Comp
L my_kicad_lib:PCA9515AD U2
U 1 1 5FDB8C61
P 9300 4125
F 0 "U2" H 9300 3536 50  0000 C CNN
F 1 "PCA9515AD" H 9300 3445 50  0000 C CNN
F 2 "Package_SO:SOP-8_3.9x4.9mm_P1.27mm" H 8900 4475 50  0001 C CNN
F 3 "https://akizukidenshi.com/download/ds/nxp/PCA9515.pdf" H 9000 4575 50  0001 C CNN
	1    9300 4125
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3350 9400 3625
Text GLabel 6600 2300 0    50   Input ~ 0
VIN
$Comp
L Jumper:SolderJumper_3_Open JP_SCL1
U 1 1 5FDE0F4F
P 10000 4325
F 0 "JP_SCL1" H 10000 4438 50  0000 C CNN
F 1 "I2C_A2" H 10000 4529 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 10000 4325 50  0001 C CNN
F 3 "~" H 10000 4325 50  0001 C CNN
	1    10000 4325
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP_SDA1
U 1 1 5FDE2768
P 10425 4425
F 0 "JP_SDA1" H 10425 4538 50  0000 C CNN
F 1 "I2C_A2" H 10425 4629 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 10425 4425 50  0001 C CNN
F 3 "~" H 10425 4425 50  0001 C CNN
	1    10425 4425
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10150 4325 10750 4325
Wire Wire Line
	10575 4425 10750 4425
Wire Wire Line
	9700 4025 10100 4025
Wire Wire Line
	9700 4225 10425 4225
Wire Wire Line
	10000 5125 10000 4525
Wire Wire Line
	8825 5125 10000 5125
Wire Wire Line
	10425 5450 10425 4625
Wire Wire Line
	8750 5450 10425 5450
Wire Wire Line
	9400 3350 10700 3350
$Comp
L power:GND #PWR0101
U 1 1 5FE1FAC4
P 1100 1600
F 0 "#PWR0101" H 1100 1350 50  0001 C CNN
F 1 "GND" H 1105 1427 50  0000 C CNN
F 2 "" H 1100 1600 50  0001 C CNN
F 3 "" H 1100 1600 50  0001 C CNN
	1    1100 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FE202E5
P 4000 6000
F 0 "#PWR0102" H 4000 5750 50  0001 C CNN
F 1 "GND" H 4005 5827 50  0000 C CNN
F 2 "" H 4000 6000 50  0001 C CNN
F 3 "" H 4000 6000 50  0001 C CNN
	1    4000 6000
	1    0    0    -1  
$EndComp
Connection ~ 4000 6000
$Comp
L power:GND #PWR0103
U 1 1 5FE212CE
P 9300 4625
F 0 "#PWR0103" H 9300 4375 50  0001 C CNN
F 1 "GND" H 9305 4452 50  0000 C CNN
F 2 "" H 9300 4625 50  0001 C CNN
F 3 "" H 9300 4625 50  0001 C CNN
	1    9300 4625
	1    0    0    -1  
$EndComp
Text GLabel 1550 1500 2    50   Input ~ 0
VCC5V
Wire Wire Line
	1550 1500 1400 1500
Connection ~ 1400 1500
Wire Wire Line
	9700 4125 10000 4125
NoConn ~ 7700 4100
NoConn ~ 7700 4200
NoConn ~ 6850 4200
NoConn ~ 6850 4300
NoConn ~ 6850 4400
NoConn ~ 6850 4500
NoConn ~ 3300 4400
NoConn ~ 3300 4500
NoConn ~ 4700 4400
NoConn ~ 6625 2300
Text GLabel 4700 4500 2    50   Input ~ 0
COL_8
$EndSCHEMATC
