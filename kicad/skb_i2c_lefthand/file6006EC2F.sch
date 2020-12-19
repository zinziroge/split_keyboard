EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L kbd:SW_PUSH SW?
U 1 1 600814B9
P 2900 1450
AR Path="/600814B9" Ref="SW?"  Part="1" 
AR Path="/6006EC30/600814B9" Ref="SW9"  Part="1" 
F 0 "SW9" H 2900 1705 50  0000 C CNN
F 1 "SW_PUSH" H 2900 1614 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 2900 1450 50  0001 C CNN
F 3 "" H 2900 1450 50  0000 C CNN
	1    2900 1450
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 600814BF
P 1900 1450
AR Path="/600814BF" Ref="SW?"  Part="1" 
AR Path="/6006EC30/600814BF" Ref="SW1"  Part="1" 
F 0 "SW1" H 1900 1705 50  0000 C CNN
F 1 "SW_PUSH" H 1900 1614 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 1900 1450 50  0001 C CNN
F 3 "" H 1900 1450 50  0000 C CNN
	1    1900 1450
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 600814C5
P 1900 2100
AR Path="/600814C5" Ref="SW?"  Part="1" 
AR Path="/6006EC30/600814C5" Ref="SW2"  Part="1" 
F 0 "SW2" H 1900 2355 50  0000 C CNN
F 1 "SW_PUSH" H 1900 2264 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 1900 2100 50  0001 C CNN
F 3 "" H 1900 2100 50  0000 C CNN
	1    1900 2100
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 600814CB
P 2900 2100
AR Path="/600814CB" Ref="SW?"  Part="1" 
AR Path="/6006EC30/600814CB" Ref="SW10"  Part="1" 
F 0 "SW10" H 2900 2355 50  0000 C CNN
F 1 "SW_PUSH" H 2900 2264 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 2900 2100 50  0001 C CNN
F 3 "" H 2900 2100 50  0000 C CNN
	1    2900 2100
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 600814D1
P 2200 1600
AR Path="/600814D1" Ref="D?"  Part="1" 
AR Path="/6006EC30/600814D1" Ref="D1"  Part="1" 
F 0 "D1" V 2246 1520 50  0000 R CNN
F 1 "1N4148" V 2155 1520 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2200 1425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2200 1600 50  0001 C CNN
	1    2200 1600
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 600814D7
P 3200 1600
AR Path="/600814D7" Ref="D?"  Part="1" 
AR Path="/6006EC30/600814D7" Ref="D9"  Part="1" 
F 0 "D9" V 3246 1520 50  0000 R CNN
F 1 "1N4148" V 3155 1520 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3200 1425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3200 1600 50  0001 C CNN
	1    3200 1600
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 600814DD
P 2200 2250
AR Path="/600814DD" Ref="D?"  Part="1" 
AR Path="/6006EC30/600814DD" Ref="D2"  Part="1" 
F 0 "D2" V 2246 2170 50  0000 R CNN
F 1 "1N4148" V 2155 2170 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2200 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2200 2250 50  0001 C CNN
	1    2200 2250
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 600814E3
P 3200 2250
AR Path="/600814E3" Ref="D?"  Part="1" 
AR Path="/6006EC30/600814E3" Ref="D10"  Part="1" 
F 0 "D10" V 3246 2170 50  0000 R CNN
F 1 "1N4148" V 3155 2170 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3200 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3200 2250 50  0001 C CNN
	1    3200 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 1750 2200 1750
Connection ~ 2200 1750
Wire Wire Line
	2200 1750 3200 1750
Connection ~ 3200 1750
Connection ~ 1600 1450
Connection ~ 1600 2100
Wire Wire Line
	1100 2400 2200 2400
Connection ~ 2200 2400
Wire Wire Line
	2200 2400 3200 2400
