EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
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
U 1 1 5FDF234E
P 2300 1650
F 0 "#FLG02" H 2300 1725 50  0001 C CNN
F 1 "PWR_FLAG" H 2300 1823 50  0000 C CNN
F 2 "" H 2300 1650 50  0001 C CNN
F 3 "~" H 2300 1650 50  0001 C CNN
	1    2300 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 1500 1100 1600
Text GLabel 4700 4200 2    50   Input ~ 0
L_ROW_4
Text GLabel 4700 4300 2    50   Input ~ 0
L_ROW_5
Text GLabel 4700 5400 2    50   Input ~ 0
L_COL_7
Text GLabel 4700 4700 2    50   Input ~ 0
L_COL_0
Text GLabel 4700 5300 2    50   Input ~ 0
L_COL_6
Text GLabel 4700 5200 2    50   Input ~ 0
L_COL_5
Text GLabel 4700 5100 2    50   Input ~ 0
L_COL_4
Text GLabel 4700 5000 2    50   Input ~ 0
L_COL_3
Text GLabel 4700 4900 2    50   Input ~ 0
L_COL_2
Text GLabel 4700 4800 2    50   Input ~ 0
L_COL_1
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5FDF2350
P 7200 2400
F 0 "J4" H 7280 2392 50  0000 L CNN
F 1 "Power" H 7280 2301 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 7200 2400 50  0001 C CNN
F 3 "~" H 7200 2400 50  0001 C CNN
	1    7200 2400
	1    0    0    -1  
$EndComp
Text GLabel 7000 2400 0    50   Input ~ 0
L_GND
Text GLabel 6750 2500 0    50   Input ~ 0
L_GND
Text GLabel 4850 2600 0    50   Input ~ 0
L_VCC3P3V
Wire Wire Line
	6750 2500 6850 2500
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
U 1 1 5FDF2351
P 7000 2750
F 0 "C1" H 7118 2796 50  0000 L CNN
F 1 "CP" H 7118 2705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7038 2600 50  0001 C CNN
F 3 "~" H 7000 2750 50  0001 C CNN
	1    7000 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5FDF2352
P 6650 5050
F 0 "J3" H 6758 5331 50  0000 C CNN
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
L_SDA_MCP
Text GLabel 2500 3900 0    50   Input ~ 0
L_SCL_MCP
Text GLabel 4700 3800 2    50   Input ~ 0
L_ROW_0
Text GLabel 4700 3900 2    50   Input ~ 0
L_ROW_1
Text GLabel 4700 4000 2    50   Input ~ 0
L_ROW_2
Text GLabel 4700 4100 2    50   Input ~ 0
L_ROW_3
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 5FDF2355
P 7500 3850
F 0 "J5" H 7608 4131 50  0000 C CNN
F 1 "Conn_01x04_Male" H 7608 4040 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7500 3850 50  0001 C CNN
F 3 "~" H 7500 3850 50  0001 C CNN
	1    7500 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J2
U 1 1 5FDF2356
P 6650 3950
F 0 "J2" H 6758 4331 50  0000 C CNN
F 1 "Conn_01x05_Male" H 6758 4240 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 6650 3950 50  0001 C CNN
F 3 "~" H 6650 3950 50  0001 C CNN
	1    6650 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FDF2357
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
U 1 1 5FDF2358
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
Text Notes 6400 3650 2    50   ~ 0
M5 ATOM
Text GLabel 7250 5250 2    50   Input ~ 0
L_GND
Text GLabel 7250 5150 2    50   Input ~ 0
L_VCC5V
Text GLabel 7250 5050 2    50   Input ~ 0
L_SDA_GROVE
Text GLabel 7250 4950 2    50   Input ~ 0
L_SCL_GROVE
Text GLabel 6850 3750 2    50   Input ~ 0
L_VCC3P3V
Text GLabel 6850 3850 2    50   Input ~ 0
L_G22
Text GLabel 6850 3950 2    50   Input ~ 0
L_G19
Text GLabel 6850 4050 2    50   Input ~ 0
L_G23
Text GLabel 6850 4150 2    50   Input ~ 0
L_G33
Text GLabel 7700 3750 2    50   Input ~ 0
L_G21
Text GLabel 7700 3850 2    50   Input ~ 0
L_G25
Text GLabel 7700 3950 2    50   Input ~ 0
L_VCC5V
Text GLabel 7700 4050 2    50   Input ~ 0
L_GND
$Comp
L kbd:MJ-4PP-9 J1
U 1 1 5FDF2359
P 6450 5675
F 0 "J1" H 6481 5951 50  0000 C CNN
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
L_SCL_MCP
Text GLabel 10650 4700 2    50   Input ~ 0
L_SDA_MCP
Text GLabel 8700 4400 0    50   Input ~ 0
L_SCL_GROVE
Text GLabel 8700 4500 0    50   Input ~ 0
L_SDA_GROVE
$Comp
L Device:Jumper JP4
U 1 1 5FDAD142
P 10000 4300
F 0 "JP4" H 10000 4564 50  0000 C CNN
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
L_VIN
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
L Jumper:SolderJumper_3_Open JP5
U 1 1 5FE70EF1
P 10075 4600
F 0 "JP5" H 10075 4713 50  0000 C CNN
F 1 "I2C_SCL" H 10075 4804 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 10075 4600 50  0001 C CNN
F 3 "~" H 10075 4600 50  0001 C CNN
	1    10075 4600
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP6
U 1 1 5FE739D5
P 10500 4700
F 0 "JP6" H 10500 4813 50  0000 C CNN
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
Text GLabel 2400 1550 2    50   Input ~ 0
L_VCC5V
Wire Wire Line
	2100 4875 1600 4875
