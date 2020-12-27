EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
F1 "../skb_i2c_righthand/file605ACADB.sch" 50
$EndSheet
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5FDF234D
P 1100 1500
F 0 "#FLG03" H 1100 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 1673 50  0000 C CNN
F 2 "" H 1100 1500 50  0001 C CNN
F 3 "~" H 1100 1500 50  0001 C CNN
	1    1100 1500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5FA2132E
P 1400 1600
F 0 "#FLG04" H 1400 1675 50  0001 C CNN
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
L Connector_Generic:Conn_01x04 J6
U 1 1 5FAC03DA
P 6175 6425
F 0 "J6" H 6255 6417 50  0000 L CNN
F 1 "Conn_01x04" H 6255 6326 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 6175 6425 50  0001 C CNN
F 3 "~" H 6175 6425 50  0001 C CNN
	1    6175 6425
	1    0    0    -1  
$EndComp
Text GLabel 5975 6425 0    50   Input ~ 0
GND
Text GLabel 5725 6525 0    50   Input ~ 0
GND
Text GLabel 4225 6850 0    50   Input ~ 0
VCC3P3V
Wire Wire Line
	5725 6525 5825 6525
Wire Wire Line
	5825 6925 5825 6525
Connection ~ 5825 6525
Wire Wire Line
	5825 6525 5975 6525
Wire Wire Line
	5975 6925 5825 6925
Connection ~ 5975 6625
$Comp
L Device:CP C2
U 1 1 5FB4051F
P 5975 6775
F 0 "C2" H 6093 6821 50  0000 L CNN
F 1 "CP" H 6093 6730 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 6013 6625 50  0001 C CNN
F 3 "~" H 5975 6775 50  0001 C CNN
	1    5975 6775
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
P 7500 4025
F 0 "J3_PIKO_R1" H 7608 4306 50  0000 C CNN
F 1 "Conn_01x04_Male" H 7608 4215 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7500 4025 50  0001 C CNN
F 3 "~" H 7500 4025 50  0001 C CNN
	1    7500 4025
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J3_PIKO_L1
U 1 1 600A6019
P 6650 4125
F 0 "J3_PIKO_L1" H 6758 4506 50  0000 C CNN
F 1 "Conn_01x05_Male" H 6758 4415 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 6650 4125 50  0001 C CNN
F 3 "~" H 6650 4125 50  0001 C CNN
	1    6650 4125
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 600ACBB4
P 2600 3650
F 0 "R3" H 2670 3696 50  0000 L CNN
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
L Device:R R4
U 1 1 600AD4A6
P 2750 3750
F 0 "R4" H 2820 3796 50  0000 L CNN
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
L Interface_Expansion:MCP23017_SO U3
U 1 1 5FDF2353
P 4000 4600
F 0 "U3" H 4000 5881 50  0000 C CNN
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
Text GLabel 7250 5250 2    50   Input ~ 0
GND
Text GLabel 7250 5150 2    50   Input ~ 0
VCC5V
Text GLabel 7250 5050 2    50   Input ~ 0
SDA_GROVE
Text GLabel 6850 3925 2    50   Input ~ 0
VCC3P3V
Text GLabel 6850 4025 2    50   Input ~ 0
G22
Text GLabel 6850 4125 2    50   Input ~ 0
G19
Text GLabel 6850 4225 2    50   Input ~ 0
G23
Text GLabel 6850 4325 2    50   Input ~ 0
G33
Text GLabel 7700 3925 2    50   Input ~ 0
G21
Text GLabel 7700 4025 2    50   Input ~ 0
G25
Text GLabel 7700 4125 2    50   Input ~ 0
VCC5V
Text GLabel 7700 4225 2    50   Input ~ 0
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
Wire Wire Line
	10700 3350 10700 4025
$Comp
L Jumper:SolderJumper_3_Open JP_A2
U 1 1 5FD7481E
P 2575 5450
F 0 "JP_A2" H 2575 5563 50  0000 C CNN
F 1 "I2C_A1" H 2575 5654 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 2575 5450 50  0001 C CNN
F 3 "~" H 2575 5450 50  0001 C CNN
	1    2575 5450
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP_A1
U 1 1 5FD751A9
P 2175 5550
F 0 "JP_A1" H 2175 5663 50  0000 C CNN
F 1 "I2C_A0" H 2175 5754 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 2175 5550 50  0001 C CNN
F 3 "~" H 2175 5550 50  0001 C CNN
	1    2175 5550
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP_A3
U 1 1 5FD73F81
P 2975 5350
F 0 "JP_A3" H 2975 5463 50  0000 C CNN
F 1 "I2C_A2" H 2975 5554 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 2975 5350 50  0001 C CNN
F 3 "~" H 2975 5350 50  0001 C CNN
	1    2975 5350
	-1   0    0    1   
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
Connection ~ 2375 5000
Wire Wire Line
	2375 5000 2775 5000