Connection ~ 3200 2400
Connection ~ 2600 1450
Connection ~ 2600 2100
Text GLabel 1100 1750 0    50   Input ~ 0
ROW_0
Text GLabel 1100 2400 0    50   Input ~ 0
ROW_1
Text GLabel 1600 1050 1    50   Input ~ 0
COL_0
Text GLabel 2600 1050 1    50   Input ~ 0
COL_1
$Comp
L kbd:SW_PUSH SW?
U 1 1 600814F9
P 3900 1450
AR Path="/600814F9" Ref="SW?"  Part="1" 
AR Path="/6006EC30/600814F9" Ref="SW17"  Part="1" 
F 0 "SW17" H 3900 1705 50  0000 C CNN
F 1 "SW_PUSH" H 3900 1614 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 3900 1450 50  0001 C CNN
F 3 "" H 3900 1450 50  0000 C CNN
	1    3900 1450
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 600814FF
P 4900 1450
AR Path="/600814FF" Ref="SW?"  Part="1" 
AR Path="/6006EC30/600814FF" Ref="SW25"  Part="1" 
F 0 "SW25" H 4900 1705 50  0000 C CNN
F 1 "SW_PUSH" H 4900 1614 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 4900 1450 50  0001 C CNN
F 3 "" H 4900 1450 50  0000 C CNN
	1    4900 1450
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 60081505
P 5900 1450
AR Path="/60081505" Ref="SW?"  Part="1" 
AR Path="/6006EC30/60081505" Ref="SW33"  Part="1" 
F 0 "SW33" H 5900 1705 50  0000 C CNN
F 1 "SW_PUSH" H 5900 1614 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 5900 1450 50  0001 C CNN
F 3 "" H 5900 1450 50  0000 C CNN
	1    5900 1450
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 6008150B
P 6900 1450
AR Path="/6008150B" Ref="SW?"  Part="1" 
AR Path="/6006EC30/6008150B" Ref="SW41"  Part="1" 
F 0 "SW41" H 6900 1705 50  0000 C CNN
F 1 "SW_PUSH" H 6900 1614 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 6900 1450 50  0001 C CNN
F 3 "" H 6900 1450 50  0000 C CNN
	1    6900 1450
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 60081517
P 1900 2750
AR Path="/60081517" Ref="SW?"  Part="1" 
AR Path="/6006EC30/60081517" Ref="SW3"  Part="1" 
F 0 "SW3" H 1900 3005 50  0000 C CNN
F 1 "SW_PUSH" H 1900 2914 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 1900 2750 50  0001 C CNN
F 3 "" H 1900 2750 50  0000 C CNN
	1    1900 2750
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 6008151D
P 1900 3400
AR Path="/6008151D" Ref="SW?"  Part="1" 
AR Path="/6006EC30/6008151D" Ref="SW4"  Part="1" 
F 0 "SW4" H 1900 3655 50  0000 C CNN
F 1 "SW_PUSH" H 1900 3564 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 1900 3400 50  0001 C CNN
F 3 "" H 1900 3400 50  0000 C CNN
	1    1900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1750 4200 1750
$Comp
L Diode:1N4148 D?
U 1 1 60081524
P 2200 2900
AR Path="/60081524" Ref="D?"  Part="1" 
AR Path="/6006EC30/60081524" Ref="D3"  Part="1" 
F 0 "D3" V 2246 2820 50  0000 R CNN
F 1 "1N4148" V 2155 2820 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2200 2725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2200 2900 50  0001 C CNN
	1    2200 2900
	0    -1   -1   0   
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 6008152A
P 2900 2750
AR Path="/6008152A" Ref="SW?"  Part="1" 
AR Path="/6006EC30/6008152A" Ref="SW11"  Part="1" 
F 0 "SW11" H 2900 3005 50  0000 C CNN
F 1 "SW_PUSH" H 2900 2914 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 2900 2750 50  0001 C CNN
F 3 "" H 2900 2750 50  0000 C CNN
	1    2900 2750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 60081530
P 3200 2900
AR Path="/60081530" Ref="D?"  Part="1" 
AR Path="/6006EC30/60081530" Ref="D11"  Part="1" 
F 0 "D11" V 3246 2820 50  0000 R CNN
F 1 "1N4148" V 3155 2820 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3200 2725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3200 2900 50  0001 C CNN
	1    3200 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 3050 3200 3050
Connection ~ 3200 3050
Connection ~ 2600 2750
$Comp
L kbd:SW_PUSH SW?
U 1 1 60081539
P 3900 2750
AR Path="/60081539" Ref="SW?"  Part="1" 
AR Path="/6006EC30/60081539" Ref="SW19"  Part="1" 
F 0 "SW19" H 3900 3005 50  0000 C CNN
F 1 "SW_PUSH" H 3900 2914 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 3900 2750 50  0001 C CNN
F 3 "" H 3900 2750 50  0000 C CNN
	1    3900 2750
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 6008153F
P 4900 2750
AR Path="/6008153F" Ref="SW?"  Part="1" 
AR Path="/6006EC30/6008153F" Ref="SW27"  Part="1" 
F 0 "SW27" H 4900 3005 50  0000 C CNN
F 1 "SW_PUSH" H 4900 2914 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 4900 2750 50  0001 C CNN
F 3 "" H 4900 2750 50  0000 C CNN
	1    4900 2750
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 60081545
P 5900 2750
AR Path="/60081545" Ref="SW?"  Part="1" 
AR Path="/6006EC30/60081545" Ref="SW35"  Part="1" 
F 0 "SW35" H 5900 3005 50  0000 C CNN
F 1 "SW_PUSH" H 5900 2914 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 5900 2750 50  0001 C CNN
F 3 "" H 5900 2750 50  0000 C CNN
	1    5900 2750
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 6008154B
P 6900 2750
AR Path="/6008154B" Ref="SW?"  Part="1" 
AR Path="/6006EC30/6008154B" Ref="SW43"  Part="1" 
F 0 "SW43" H 6900 3005 50  0000 C CNN
F 1 "SW_PUSH" H 6900 2914 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 6900 2750 50  0001 C CNN
F 3 "" H 6900 2750 50  0000 C CNN
	1    6900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3050 4200 3050