Wire Wire Line
	1600 4800 1600 4875
$Sheet
S 3025 1000 1225 1225
U 5FDF19E6
F0 "Sheet5FDF19E5" 50
F1 "file5FDF19E5.sch" 50
$EndSheet
NoConn ~ 4700 4400
NoConn ~ 4700 4500
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
$Comp
L Switch:SW_DIP_x01 SW84
U 1 1 5FEA8D0D
P 5150 2600
F 0 "SW84" H 5150 2867 50  0000 C CNN
F 1 "SW_DIP_x01" H 5150 2776 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_6.7x4.1mm_W7.62mm_P2.54mm_LowProfile" H 5150 2600 50  0001 C CNN
F 3 "~" H 5150 2600 50  0001 C CNN
	1    5150 2600
	1    0    0    -1  
$EndComp
Text GLabel 4000 3100 2    50   Input ~ 0
L_VCC5V
Text GLabel 10300 3525 2    50   Input ~ 0
L_VCC5V
Text GLabel 1100 1600 0    50   Input ~ 0
L_GND
$Comp
L Device:LED D84
U 1 1 5FE6DA3C
P 5625 3850
F 0 "D84" H 5618 4067 50  0000 C CNN
F 1 "LED" H 5618 3976 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5625 3850 50  0001 C CNN
F 3 "~" H 5625 3850 50  0001 C CNN
	1    5625 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3850 5475 3850
$Comp
L Device:LED D85
U 1 1 5FE73653
P 5625 4225
F 0 "D85" H 5618 4442 50  0000 C CNN
F 1 "LED" H 5618 4351 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5625 4225 50  0001 C CNN
F 3 "~" H 5625 4225 50  0001 C CNN
	1    5625 4225
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5FE73A2B
P 6225 4225
F 0 "R6" H 6295 4271 50  0000 L CNN
F 1 "R" H 6295 4180 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6155 4225 50  0001 C CNN
F 3 "~" H 6225 4225 50  0001 C CNN
	1    6225 4225
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 4225 5475 4225
Wire Wire Line
	5300 4350 5300 4225
Connection ~ 5300 4225
Text GLabel 1600 4800 2    50   Input ~ 0
L_VCC5V
Wire Wire Line
	2300 1650 2300 1550
Wire Wire Line
	2300 1550 2400 1550
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 5FF122B1
P 5975 3650
F 0 "J7" V 5939 3462 50  0000 R CNN
F 1 "Conn_01x03" V 5848 3462 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5975 3650 50  0001 C CNN
F 3 "~" H 5975 3650 50  0001 C CNN
	1    5975 3650
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 5FF1324D
P 5975 4425
F 0 "J8" V 5847 4605 50  0000 L CNN
F 1 "Conn_01x03" V 5938 4605 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5975 4425 50  0001 C CNN
F 3 "~" H 5975 4425 50  0001 C CNN
	1    5975 4425
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5FE6EFDE
P 6225 3850
F 0 "R5" H 6295 3896 50  0000 L CNN
F 1 "R" H 6295 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6155 3850 50  0001 C CNN
F 3 "~" H 6225 3850 50  0001 C CNN
	1    6225 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5775 3850 5875 3850
Wire Wire Line
	5775 4225 5875 4225
Wire Wire Line
	5300 3850 5300 4225
Wire Wire Line
	6375 3850 6850 3850
Wire Wire Line
	6375 4225 6850 4225
Wire Wire Line
	6850 4225 6850 4150
Wire Wire Line
	6575 2600 7000 2600
Text GLabel 6575 2600 0    50   Input ~ 0
L_VCC3P3V_T
Text GLabel 5450 2600 2    50   Input ~ 0
L_VCC3P3V_T
Text GLabel 4000 6000 2    50   Input ~ 0
L_GND
Text GLabel 9300 4900 2    50   Input ~ 0
L_GND
Text GLabel 5300 4350 2    50   Input ~ 0
L_GND
$EndSCHEMATC