Wire Wire Line
	1975 5000 1975 5550
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
L my_kicad_lib:PCA9515AD U4
U 1 1 5FDB8C61
P 9300 4125
F 0 "U4" H 9300 3536 50  0000 C CNN
F 1 "PCA9515AD" H 9300 3445 50  0000 C CNN
F 2 "Package_SO:SOP-8_3.9x4.9mm_P1.27mm" H 8900 4475 50  0001 C CNN
F 3 "https://akizukidenshi.com/download/ds/nxp/PCA9515.pdf" H 9000 4575 50  0001 C CNN
	1    9300 4125
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3350 9400 3625
Text GLabel 5975 6325 0    50   Input ~ 0
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
L power:GND #PWR08
U 1 1 5FE1FAC4
P 1100 1600
F 0 "#PWR08" H 1100 1350 50  0001 C CNN
F 1 "GND" H 1105 1427 50  0000 C CNN
F 2 "" H 1100 1600 50  0001 C CNN
F 3 "" H 1100 1600 50  0001 C CNN
	1    1100 1600
	1    0    0    -1  
$EndComp
Text GLabel 2675 1500 2    50   Input ~ 0
VCC5V
Wire Wire Line
	9700 4125 10000 4125
NoConn ~ 7700 3925
NoConn ~ 7700 4025
NoConn ~ 6850 4225
NoConn ~ 3300 4400
NoConn ~ 3300 4500
NoConn ~ 4700 4400
NoConn ~ 6000 6325
Text GLabel 4700 4500 2    50   Input ~ 0
COL_8
$Comp
L Switch:SW_DIP_x01 SW85
U 1 1 5FE62B10
P 4525 6850
F 0 "SW85" H 4525 7117 50  0000 C CNN
F 1 "SW_DIP_x01" H 4525 7026 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_6.7x4.1mm_W7.62mm_P2.54mm_LowProfile" H 4525 6850 50  0001 C CNN
F 3 "~" H 4525 6850 50  0001 C CNN
	1    4525 6850
	1    0    0    -1  
$EndComp
Text GLabel 4000 3100 2    50   Input ~ 0
VCC5V
Text GLabel 10700 3350 2    50   Input ~ 0
VCC5V
Wire Wire Line
	5900 800  6600 800 
Wire Wire Line
	5900 1000 6600 1000
Wire Wire Line
	5900 900  6600 900 
Wire Wire Line
	5900 1100 6600 1100
$Comp
L Connector:Conn_01x05_Male J_PIKO_1
U 1 1 5FE98751
P 4900 1750
F 0 "J_PIKO_1" H 5008 2131 50  0000 C CNN
F 1 "Conn_01x05_Male" H 5008 2040 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4900 1750 50  0001 C CNN
F 3 "~" H 4900 1750 50  0001 C CNN
	1    4900 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J_PIKO1
U 1 1 5FE98757
P 5700 1650
F 0 "J_PIKO1" H 5808 1931 50  0000 C CNN
F 1 "Conn_01x04_Male" H 5808 1840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5700 1650 50  0001 C CNN
F 3 "~" H 5700 1650 50  0001 C CNN
	1    5700 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J_PIKO_4E2
U 1 1 5FE9875D
P 6400 1650
F 0 "J_PIKO_4E2" H 6508 1931 50  0000 C CNN
F 1 "Conn_01x04_Male" H 6508 1840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6400 1650 50  0001 C CNN
F 3 "~" H 6400 1650 50  0001 C CNN
	1    6400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1550 6600 1550
Wire Wire Line
	5900 1750 6600 1750
Wire Wire Line
	5900 1650 6600 1650
Wire Wire Line
	5900 1850 6600 1850
$Comp
L Connector:Conn_01x05_Male J_PIKO_2
U 1 1 5FE9B6FF
P 4900 2400
F 0 "J_PIKO_2" H 5008 2781 50  0000 C CNN
F 1 "Conn_01x05_Male" H 5008 2690 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4900 2400 50  0001 C CNN
F 3 "~" H 4900 2400 50  0001 C CNN
	1    4900 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J_PIKO2
U 1 1 5FE9B705
P 5700 2300
F 0 "J_PIKO2" H 5808 2581 50  0000 C CNN
F 1 "Conn_01x04_Male" H 5808 2490 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5700 2300 50  0001 C CNN
F 3 "~" H 5700 2300 50  0001 C CNN
	1    5700 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J_PIKO_4E3
U 1 1 5FE9B70B
P 6400 2300
F 0 "J_PIKO_4E3" H 6508 2581 50  0000 C CNN
F 1 "Conn_01x04_Male" H 6508 2490 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6400 2300 50  0001 C CNN
F 3 "~" H 6400 2300 50  0001 C CNN
	1    6400 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2200 6600 2200