$Comp
L kbd:SW_PUSH SW?
U 1 1 60081558
P 2900 3400
AR Path="/60081558" Ref="SW?"  Part="1" 
AR Path="/6006EC30/60081558" Ref="SW12"  Part="1" 
F 0 "SW12" H 2900 3655 50  0000 C CNN
F 1 "SW_PUSH" H 2900 3564 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 2900 3400 50  0001 C CNN
F 3 "" H 2900 3400 50  0000 C CNN
	1    2900 3400
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 6008155E
P 3200 3550
AR Path="/6008155E" Ref="D?"  Part="1" 
AR Path="/6006EC30/6008155E" Ref="D12"  Part="1" 
F 0 "D12" V 3246 3470 50  0000 R CNN
F 1 "1N4148" V 3155 3470 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3200 3375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3200 3550 50  0001 C CNN
	1    3200 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 3700 3200 3700
Connection ~ 3200 3700
Connection ~ 2600 3400
$Comp
L kbd:SW_PUSH SW?
U 1 1 60081567
P 3900 3400
AR Path="/60081567" Ref="SW?"  Part="1" 
AR Path="/6006EC30/60081567" Ref="SW20"  Part="1" 
F 0 "SW20" H 3900 3655 50  0000 C CNN
F 1 "SW_PUSH" H 3900 3564 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 3900 3400 50  0001 C CNN
F 3 "" H 3900 3400 50  0000 C CNN
	1    3900 3400
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 6008156D
P 4900 3400
AR Path="/6008156D" Ref="SW?"  Part="1" 
AR Path="/6006EC30/6008156D" Ref="SW28"  Part="1" 
F 0 "SW28" H 4900 3655 50  0000 C CNN
F 1 "SW_PUSH" H 4900 3564 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 4900 3400 50  0001 C CNN
F 3 "" H 4900 3400 50  0000 C CNN
	1    4900 3400
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 60081573
P 5900 3400
AR Path="/60081573" Ref="SW?"  Part="1" 
AR Path="/6006EC30/60081573" Ref="SW36"  Part="1" 
F 0 "SW36" H 5900 3655 50  0000 C CNN
F 1 "SW_PUSH" H 5900 3564 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 5900 3400 50  0001 C CNN
F 3 "" H 5900 3400 50  0000 C CNN
	1    5900 3400
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 60081579
P 6900 3400
AR Path="/60081579" Ref="SW?"  Part="1" 
AR Path="/6006EC30/60081579" Ref="SW44"  Part="1" 
F 0 "SW44" H 6900 3655 50  0000 C CNN
F 1 "SW_PUSH" H 6900 3564 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 6900 3400 50  0001 C CNN
F 3 "" H 6900 3400 50  0000 C CNN
	1    6900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3700 4200 3700
$Comp
L kbd:SW_PUSH SW?
U 1 1 60081586
P 3900 2100
AR Path="/60081586" Ref="SW?"  Part="1" 
AR Path="/6006EC30/60081586" Ref="SW18"  Part="1" 
F 0 "SW18" H 3900 2355 50  0000 C CNN
F 1 "SW_PUSH" H 3900 2264 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 3900 2100 50  0001 C CNN
F 3 "" H 3900 2100 50  0000 C CNN
	1    3900 2100
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 6008158C
P 4200 2250
AR Path="/6008158C" Ref="D?"  Part="1" 
AR Path="/6006EC30/6008158C" Ref="D18"  Part="1" 
F 0 "D18" V 4246 2170 50  0000 R CNN
F 1 "1N4148" V 4155 2170 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4200 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4200 2250 50  0001 C CNN
	1    4200 2250
	0    -1   -1   0   
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 60081592
P 4900 2100
AR Path="/60081592" Ref="SW?"  Part="1" 
AR Path="/6006EC30/60081592" Ref="SW26"  Part="1" 
F 0 "SW26" H 4900 2355 50  0000 C CNN
F 1 "SW_PUSH" H 4900 2264 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 4900 2100 50  0001 C CNN
F 3 "" H 4900 2100 50  0000 C CNN
	1    4900 2100
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 60081598
P 5900 2100
AR Path="/60081598" Ref="SW?"  Part="1" 
AR Path="/6006EC30/60081598" Ref="SW34"  Part="1" 
F 0 "SW34" H 5900 2355 50  0000 C CNN
F 1 "SW_PUSH" H 5900 2264 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 5900 2100 50  0001 C CNN
F 3 "" H 5900 2100 50  0000 C CNN
	1    5900 2100
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 6008159E
P 6900 2100
AR Path="/6008159E" Ref="SW?"  Part="1" 
AR Path="/6006EC30/6008159E" Ref="SW42"  Part="1" 
F 0 "SW42" H 6900 2355 50  0000 C CNN
F 1 "SW_PUSH" H 6900 2264 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 6900 2100 50  0001 C CNN
F 3 "" H 6900 2100 50  0000 C CNN
	1    6900 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2400 4200 2400
$Comp
L Diode:1N4148 D?
U 1 1 600815AB
P 4200 1600
AR Path="/600815AB" Ref="D?"  Part="1" 
AR Path="/6006EC30/600815AB" Ref="D17"  Part="1" 
F 0 "D17" V 4246 1520 50  0000 R CNN
F 1 "1N4148" V 4155 1520 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4200 1425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4200 1600 50  0001 C CNN
	1    4200 1600
	0    -1   -1   0   
$EndComp
Connection ~ 4200 1750
Wire Wire Line
	4200 1750 5200 1750
$Comp
L Diode:1N4148 D?
U 1 1 600815B3
P 5200 1600
AR Path="/600815B3" Ref="D?"  Part="1" 
AR Path="/6006EC30/600815B3" Ref="D25"  Part="1" 
F 0 "D25" V 5246 1520 50  0000 R CNN
F 1 "1N4148" V 5155 1520 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5200 1425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5200 1600 50  0001 C CNN
	1    5200 1600
	0    -1   -1   0   
$EndComp
Connection ~ 5200 1750
Wire Wire Line
	5200 1750 6200 1750
$Comp
L Diode:1N4148 D?
U 1 1 600815BB
P 6200 1600
AR Path="/600815BB" Ref="D?"  Part="1" 
AR Path="/6006EC30/600815BB" Ref="D33"  Part="1" 
F 0 "D33" V 6246 1520 50  0000 R CNN
F 1 "1N4148" V 6155 1520 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6200 1425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6200 1600 50  0001 C CNN
	1    6200 1600
	0    -1   -1   0   
$EndComp
Connection ~ 6200 1750
Wire Wire Line
	6200 1750 7200 1750
$Comp
L Diode:1N4148 D?
U 1 1 600815C3
P 7200 1600
AR Path="/600815C3" Ref="D?"  Part="1" 
AR Path="/6006EC30/600815C3" Ref="D41"  Part="1" 
F 0 "D41" V 7246 1520 50  0000 R CNN
F 1 "1N4148" V 7155 1520 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7200 1425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7200 1600 50  0001 C CNN
	1    7200 1600
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 600815D8
P 7200 2250
AR Path="/600815D8" Ref="D?"  Part="1" 
AR Path="/6006EC30/600815D8" Ref="D42"  Part="1" 
F 0 "D42" V 7246 2170 50  0000 R CNN
F 1 "1N4148" V 7155 2170 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7200 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7200 2250 50  0001 C CNN
	1    7200 2250
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 600815DE
P 6200 2250
AR Path="/600815DE" Ref="D?"  Part="1" 
AR Path="/6006EC30/600815DE" Ref="D34"  Part="1" 
F 0 "D34" V 6246 2170 50  0000 R CNN
F 1 "1N4148" V 6155 2170 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6200 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6200 2250 50  0001 C CNN
	1    6200 2250
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 600815E4
P 5200 2250
AR Path="/600815E4" Ref="D?"  Part="1" 
AR Path="/6006EC30/600815E4" Ref="D26"  Part="1" 
F 0 "D26" V 5246 2170 50  0000 R CNN
F 1 "1N4148" V 5155 2170 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5200 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5200 2250 50  0001 C CNN
	1    5200 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 2400 5200 2400
Connection ~ 4200 2400
Connection ~ 5200 2400
Wire Wire Line
	5200 2400 6200 2400
Connection ~ 6200 2400
Wire Wire Line
	6200 2400 7200 2400
Connection ~ 3600 2750
Connection ~ 3600 3400
Connection ~ 3600 1450
Connection ~ 4600 1450
Connection ~ 4600 2100
Connection ~ 4600 2750
Connection ~ 4600 3400
Connection ~ 5600 1450
Connection ~ 5600 2100
Connection ~ 5600 2750
Wire Wire Line
	5600 2750 5600 2100
Connection ~ 5600 3400
Connection ~ 6600 1450
Connection ~ 6600 2100
Connection ~ 6600 2750
Connection ~ 6600 3400
$Comp
L Diode:1N4148 D?
U 1 1 60081608
P 2200 3550
AR Path="/60081608" Ref="D?"  Part="1" 
AR Path="/6006EC30/60081608" Ref="D4"  Part="1" 
F 0 "D4" V 2246 3470 50  0000 R CNN
F 1 "1N4148" V 2155 3470 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2200 3375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2200 3550 50  0001 C CNN
	1    2200 3550
	0    -1   -1   0   