Wire Wire Line
	5900 2400 6600 2400
Wire Wire Line
	5900 2300 6600 2300
Wire Wire Line
	5900 2500 6600 2500
$Comp
L Connector:Conn_01x05_Male J_PIKO_3
U 1 1 5FE9EAC8
P 4900 3100
F 0 "J_PIKO_3" H 5008 3481 50  0000 C CNN
F 1 "Conn_01x05_Male" H 5008 3390 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4900 3100 50  0001 C CNN
F 3 "~" H 4900 3100 50  0001 C CNN
	1    4900 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J_PIKO3
U 1 1 5FE9EACE
P 5700 3000
F 0 "J_PIKO3" H 5808 3281 50  0000 C CNN
F 1 "Conn_01x04_Male" H 5808 3190 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5700 3000 50  0001 C CNN
F 3 "~" H 5700 3000 50  0001 C CNN
	1    5700 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J_PIKO_4E4
U 1 1 5FE9EAD4
P 6400 3000
F 0 "J_PIKO_4E4" H 6508 3281 50  0000 C CNN
F 1 "Conn_01x04_Male" H 6508 3190 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6400 3000 50  0001 C CNN
F 3 "~" H 6400 3000 50  0001 C CNN
	1    6400 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2900 6600 2900
Wire Wire Line
	5900 3100 6600 3100
Wire Wire Line
	5900 3000 6600 3000
Wire Wire Line
	5900 3200 6600 3200
$Comp
L Connector:Conn_01x04_Male J_PIKO_4E1
U 1 1 5FE668DD
P 6400 900
F 0 "J_PIKO_4E1" H 6508 1181 50  0000 C CNN
F 1 "Conn_01x04_Male" H 6508 1090 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6400 900 50  0001 C CNN
F 3 "~" H 6400 900 50  0001 C CNN
	1    6400 900 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J_PIKO4
U 1 1 5FE668D7
P 5700 900
F 0 "J_PIKO4" H 5808 1181 50  0000 C CNN
F 1 "Conn_01x04_Male" H 5808 1090 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5700 900 50  0001 C CNN
F 3 "~" H 5700 900 50  0001 C CNN
	1    5700 900 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J_PIKO_5
U 1 1 5FE668D1
P 4900 1000
F 0 "J_PIKO_5" H 5008 1381 50  0000 C CNN
F 1 "Conn_01x05_Male" H 5008 1290 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4900 1000 50  0001 C CNN
F 3 "~" H 4900 1000 50  0001 C CNN
	1    4900 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 5FEFFE32
P 6100 3825
F 0 "J9" V 6064 3637 50  0000 R CNN
F 1 "Conn_01x03" V 5973 3637 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6100 3825 50  0001 C CNN
F 3 "~" H 6100 3825 50  0001 C CNN
	1    6100 3825
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J10
U 1 1 5FF011B0
P 6100 4525
F 0 "J10" V 5972 4705 50  0000 L CNN
F 1 "Conn_01x03" V 6063 4705 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6100 4525 50  0001 C CNN
F 3 "~" H 6100 4525 50  0001 C CNN
	1    6100 4525
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 4025 6200 4025
Wire Wire Line
	6200 4325 6850 4325
Wire Wire Line
	6200 4025 6100 4025
Connection ~ 6200 4025
Wire Wire Line
	6100 4025 6000 4025
Connection ~ 6100 4025
Wire Wire Line
	6000 4325 6100 4325
Wire Wire Line
	6100 4325 6200 4325
Connection ~ 6100 4325
Connection ~ 6200 4325
NoConn ~ 6850 4125
Wire Wire Line
	5500 6625 5975 6625
Wire Wire Line
	1400 1500 2675 1500
Text GLabel 5500 6625 0    50   Input ~ 0
VCC3P3V_T
Text GLabel 4825 6850 2    50   Input ~ 0
VCC3P3V_T
Wire Wire Line
	1975 5000 2375 5000
Text GLabel 1975 5000 0    50   Input ~ 0
VCC5V
$Comp
L power:GND #PWR013
U 1 1 5FE212CE
P 9300 4625
F 0 "#PWR013" H 9300 4375 50  0001 C CNN
F 1 "GND" H 9305 4452 50  0000 C CNN
F 2 "" H 9300 4625 50  0001 C CNN
F 3 "" H 9300 4625 50  0001 C CNN
	1    9300 4625
	1    0    0    -1  
$EndComp
Connection ~ 4000 6000
$Comp
L power:GND #PWR012
U 1 1 5FE202E5
P 4000 6000
F 0 "#PWR012" H 4000 5750 50  0001 C CNN
F 1 "GND" H 4005 5827 50  0000 C CNN
F 2 "" H 4000 6000 50  0001 C CNN
F 3 "" H 4000 6000 50  0001 C CNN
	1    4000 6000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