$EndComp
Connection ~ 1600 2750
Connection ~ 1600 3400
Wire Wire Line
	2200 3700 1100 3700
Connection ~ 2200 3700
Wire Wire Line
	2200 3050 1100 3050
Connection ~ 2200 3050
Text GLabel 1100 3050 0    50   Input ~ 0
ROW_2
Text GLabel 1100 3700 0    50   Input ~ 0
ROW_3
$Comp
L Diode:1N4148 D?
U 1 1 60081616
P 4200 2900
AR Path="/60081616" Ref="D?"  Part="1" 
AR Path="/6006EC30/60081616" Ref="D19"  Part="1" 
F 0 "D19" V 4246 2820 50  0000 R CNN
F 1 "1N4148" V 4155 2820 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4200 2725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4200 2900 50  0001 C CNN
	1    4200 2900
	0    -1   -1   0   
$EndComp
Connection ~ 4200 3050
Wire Wire Line
	4200 3050 5200 3050
$Comp
L Diode:1N4148 D?
U 1 1 6008161E
P 5200 2900
AR Path="/6008161E" Ref="D?"  Part="1" 
AR Path="/6006EC30/6008161E" Ref="D27"  Part="1" 
F 0 "D27" V 5246 2820 50  0000 R CNN
F 1 "1N4148" V 5155 2820 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5200 2725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5200 2900 50  0001 C CNN
	1    5200 2900
	0    -1   -1   0   
$EndComp
Connection ~ 5200 3050
Wire Wire Line
	5200 3050 6200 3050
$Comp
L Diode:1N4148 D?
U 1 1 60081626
P 6200 2900
AR Path="/60081626" Ref="D?"  Part="1" 
AR Path="/6006EC30/60081626" Ref="D35"  Part="1" 
F 0 "D35" V 6246 2820 50  0000 R CNN
F 1 "1N4148" V 6155 2820 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6200 2725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6200 2900 50  0001 C CNN
	1    6200 2900
	0    -1   -1   0   
$EndComp
Connection ~ 6200 3050
Wire Wire Line
	6200 3050 7200 3050
$Comp
L Diode:1N4148 D?
U 1 1 6008162E
P 7200 2900
AR Path="/6008162E" Ref="D?"  Part="1" 
AR Path="/6006EC30/6008162E" Ref="D43"  Part="1" 
F 0 "D43" V 7246 2820 50  0000 R CNN
F 1 "1N4148" V 7155 2820 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7200 2725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7200 2900 50  0001 C CNN
	1    7200 2900
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 60081644
P 7200 3550
AR Path="/60081644" Ref="D?"  Part="1" 
AR Path="/6006EC30/60081644" Ref="D44"  Part="1" 
F 0 "D44" V 7246 3470 50  0000 R CNN
F 1 "1N4148" V 7155 3470 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7200 3375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7200 3550 50  0001 C CNN
	1    7200 3550
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 6008164C
P 6200 3550
AR Path="/6008164C" Ref="D?"  Part="1" 
AR Path="/6006EC30/6008164C" Ref="D36"  Part="1" 
F 0 "D36" V 6246 3470 50  0000 R CNN
F 1 "1N4148" V 6155 3470 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6200 3375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6200 3550 50  0001 C CNN
	1    6200 3550
	0    -1   -1   0   
$EndComp
Connection ~ 6200 3700
Wire Wire Line
	6200 3700 7200 3700
$Comp
L Diode:1N4148 D?
U 1 1 60081654
P 5200 3550
AR Path="/60081654" Ref="D?"  Part="1" 
AR Path="/6006EC30/60081654" Ref="D28"  Part="1" 
F 0 "D28" V 5246 3470 50  0000 R CNN
F 1 "1N4148" V 5155 3470 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5200 3375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5200 3550 50  0001 C CNN
	1    5200 3550
	0    -1   -1   0   
$EndComp
Connection ~ 5200 3700
Wire Wire Line
	5200 3700 6200 3700
$Comp
L Diode:1N4148 D?
U 1 1 6008165C
P 4200 3550
AR Path="/6008165C" Ref="D?"  Part="1" 
AR Path="/6006EC30/6008165C" Ref="D20"  Part="1" 
F 0 "D20" V 4246 3470 50  0000 R CNN
F 1 "1N4148" V 4155 3470 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4200 3375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4200 3550 50  0001 C CNN
	1    4200 3550
	0    -1   -1   0   
$EndComp
Connection ~ 4200 3700
Wire Wire Line
	4200 3700 5200 3700
Text GLabel 3600 1050 1    50   Input ~ 0
COL_2
Text GLabel 4600 1050 1    50   Input ~ 0
COL_3
Text GLabel 5600 1050 1    50   Input ~ 0
COL_4
Text GLabel 6600 1050 1    50   Input ~ 0
COL_5
Connection ~ 3600 2100
Text Notes 850  1000 0    50   ~ 0
row2col
$Comp
L kbd:SW_PUSH SW?
U 1 1 600816A4
P 2900 4050
AR Path="/600816A4" Ref="SW?"  Part="1" 
AR Path="/6006EC30/600816A4" Ref="SW13"  Part="1" 
F 0 "SW13" H 2900 4305 50  0000 C CNN
F 1 "SW_PUSH" H 2900 4214 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 2900 4050 50  0001 C CNN
F 3 "" H 2900 4050 50  0000 C CNN
	1    2900 4050
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 600816AA
P 1900 4050
AR Path="/600816AA" Ref="SW?"  Part="1" 
AR Path="/6006EC30/600816AA" Ref="SW5"  Part="1" 
F 0 "SW5" H 1900 4305 50  0000 C CNN
F 1 "SW_PUSH" H 1900 4214 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 1900 4050 50  0001 C CNN
F 3 "" H 1900 4050 50  0000 C CNN
	1    1900 4050
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 600816B0
P 1900 4700
AR Path="/600816B0" Ref="SW?"  Part="1" 
AR Path="/6006EC30/600816B0" Ref="SW6"  Part="1" 
F 0 "SW6" H 1900 4955 50  0000 C CNN
F 1 "SW_PUSH" H 1900 4864 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 1900 4700 50  0001 C CNN
F 3 "" H 1900 4700 50  0000 C CNN
	1    1900 4700
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 600816B6
P 2900 4700
AR Path="/600816B6" Ref="SW?"  Part="1" 
AR Path="/6006EC30/600816B6" Ref="SW14"  Part="1" 
F 0 "SW14" H 2900 4955 50  0000 C CNN
F 1 "SW_PUSH" H 2900 4864 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 2900 4700 50  0001 C CNN
F 3 "" H 2900 4700 50  0000 C CNN
	1    2900 4700
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 600816BC
P 2200 4200
AR Path="/600816BC" Ref="D?"  Part="1" 
AR Path="/6006EC30/600816BC" Ref="D5"  Part="1" 
F 0 "D5" V 2246 4120 50  0000 R CNN
F 1 "1N4148" V 2155 4120 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2200 4025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2200 4200 50  0001 C CNN
	1    2200 4200
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 600816C2
P 3200 4200
AR Path="/600816C2" Ref="D?"  Part="1" 
AR Path="/6006EC30/600816C2" Ref="D13"  Part="1" 
F 0 "D13" V 3246 4120 50  0000 R CNN
F 1 "1N4148" V 3155 4120 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3200 4025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3200 4200 50  0001 C CNN
	1    3200 4200
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 600816C8
P 2200 4850
AR Path="/600816C8" Ref="D?"  Part="1" 
AR Path="/6006EC30/600816C8" Ref="D6"  Part="1" 
F 0 "D6" V 2246 4770 50  0000 R CNN
F 1 "1N4148" V 2155 4770 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2200 4675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2200 4850 50  0001 C CNN
	1    2200 4850
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 600816CE
P 3200 4850
AR Path="/600816CE" Ref="D?"  Part="1" 
AR Path="/6006EC30/600816CE" Ref="D14"  Part="1" 
F 0 "D14" V 3246 4770 50  0000 R CNN
F 1 "1N4148" V 3155 4770 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3200 4675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3200 4850 50  0001 C CNN
	1    3200 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 4350 2200 4350
Connection ~ 2200 4350
Wire Wire Line
	2200 4350 3200 4350
Connection ~ 3200 4350
Connection ~ 1600 4050
Connection ~ 1600 4700
Wire Wire Line
	1100 5000 2200 5000
Connection ~ 2200 5000
Wire Wire Line
	2200 5000 3200 5000
Connection ~ 3200 5000
Connection ~ 2600 4050
Connection ~ 2600 4700
$Comp
L kbd:SW_PUSH SW?
U 1 1 600816E0
P 3900 4050
AR Path="/600816E0" Ref="SW?"  Part="1" 
AR Path="/6006EC30/600816E0" Ref="SW21"  Part="1" 
F 0 "SW21" H 3900 4305 50  0000 C CNN
F 1 "SW_PUSH" H 3900 4214 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 3900 4050 50  0001 C CNN
F 3 "" H 3900 4050 50  0000 C CNN
	1    3900 4050
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 600816E6
P 4900 4050
AR Path="/600816E6" Ref="SW?"  Part="1" 
AR Path="/6006EC30/600816E6" Ref="SW29"  Part="1" 
F 0 "SW29" H 4900 4305 50  0000 C CNN
F 1 "SW_PUSH" H 4900 4214 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 4900 4050 50  0001 C CNN
F 3 "" H 4900 4050 50  0000 C CNN
	1    4900 4050
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 600816EC
P 5900 4050
AR Path="/600816EC" Ref="SW?"  Part="1" 
AR Path="/6006EC30/600816EC" Ref="SW37"  Part="1" 
F 0 "SW37" H 5900 4305 50  0000 C CNN
F 1 "SW_PUSH" H 5900 4214 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 5900 4050 50  0001 C CNN
F 3 "" H 5900 4050 50  0000 C CNN
	1    5900 4050
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 600816F2
P 6900 4050
AR Path="/600816F2" Ref="SW?"  Part="1" 
AR Path="/6006EC30/600816F2" Ref="SW45"  Part="1" 
F 0 "SW45" H 6900 4305 50  0000 C CNN
F 1 "SW_PUSH" H 6900 4214 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 6900 4050 50  0001 C CNN
F 3 "" H 6900 4050 50  0000 C CNN
	1    6900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4350 4200 4350
$Comp
L kbd:SW_PUSH SW?
U 1 1 6008176D
P 3900 4700
AR Path="/6008176D" Ref="SW?"  Part="1" 
AR Path="/6006EC30/6008176D" Ref="SW22"  Part="1" 
F 0 "SW22" H 3900 4955 50  0000 C CNN
F 1 "SW_PUSH" H 3900 4864 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 3900 4700 50  0001 C CNN
F 3 "" H 3900 4700 50  0000 C CNN
	1    3900 4700
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 60081773
P 4200 4850
AR Path="/60081773" Ref="D?"  Part="1" 
AR Path="/6006EC30/60081773" Ref="D22"  Part="1" 
F 0 "D22" V 4246 4770 50  0000 R CNN
F 1 "1N4148" V 4155 4770 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4200 4675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4200 4850 50  0001 C CNN
	1    4200 4850
	0    -1   -1   0   
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 60081779
P 4900 4700
AR Path="/60081779" Ref="SW?"  Part="1" 
AR Path="/6006EC30/60081779" Ref="SW30"  Part="1" 
F 0 "SW30" H 4900 4955 50  0000 C CNN
F 1 "SW_PUSH" H 4900 4864 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 4900 4700 50  0001 C CNN
F 3 "" H 4900 4700 50  0000 C CNN
	1    4900 4700
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 6008177F
P 5900 4700
AR Path="/6008177F" Ref="SW?"  Part="1" 
AR Path="/6006EC30/6008177F" Ref="SW38"  Part="1" 
F 0 "SW38" H 5900 4955 50  0000 C CNN
F 1 "SW_PUSH" H 5900 4864 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 5900 4700 50  0001 C CNN
F 3 "" H 5900 4700 50  0000 C CNN
	1    5900 4700
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 60081785
P 6900 4700
AR Path="/60081785" Ref="SW?"  Part="1" 
AR Path="/6006EC30/60081785" Ref="SW46"  Part="1" 
F 0 "SW46" H 6900 4955 50  0000 C CNN
F 1 "SW_PUSH" H 6900 4864 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 6900 4700 50  0001 C CNN
F 3 "" H 6900 4700 50  0000 C CNN
	1    6900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5000 4200 5000
$Comp
L Diode:1N4148 D?
U 1 1 60081792
P 4200 4200
AR Path="/60081792" Ref="D?"  Part="1" 
AR Path="/6006EC30/60081792" Ref="D21"  Part="1" 
F 0 "D21" V 4246 4120 50  0000 R CNN
F 1 "1N4148" V 4155 4120 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4200 4025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4200 4200 50  0001 C CNN
	1    4200 4200
	0    -1   -1   0   
$EndComp
Connection ~ 4200 4350
Wire Wire Line
	4200 4350 5200 4350
$Comp
L Diode:1N4148 D?
U 1 1 6008179A
P 5200 4200
AR Path="/6008179A" Ref="D?"  Part="1" 
AR Path="/6006EC30/6008179A" Ref="D29"  Part="1" 
F 0 "D29" V 5246 4120 50  0000 R CNN
F 1 "1N4148" V 5155 4120 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5200 4025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5200 4200 50  0001 C CNN
	1    5200 4200
	0    -1   -1   0   
$EndComp
Connection ~ 5200 4350
Wire Wire Line
	5200 4350 6200 4350
$Comp
L Diode:1N4148 D?
U 1 1 600817A2
P 6200 4200
AR Path="/600817A2" Ref="D?"  Part="1" 
AR Path="/6006EC30/600817A2" Ref="D37"  Part="1" 
F 0 "D37" V 6246 4120 50  0000 R CNN
F 1 "1N4148" V 6155 4120 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6200 4025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6200 4200 50  0001 C CNN
	1    6200 4200
	0    -1   -1   0   
$EndComp
Connection ~ 6200 4350
Wire Wire Line
	6200 4350 7200 4350
$Comp
L Diode:1N4148 D?
U 1 1 600817AA
P 7200 4200
AR Path="/600817AA" Ref="D?"  Part="1" 
AR Path="/6006EC30/600817AA" Ref="D45"  Part="1" 
F 0 "D45" V 7246 4120 50  0000 R CNN
F 1 "1N4148" V 7155 4120 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7200 4025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7200 4200 50  0001 C CNN
	1    7200 4200
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 600817BF
P 7200 4850
AR Path="/600817BF" Ref="D?"  Part="1" 
AR Path="/6006EC30/600817BF" Ref="D46"  Part="1" 
F 0 "D46" V 7246 4770 50  0000 R CNN
F 1 "1N4148" V 7155 4770 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7200 4675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7200 4850 50  0001 C CNN
	1    7200 4850
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 600817C5
P 6200 4850
AR Path="/600817C5" Ref="D?"  Part="1" 
AR Path="/6006EC30/600817C5" Ref="D38"  Part="1" 
F 0 "D38" V 6246 4770 50  0000 R CNN
F 1 "1N4148" V 6155 4770 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6200 4675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6200 4850 50  0001 C CNN
	1    6200 4850
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 600817CB
P 5200 4850
AR Path="/600817CB" Ref="D?"  Part="1" 
AR Path="/6006EC30/600817CB" Ref="D30"  Part="1" 
F 0 "D30" V 5246 4770 50  0000 R CNN
F 1 "1N4148" V 5155 4770 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5200 4675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5200 4850 50  0001 C CNN
	1    5200 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 5000 5200 5000
Connection ~ 4200 5000
Connection ~ 5200 5000
Wire Wire Line
	5200 5000 6200 5000
Connection ~ 6200 5000
Wire Wire Line
	6200 5000 7200 5000
Connection ~ 3600 4050
Connection ~ 4600 4050
Connection ~ 5600 4050
Connection ~ 6600 4050
Wire Wire Line
	5600 2750 5600 3400
Wire Wire Line
	1600 2100 1600 2750
Wire Wire Line
	2600 2100 2600 2750
Wire Wire Line
	4600 2100 4600 2750
Wire Wire Line
	6600 2100 6600 2750
Wire Wire Line
	3600 2100 3600 2750
Wire Wire Line
	3600 1050 3600 1450
Wire Wire Line
	5600 1050 5600 1450
Wire Wire Line
	1600 4050 1600 4700
Wire Wire Line
	2600 4050 2600 4700
Wire Wire Line
	4600 4050 4600 4700
Wire Wire Line
	6600 4050 6600 4700
Wire Wire Line
	3600 4050 3600 4700
Wire Wire Line
	1600 1450 1600 2100
Wire Wire Line
	2600 1450 2600 2100
Wire Wire Line
	3600 1450 3600 2100
Wire Wire Line
	4600 1450 4600 2100
Wire Wire Line
	5600 1450 5600 2100
Wire Wire Line
	6600 1450 6600 2100
Wire Wire Line
	1600 1400 1600 1450
Wire Wire Line
	1600 3000 1600 3400
Wire Wire Line
	1600 4000 1600 4050
Wire Wire Line
	2600 1400 2600 1450
Wire Wire Line
	2600 3000 2600 3400
Wire Wire Line
	2600 4000 2600 4050
Wire Wire Line
	3600 3000 3600 3400
Wire Wire Line
	3600 4000 3600 4050
Wire Wire Line
	4600 1400 4600 1450
Wire Wire Line
	4600 3000 4600 3400
Wire Wire Line
	4600 4000 4600 4050
Wire Wire Line
	5600 4000 5600 4050
Wire Wire Line
	6600 1400 6600 1450
Wire Wire Line
	6600 3000 6600 3400
Wire Wire Line
	6600 4000 6600 4050
Wire Wire Line
	1600 1050 1600 1450
Wire Wire Line
	1600 2750 1600 3400
Wire Wire Line
	1600 3400 1600 4050
Wire Wire Line
	2600 1050 2600 1450
Wire Wire Line
	2600 2750 2600 3400
Wire Wire Line
	2600 3400 2600 4050
Wire Wire Line
	3600 2750 3600 3400
Wire Wire Line
	3600 3400 3600 4050
Wire Wire Line
	4600 1050 4600 1450
Wire Wire Line
	4600 2750 4600 3400
Wire Wire Line
	4600 3400 4600 4050
Wire Wire Line
	5600 3400 5600 4050
Wire Wire Line
	6600 1050 6600 1450
Wire Wire Line
	6600 2750 6600 3400
Wire Wire Line
	6600 3400 6600 4050
Wire Wire Line
	5600 4050 5600 4700
Text GLabel 1100 4350 0    50   Input ~ 0
ROW_4
Text GLabel 1100 5000 0    50   Input ~ 0
ROW_5
Wire Wire Line
	1600 4700 1600 6000
Wire Wire Line
	2600 4700 2600 6000
$EndSCHEMATC
