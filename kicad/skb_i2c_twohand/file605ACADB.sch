EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
U 1 1 605DD028
P 2225 1600
AR Path="/605DD028" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD028" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD028" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD028" Ref="SW37"  Part="1" 
F 0 "SW37" H 2225 1855 50  0000 C CNN
F 1 "SW_PUSH" H 2225 1764 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 2225 1600 50  0001 C CNN
F 3 "" H 2225 1600 50  0000 C CNN
	1    2225 1600
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD02E
P 2225 2250
AR Path="/605DD02E" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD02E" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD02E" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD02E" Ref="SW38"  Part="1" 
F 0 "SW38" H 2225 2505 50  0000 C CNN
F 1 "SW_PUSH" H 2225 2414 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 2225 2250 50  0001 C CNN
F 3 "" H 2225 2250 50  0000 C CNN
	1    2225 2250
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD034
P 3225 2250
AR Path="/605DD034" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD034" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD034" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD034" Ref="SW44"  Part="1" 
F 0 "SW44" H 3225 2505 50  0000 C CNN
F 1 "SW_PUSH" H 3225 2414 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 3225 2250 50  0001 C CNN
F 3 "" H 3225 2250 50  0000 C CNN
	1    3225 2250
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD03A
P 2525 1750
AR Path="/605DD03A" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD03A" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD03A" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD03A" Ref="D37"  Part="1" 
F 0 "D37" V 2571 1670 50  0000 R CNN
F 1 "1N4148" V 2480 1670 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2525 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2525 1750 50  0001 C CNN
	1    2525 1750
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD046
P 2525 2400
AR Path="/605DD046" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD046" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD046" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD046" Ref="D38"  Part="1" 
F 0 "D38" V 2571 2320 50  0000 R CNN
F 1 "1N4148" V 2480 2320 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2525 2225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2525 2400 50  0001 C CNN
	1    2525 2400
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD04C
P 3525 2400
AR Path="/605DD04C" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD04C" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD04C" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD04C" Ref="D44"  Part="1" 
F 0 "D44" V 3571 2320 50  0000 R CNN
F 1 "1N4148" V 3480 2320 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3525 2225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3525 2400 50  0001 C CNN
	1    3525 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1425 1900 2525 1900
Connection ~ 2525 1900
Connection ~ 1925 1600
Connection ~ 1925 2250
Wire Wire Line
	1425 2550 2525 2550
Connection ~ 2525 2550
Wire Wire Line
	2525 2550 3525 2550
Connection ~ 3525 2550
Connection ~ 2925 2250
Text GLabel 1425 1900 0    50   Input ~ 0
ROW_0
Text GLabel 1425 2550 0    50   Input ~ 0
ROW_1
Text GLabel 1925 1200 1    50   Input ~ 0
COL_0
Text GLabel 2925 1200 1    50   Input ~ 0
COL_1
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD062
P 4225 1600
AR Path="/605DD062" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD062" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD062" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD062" Ref="SW49"  Part="1" 
F 0 "SW49" H 4225 1855 50  0000 C CNN
F 1 "SW_PUSH" H 4225 1764 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 4225 1600 50  0001 C CNN
F 3 "" H 4225 1600 50  0000 C CNN
	1    4225 1600
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD068
P 5225 1600
AR Path="/605DD068" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD068" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD068" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD068" Ref="SW55"  Part="1" 
F 0 "SW55" H 5225 1855 50  0000 C CNN
F 1 "SW_PUSH" H 5225 1764 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 5225 1600 50  0001 C CNN
F 3 "" H 5225 1600 50  0000 C CNN
	1    5225 1600
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD06E
P 6225 1600
AR Path="/605DD06E" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD06E" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD06E" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD06E" Ref="SW61"  Part="1" 
F 0 "SW61" H 6225 1855 50  0000 C CNN
F 1 "SW_PUSH" H 6225 1764 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 6225 1600 50  0001 C CNN
F 3 "" H 6225 1600 50  0000 C CNN
	1    6225 1600
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD074
P 7225 1600
AR Path="/605DD074" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD074" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD074" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD074" Ref="SW67"  Part="1" 
F 0 "SW67" H 7225 1855 50  0000 C CNN
F 1 "SW_PUSH" H 7225 1764 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 7225 1600 50  0001 C CNN
F 3 "" H 7225 1600 50  0000 C CNN
	1    7225 1600
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD07A
P 2225 2900
AR Path="/605DD07A" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD07A" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD07A" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD07A" Ref="SW39"  Part="1" 
F 0 "SW39" H 2225 3155 50  0000 C CNN
F 1 "SW_PUSH" H 2225 3064 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 2225 2900 50  0001 C CNN
F 3 "" H 2225 2900 50  0000 C CNN
	1    2225 2900
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD080
P 2225 3550
AR Path="/605DD080" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD080" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD080" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD080" Ref="SW40"  Part="1" 
F 0 "SW40" H 2225 3805 50  0000 C CNN
F 1 "SW_PUSH" H 2225 3714 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 2225 3550 50  0001 C CNN
F 3 "" H 2225 3550 50  0000 C CNN
	1    2225 3550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD087
P 2525 3050
AR Path="/605DD087" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD087" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD087" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD087" Ref="D39"  Part="1" 
F 0 "D39" V 2571 2970 50  0000 R CNN
F 1 "1N4148" V 2480 2970 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2525 2875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2525 3050 50  0001 C CNN
	1    2525 3050
	0    -1   -1   0   
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD08D
P 3225 2900
AR Path="/605DD08D" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD08D" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD08D" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD08D" Ref="SW45"  Part="1" 
F 0 "SW45" H 3225 3155 50  0000 C CNN
F 1 "SW_PUSH" H 3225 3064 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 3225 2900 50  0001 C CNN
F 3 "" H 3225 2900 50  0000 C CNN
	1    3225 2900
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD093
P 3525 3050
AR Path="/605DD093" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD093" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD093" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD093" Ref="D45"  Part="1" 
F 0 "D45" V 3571 2970 50  0000 R CNN
F 1 "1N4148" V 3480 2970 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3525 2875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3525 3050 50  0001 C CNN
	1    3525 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2525 3200 3525 3200
Connection ~ 3525 3200
Connection ~ 2925 2900
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD09C
P 4225 2900
AR Path="/605DD09C" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD09C" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD09C" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD09C" Ref="SW51"  Part="1" 
F 0 "SW51" H 4225 3155 50  0000 C CNN
F 1 "SW_PUSH" H 4225 3064 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 4225 2900 50  0001 C CNN
F 3 "" H 4225 2900 50  0000 C CNN
	1    4225 2900
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD0A8
P 6225 2900
AR Path="/605DD0A8" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD0A8" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD0A8" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD0A8" Ref="SW63"  Part="1" 
F 0 "SW63" H 6225 3155 50  0000 C CNN
F 1 "SW_PUSH" H 6225 3064 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 6225 2900 50  0001 C CNN
F 3 "" H 6225 2900 50  0000 C CNN
	1    6225 2900
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD0AE
P 7225 2900
AR Path="/605DD0AE" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD0AE" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD0AE" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD0AE" Ref="SW69"  Part="1" 
F 0 "SW69" H 7225 3155 50  0000 C CNN
F 1 "SW_PUSH" H 7225 3064 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 7225 2900 50  0001 C CNN
F 3 "" H 7225 2900 50  0000 C CNN
	1    7225 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3525 3200 4525 3200
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD0B5
P 3225 3550
AR Path="/605DD0B5" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD0B5" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD0B5" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD0B5" Ref="SW46"  Part="1" 
F 0 "SW46" H 3225 3805 50  0000 C CNN
F 1 "SW_PUSH" H 3225 3714 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 3225 3550 50  0001 C CNN
F 3 "" H 3225 3550 50  0000 C CNN
	1    3225 3550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD0BB
P 3525 3700
AR Path="/605DD0BB" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD0BB" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD0BB" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD0BB" Ref="D46"  Part="1" 
F 0 "D46" V 3571 3620 50  0000 R CNN
F 1 "1N4148" V 3480 3620 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3525 3525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3525 3700 50  0001 C CNN
	1    3525 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2525 3850 3525 3850
Connection ~ 3525 3850
Connection ~ 2925 3550
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD0C4
P 4225 3550
AR Path="/605DD0C4" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD0C4" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD0C4" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD0C4" Ref="SW52"  Part="1" 
F 0 "SW52" H 4225 3805 50  0000 C CNN
F 1 "SW_PUSH" H 4225 3714 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 4225 3550 50  0001 C CNN
F 3 "" H 4225 3550 50  0000 C CNN
	1    4225 3550
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD0CA
P 5225 3550
AR Path="/605DD0CA" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD0CA" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD0CA" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD0CA" Ref="SW58"  Part="1" 
F 0 "SW58" H 5225 3805 50  0000 C CNN
F 1 "SW_PUSH" H 5225 3714 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 5225 3550 50  0001 C CNN
F 3 "" H 5225 3550 50  0000 C CNN
	1    5225 3550
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD0D6
P 7225 3550
AR Path="/605DD0D6" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD0D6" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD0D6" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD0D6" Ref="SW70"  Part="1" 
F 0 "SW70" H 7225 3805 50  0000 C CNN
F 1 "SW_PUSH" H 7225 3714 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 7225 3550 50  0001 C CNN
F 3 "" H 7225 3550 50  0000 C CNN
	1    7225 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3525 3850 4525 3850
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD0E9
P 5225 2250
AR Path="/605DD0E9" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD0E9" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD0E9" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD0E9" Ref="SW56"  Part="1" 
F 0 "SW56" H 5225 2505 50  0000 C CNN
F 1 "SW_PUSH" H 5225 2414 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 5225 2250 50  0001 C CNN
F 3 "" H 5225 2250 50  0000 C CNN
	1    5225 2250
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD0EF
P 6225 2250
AR Path="/605DD0EF" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD0EF" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD0EF" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD0EF" Ref="SW62"  Part="1" 
F 0 "SW62" H 6225 2505 50  0000 C CNN
F 1 "SW_PUSH" H 6225 2414 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 6225 2250 50  0001 C CNN
F 3 "" H 6225 2250 50  0000 C CNN
	1    6225 2250
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD0F5
P 7225 2250
AR Path="/605DD0F5" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD0F5" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD0F5" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD0F5" Ref="SW68"  Part="1" 
F 0 "SW68" H 7225 2505 50  0000 C CNN
F 1 "SW_PUSH" H 7225 2414 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 7225 2250 50  0001 C CNN
F 3 "" H 7225 2250 50  0000 C CNN
	1    7225 2250
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD0FC
P 4525 1750
AR Path="/605DD0FC" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD0FC" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD0FC" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD0FC" Ref="D49"  Part="1" 
F 0 "D49" V 4571 1670 50  0000 R CNN
F 1 "1N4148" V 4480 1670 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4525 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4525 1750 50  0001 C CNN
	1    4525 1750
	0    -1   -1   0   
$EndComp
Connection ~ 4525 1900
Wire Wire Line
	4525 1900 5525 1900
$Comp
L Diode:1N4148 D?
U 1 1 605DD104
P 5525 1750
AR Path="/605DD104" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD104" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD104" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD104" Ref="D55"  Part="1" 
F 0 "D55" V 5571 1670 50  0000 R CNN
F 1 "1N4148" V 5480 1670 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5525 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5525 1750 50  0001 C CNN
	1    5525 1750
	0    -1   -1   0   
$EndComp
Connection ~ 5525 1900
Wire Wire Line
	5525 1900 6525 1900
$Comp
L Diode:1N4148 D?
U 1 1 605DD10C
P 6525 1750
AR Path="/605DD10C" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD10C" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD10C" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD10C" Ref="D61"  Part="1" 
F 0 "D61" V 6571 1670 50  0000 R CNN
F 1 "1N4148" V 6480 1670 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6525 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6525 1750 50  0001 C CNN
	1    6525 1750
	0    -1   -1   0   
$EndComp
Connection ~ 6525 1900
Wire Wire Line
	6525 1900 7525 1900
$Comp
L Diode:1N4148 D?
U 1 1 605DD114
P 7525 1750
AR Path="/605DD114" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD114" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD114" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD114" Ref="D67"  Part="1" 
F 0 "D67" V 7571 1670 50  0000 R CNN
F 1 "1N4148" V 7480 1670 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7525 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7525 1750 50  0001 C CNN
	1    7525 1750
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD11A
P 7525 2400
AR Path="/605DD11A" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD11A" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD11A" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD11A" Ref="D68"  Part="1" 
F 0 "D68" V 7571 2320 50  0000 R CNN
F 1 "1N4148" V 7480 2320 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7525 2225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7525 2400 50  0001 C CNN
	1    7525 2400
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD120
P 6525 2400
AR Path="/605DD120" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD120" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD120" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD120" Ref="D62"  Part="1" 
F 0 "D62" V 6571 2320 50  0000 R CNN
F 1 "1N4148" V 6480 2320 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6525 2225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6525 2400 50  0001 C CNN
	1    6525 2400
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD126
P 5525 2400
AR Path="/605DD126" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD126" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD126" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD126" Ref="D56"  Part="1" 
F 0 "D56" V 5571 2320 50  0000 R CNN
F 1 "1N4148" V 5480 2320 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5525 2225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5525 2400 50  0001 C CNN
	1    5525 2400
	0    -1   -1   0   
$EndComp
Connection ~ 5525 2550
Wire Wire Line
	5525 2550 6525 2550
Connection ~ 6525 2550
Wire Wire Line
	6525 2550 7525 2550
Connection ~ 3925 2900
Connection ~ 3925 3550
Connection ~ 3925 1600
Connection ~ 4925 1600
Connection ~ 4925 2250
Connection ~ 4925 3550
Connection ~ 5925 1600
Connection ~ 5925 2250
Wire Wire Line
	5925 2900 5925 2250
Connection ~ 6925 1600
Connection ~ 6925 2250
Connection ~ 6925 2900
$Comp
L Diode:1N4148 D?
U 1 1 605DD142
P 2525 3700
AR Path="/605DD142" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD142" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD142" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD142" Ref="D40"  Part="1" 
F 0 "D40" V 2571 3620 50  0000 R CNN
F 1 "1N4148" V 2480 3620 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2525 3525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2525 3700 50  0001 C CNN
	1    2525 3700
	0    -1   -1   0   
$EndComp
Connection ~ 1925 2900
Wire Wire Line
	2525 3850 1425 3850
Connection ~ 2525 3850
Wire Wire Line
	2525 3200 1425 3200
Connection ~ 2525 3200
Text GLabel 1425 3200 0    50   Input ~ 0
ROW_2
Text GLabel 1425 3850 0    50   Input ~ 0
ROW_3
$Comp
L Diode:1N4148 D?
U 1 1 605DD150
P 4525 3050
AR Path="/605DD150" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD150" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD150" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD150" Ref="D51"  Part="1" 
F 0 "D51" V 4571 2970 50  0000 R CNN
F 1 "1N4148" V 4480 2970 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4525 2875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4525 3050 50  0001 C CNN
	1    4525 3050
	0    -1   -1   0   
$EndComp
Connection ~ 4525 3200
$Comp
L Diode:1N4148 D?
U 1 1 605DD160
P 6525 3050
AR Path="/605DD160" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD160" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD160" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD160" Ref="D63"  Part="1" 
F 0 "D63" V 6571 2970 50  0000 R CNN
F 1 "1N4148" V 6480 2970 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6525 2875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6525 3050 50  0001 C CNN
	1    6525 3050
	0    -1   -1   0   
$EndComp
Connection ~ 6525 3200
Wire Wire Line
	6525 3200 7525 3200
$Comp
L Diode:1N4148 D?
U 1 1 605DD168
P 7525 3050
AR Path="/605DD168" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD168" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD168" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD168" Ref="D69"  Part="1" 
F 0 "D69" V 7571 2970 50  0000 R CNN
F 1 "1N4148" V 7480 2970 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7525 2875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7525 3050 50  0001 C CNN
	1    7525 3050
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD16E
P 7525 3700
AR Path="/605DD16E" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD16E" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD16E" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD16E" Ref="D70"  Part="1" 
F 0 "D70" V 7571 3620 50  0000 R CNN
F 1 "1N4148" V 7480 3620 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7525 3525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7525 3700 50  0001 C CNN
	1    7525 3700
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD17C
P 5525 3700
AR Path="/605DD17C" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD17C" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD17C" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD17C" Ref="D58"  Part="1" 
F 0 "D58" V 5571 3620 50  0000 R CNN
F 1 "1N4148" V 5480 3620 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5525 3525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5525 3700 50  0001 C CNN
	1    5525 3700
	0    -1   -1   0   
$EndComp
Connection ~ 5525 3850
$Comp
L Diode:1N4148 D?
U 1 1 605DD184
P 4525 3700
AR Path="/605DD184" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD184" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD184" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD184" Ref="D52"  Part="1" 
F 0 "D52" V 4571 3620 50  0000 R CNN
F 1 "1N4148" V 4480 3620 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4525 3525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4525 3700 50  0001 C CNN
	1    4525 3700
	0    -1   -1   0   
$EndComp
Connection ~ 4525 3850
Wire Wire Line
	4525 3850 5525 3850
Text GLabel 3925 1200 1    50   Input ~ 0
COL_2
Text GLabel 4925 1200 1    50   Input ~ 0
COL_3
Text GLabel 5925 1200 1    50   Input ~ 0
COL_4
Text GLabel 6925 1200 1    50   Input ~ 0
COL_5
Text Notes 1175 1150 0    50   ~ 0
row2col
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD192
P 3225 4200
AR Path="/605DD192" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD192" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD192" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD192" Ref="SW47"  Part="1" 
F 0 "SW47" H 3225 4455 50  0000 C CNN
F 1 "SW_PUSH" H 3225 4364 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 3225 4200 50  0001 C CNN
F 3 "" H 3225 4200 50  0000 C CNN
	1    3225 4200
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD19E
P 2225 4850
AR Path="/605DD19E" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD19E" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD19E" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD19E" Ref="SW42"  Part="1" 
F 0 "SW42" H 2225 5105 50  0000 C CNN
F 1 "SW_PUSH" H 2225 5014 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 2225 4850 50  0001 C CNN
F 3 "" H 2225 4850 50  0000 C CNN
	1    2225 4850
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD1A4
P 3225 4850
AR Path="/605DD1A4" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD1A4" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD1A4" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD1A4" Ref="SW48"  Part="1" 
F 0 "SW48" H 3225 5105 50  0000 C CNN
F 1 "SW_PUSH" H 3225 5014 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 3225 4850 50  0001 C CNN
F 3 "" H 3225 4850 50  0000 C CNN
	1    3225 4850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD1AA
P 2525 4350
AR Path="/605DD1AA" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD1AA" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD1AA" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD1AA" Ref="D41"  Part="1" 
F 0 "D41" V 2571 4270 50  0000 R CNN
F 1 "1N4148" V 2480 4270 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2525 4175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2525 4350 50  0001 C CNN
	1    2525 4350
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD1B0
P 3525 4350
AR Path="/605DD1B0" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD1B0" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD1B0" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD1B0" Ref="D47"  Part="1" 
F 0 "D47" V 3571 4270 50  0000 R CNN
F 1 "1N4148" V 3480 4270 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3525 4175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3525 4350 50  0001 C CNN
	1    3525 4350
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD1B6
P 2525 5000
AR Path="/605DD1B6" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD1B6" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD1B6" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD1B6" Ref="D42"  Part="1" 
F 0 "D42" V 2571 4920 50  0000 R CNN
F 1 "1N4148" V 2480 4920 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2525 4825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2525 5000 50  0001 C CNN
	1    2525 5000
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD1BC
P 3525 5000
AR Path="/605DD1BC" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD1BC" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD1BC" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD1BC" Ref="D48"  Part="1" 
F 0 "D48" V 3571 4920 50  0000 R CNN
F 1 "1N4148" V 3480 4920 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3525 4825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3525 5000 50  0001 C CNN
	1    3525 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1425 4500 2525 4500
Connection ~ 2525 4500
Wire Wire Line
	2525 4500 3525 4500
Connection ~ 3525 4500
Wire Wire Line
	1425 5150 2525 5150
Connection ~ 2525 5150
Wire Wire Line
	2525 5150 3525 5150
Connection ~ 3525 5150
Connection ~ 2925 4200
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD1CE
P 4225 4200
AR Path="/605DD1CE" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD1CE" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD1CE" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD1CE" Ref="SW53"  Part="1" 
F 0 "SW53" H 4225 4455 50  0000 C CNN
F 1 "SW_PUSH" H 4225 4364 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 4225 4200 50  0001 C CNN
F 3 "" H 4225 4200 50  0000 C CNN
	1    4225 4200
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD1D4
P 5225 4200
AR Path="/605DD1D4" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD1D4" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD1D4" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD1D4" Ref="SW59"  Part="1" 
F 0 "SW59" H 5225 4455 50  0000 C CNN
F 1 "SW_PUSH" H 5225 4364 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 5225 4200 50  0001 C CNN
F 3 "" H 5225 4200 50  0000 C CNN
	1    5225 4200
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD1DA
P 6225 4200
AR Path="/605DD1DA" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD1DA" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD1DA" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD1DA" Ref="SW65"  Part="1" 
F 0 "SW65" H 6225 4455 50  0000 C CNN
F 1 "SW_PUSH" H 6225 4364 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 6225 4200 50  0001 C CNN
F 3 "" H 6225 4200 50  0000 C CNN
	1    6225 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3525 4500 4525 4500
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD1E7
P 4225 4850
AR Path="/605DD1E7" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD1E7" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD1E7" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD1E7" Ref="SW54"  Part="1" 
F 0 "SW54" H 4225 5105 50  0000 C CNN
F 1 "SW_PUSH" H 4225 5014 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 4225 4850 50  0001 C CNN
F 3 "" H 4225 4850 50  0000 C CNN
	1    4225 4850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD1ED
P 4525 5000
AR Path="/605DD1ED" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD1ED" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD1ED" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD1ED" Ref="D54"  Part="1" 
F 0 "D54" V 4571 4920 50  0000 R CNN
F 1 "1N4148" V 4480 4920 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4525 4825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4525 5000 50  0001 C CNN
	1    4525 5000
	0    -1   -1   0   
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD1F3
P 5225 4850
AR Path="/605DD1F3" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD1F3" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD1F3" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD1F3" Ref="SW60"  Part="1" 
F 0 "SW60" H 5225 5105 50  0000 C CNN
F 1 "SW_PUSH" H 5225 5014 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 5225 4850 50  0001 C CNN
F 3 "" H 5225 4850 50  0000 C CNN
	1    5225 4850
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD1F9
P 6225 4850
AR Path="/605DD1F9" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD1F9" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD1F9" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD1F9" Ref="SW66"  Part="1" 
F 0 "SW66" H 6225 5105 50  0000 C CNN
F 1 "SW_PUSH" H 6225 5014 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 6225 4850 50  0001 C CNN
F 3 "" H 6225 4850 50  0000 C CNN
	1    6225 4850
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD1FF
P 7225 4850
AR Path="/605DD1FF" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD1FF" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD1FF" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD1FF" Ref="SW72"  Part="1" 
F 0 "SW72" H 7225 5105 50  0000 C CNN
F 1 "SW_PUSH" H 7225 5014 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 7225 4850 50  0001 C CNN
F 3 "" H 7225 4850 50  0000 C CNN
	1    7225 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3525 5150 4525 5150
$Comp
L Diode:1N4148 D?
U 1 1 605DD206
P 4525 4350
AR Path="/605DD206" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD206" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD206" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD206" Ref="D53"  Part="1" 
F 0 "D53" V 4571 4270 50  0000 R CNN
F 1 "1N4148" V 4480 4270 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4525 4175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4525 4350 50  0001 C CNN
	1    4525 4350
	0    -1   -1   0   
$EndComp
Connection ~ 4525 4500
Wire Wire Line
	4525 4500 5525 4500
$Comp
L Diode:1N4148 D?
U 1 1 605DD20E
P 5525 4350
AR Path="/605DD20E" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD20E" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD20E" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD20E" Ref="D59"  Part="1" 
F 0 "D59" V 5571 4270 50  0000 R CNN
F 1 "1N4148" V 5480 4270 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5525 4175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5525 4350 50  0001 C CNN
	1    5525 4350
	0    -1   -1   0   
$EndComp
Connection ~ 5525 4500
Wire Wire Line
	5525 4500 6525 4500
$Comp
L Diode:1N4148 D?
U 1 1 605DD216
P 6525 4350
AR Path="/605DD216" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD216" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD216" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD216" Ref="D65"  Part="1" 
F 0 "D65" V 6571 4270 50  0000 R CNN
F 1 "1N4148" V 6480 4270 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6525 4175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6525 4350 50  0001 C CNN
	1    6525 4350
	0    -1   -1   0   
$EndComp
Connection ~ 6525 4500
$Comp
L Diode:1N4148 D?
U 1 1 605DD224
P 7525 5000
AR Path="/605DD224" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD224" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD224" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD224" Ref="D72"  Part="1" 
F 0 "D72" V 7571 4920 50  0000 R CNN
F 1 "1N4148" V 7480 4920 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7525 4825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7525 5000 50  0001 C CNN
	1    7525 5000
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD22A
P 6525 5000
AR Path="/605DD22A" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD22A" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD22A" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD22A" Ref="D66"  Part="1" 
F 0 "D66" V 6571 4920 50  0000 R CNN
F 1 "1N4148" V 6480 4920 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6525 4825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6525 5000 50  0001 C CNN
	1    6525 5000
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 605DD230
P 5525 5000
AR Path="/605DD230" Ref="D?"  Part="1" 
AR Path="/6006EC30/605DD230" Ref="D?"  Part="1" 
AR Path="/605ACADC/605DD230" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD230" Ref="D60"  Part="1" 
F 0 "D60" V 5571 4920 50  0000 R CNN
F 1 "1N4148" V 5480 4920 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5525 4825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5525 5000 50  0001 C CNN
	1    5525 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4525 5150 5525 5150
Connection ~ 4525 5150
Connection ~ 5525 5150
Wire Wire Line
	5525 5150 6525 5150
Connection ~ 6525 5150
Wire Wire Line
	6525 5150 7525 5150
Connection ~ 3925 4200
Connection ~ 4925 4200
Connection ~ 4925 4850
Connection ~ 5925 4850
Connection ~ 6925 4850
Connection ~ 3925 4850
Wire Wire Line
	1925 2250 1925 2900
Wire Wire Line
	2925 2250 2925 2900
Wire Wire Line
	6925 2250 6925 2900
Wire Wire Line
	3925 1200 3925 1600
Wire Wire Line
	5925 1200 5925 1600
Wire Wire Line
	4925 4200 4925 4850
Wire Wire Line
	3925 4200 3925 4850
Wire Wire Line
	1925 1600 1925 2250
Wire Wire Line
	4925 1600 4925 2250
Wire Wire Line
	5925 1600 5925 2250
Wire Wire Line
	6925 1600 6925 2250
Wire Wire Line
	2925 3150 2925 3550
Wire Wire Line
	2925 4150 2925 4200
Wire Wire Line
	3925 3150 3925 3550
Wire Wire Line
	3925 4150 3925 4200
Wire Wire Line
	4925 3150 4925 3550
Wire Wire Line
	1925 1200 1925 1600
Wire Wire Line
	2925 2900 2925 3550
Wire Wire Line
	2925 3550 2925 4200
Wire Wire Line
	3925 2900 3925 3550
Wire Wire Line
	3925 3550 3925 4200
Wire Wire Line
	4925 1200 4925 1600
Wire Wire Line
	6925 1200 6925 1600
Wire Wire Line
	5925 4200 5925 4850
Text GLabel 1425 4500 0    50   Input ~ 0
ROW_4
Text GLabel 1425 5150 0    50   Input ~ 0
ROW_5
Wire Wire Line
	1925 4200 1925 4850
Wire Wire Line
	2925 4200 2925 4850
Connection ~ 2925 4850
Connection ~ 1925 4850
Wire Wire Line
	1925 6100 1900 6100
Wire Wire Line
	2925 6100 2950 6100
$Comp
L kbd:SW_PUSH SW?
U 1 1 5FDF62D9
P 8225 1600
AR Path="/5FDF62D9" Ref="SW?"  Part="1" 
AR Path="/6006EC30/5FDF62D9" Ref="SW?"  Part="1" 
AR Path="/605ACADC/5FDF62D9" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FDF62D9" Ref="SW73"  Part="1" 
F 0 "SW73" H 8225 1855 50  0000 C CNN
F 1 "SW_PUSH" H 8225 1764 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 8225 1600 50  0001 C CNN
F 3 "" H 8225 1600 50  0000 C CNN
	1    8225 1600
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 5FDF62DF
P 9225 1600
AR Path="/5FDF62DF" Ref="SW?"  Part="1" 
AR Path="/6006EC30/5FDF62DF" Ref="SW?"  Part="1" 
AR Path="/605ACADC/5FDF62DF" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FDF62DF" Ref="SW79"  Part="1" 
F 0 "SW79" H 9225 1855 50  0000 C CNN
F 1 "SW_PUSH" H 9225 1764 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 9225 1600 50  0001 C CNN
F 3 "" H 9225 1600 50  0000 C CNN
	1    9225 1600
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 5FDF62E5
P 8225 2900
AR Path="/5FDF62E5" Ref="SW?"  Part="1" 
AR Path="/6006EC30/5FDF62E5" Ref="SW?"  Part="1" 
AR Path="/605ACADC/5FDF62E5" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FDF62E5" Ref="SW75"  Part="1" 
F 0 "SW75" H 8225 3155 50  0000 C CNN
F 1 "SW_PUSH" H 8225 3064 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 8225 2900 50  0001 C CNN
F 3 "" H 8225 2900 50  0000 C CNN
	1    8225 2900
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 5FDF62EB
P 9225 2900
AR Path="/5FDF62EB" Ref="SW?"  Part="1" 
AR Path="/6006EC30/5FDF62EB" Ref="SW?"  Part="1" 
AR Path="/605ACADC/5FDF62EB" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FDF62EB" Ref="SW81"  Part="1" 
F 0 "SW81" H 9225 3155 50  0000 C CNN
F 1 "SW_PUSH" H 9225 3064 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 9225 2900 50  0001 C CNN
F 3 "" H 9225 2900 50  0000 C CNN
	1    9225 2900
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 5FDF62F1
P 8225 3550
AR Path="/5FDF62F1" Ref="SW?"  Part="1" 
AR Path="/6006EC30/5FDF62F1" Ref="SW?"  Part="1" 
AR Path="/605ACADC/5FDF62F1" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FDF62F1" Ref="SW76"  Part="1" 
F 0 "SW76" H 8225 3805 50  0000 C CNN
F 1 "SW_PUSH" H 8225 3714 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 8225 3550 50  0001 C CNN
F 3 "" H 8225 3550 50  0000 C CNN
	1    8225 3550
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 5FDF62FD
P 8225 2250
AR Path="/5FDF62FD" Ref="SW?"  Part="1" 
AR Path="/6006EC30/5FDF62FD" Ref="SW?"  Part="1" 
AR Path="/605ACADC/5FDF62FD" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FDF62FD" Ref="SW74"  Part="1" 
F 0 "SW74" H 8225 2505 50  0000 C CNN
F 1 "SW_PUSH" H 8225 2414 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 8225 2250 50  0001 C CNN
F 3 "" H 8225 2250 50  0000 C CNN
	1    8225 2250
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 5FDF6303
P 9225 2250
AR Path="/5FDF6303" Ref="SW?"  Part="1" 
AR Path="/6006EC30/5FDF6303" Ref="SW?"  Part="1" 
AR Path="/605ACADC/5FDF6303" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FDF6303" Ref="SW80"  Part="1" 
F 0 "SW80" H 9225 2505 50  0000 C CNN
F 1 "SW_PUSH" H 9225 2414 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 9225 2250 50  0001 C CNN
F 3 "" H 9225 2250 50  0000 C CNN
	1    9225 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7525 1900 8525 1900
$Comp
L Diode:1N4148 D?
U 1 1 5FDF630A
P 8525 1750
AR Path="/5FDF630A" Ref="D?"  Part="1" 
AR Path="/6006EC30/5FDF630A" Ref="D?"  Part="1" 
AR Path="/605ACADC/5FDF630A" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FDF630A" Ref="D73"  Part="1" 
F 0 "D73" V 8571 1670 50  0000 R CNN
F 1 "1N4148" V 8480 1670 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8525 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8525 1750 50  0001 C CNN
	1    8525 1750
	0    -1   -1   0   
$EndComp
Connection ~ 8525 1900
Wire Wire Line
	8525 1900 9525 1900
$Comp
L Diode:1N4148 D?
U 1 1 5FDF6312
P 9525 1750
AR Path="/5FDF6312" Ref="D?"  Part="1" 
AR Path="/6006EC30/5FDF6312" Ref="D?"  Part="1" 
AR Path="/605ACADC/5FDF6312" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FDF6312" Ref="D79"  Part="1" 
F 0 "D79" V 9571 1670 50  0000 R CNN
F 1 "1N4148" V 9480 1670 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9525 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9525 1750 50  0001 C CNN
	1    9525 1750
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5FDF6318
P 9525 2400
AR Path="/5FDF6318" Ref="D?"  Part="1" 
AR Path="/6006EC30/5FDF6318" Ref="D?"  Part="1" 
AR Path="/605ACADC/5FDF6318" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FDF6318" Ref="D80"  Part="1" 
F 0 "D80" V 9571 2320 50  0000 R CNN
F 1 "1N4148" V 9480 2320 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9525 2225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9525 2400 50  0001 C CNN
	1    9525 2400
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5FDF631E
P 8525 2400
AR Path="/5FDF631E" Ref="D?"  Part="1" 
AR Path="/6006EC30/5FDF631E" Ref="D?"  Part="1" 
AR Path="/605ACADC/5FDF631E" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FDF631E" Ref="D74"  Part="1" 
F 0 "D74" V 8571 2320 50  0000 R CNN
F 1 "1N4148" V 8480 2320 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8525 2225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8525 2400 50  0001 C CNN
	1    8525 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7525 2550 8525 2550
Connection ~ 8525 2550
Wire Wire Line
	8525 2550 9525 2550
Connection ~ 7925 1600
Connection ~ 7925 2250
Connection ~ 7925 2900
Wire Wire Line
	7925 2900 7925 2250
Connection ~ 7925 3550
Connection ~ 8925 1600
Connection ~ 8925 2250
Connection ~ 8925 2900
Wire Wire Line
	7525 3200 8525 3200
$Comp
L Diode:1N4148 D?
U 1 1 5FDF6331
P 8525 3050
AR Path="/5FDF6331" Ref="D?"  Part="1" 
AR Path="/6006EC30/5FDF6331" Ref="D?"  Part="1" 
AR Path="/605ACADC/5FDF6331" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FDF6331" Ref="D75"  Part="1" 
F 0 "D75" V 8571 2970 50  0000 R CNN
F 1 "1N4148" V 8480 2970 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8525 2875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8525 3050 50  0001 C CNN
	1    8525 3050
	0    -1   -1   0   
$EndComp
Connection ~ 8525 3200
Wire Wire Line
	8525 3200 9525 3200
$Comp
L Diode:1N4148 D?
U 1 1 5FDF6339
P 9525 3050
AR Path="/5FDF6339" Ref="D?"  Part="1" 
AR Path="/6006EC30/5FDF6339" Ref="D?"  Part="1" 
AR Path="/605ACADC/5FDF6339" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FDF6339" Ref="D81"  Part="1" 
F 0 "D81" V 9571 2970 50  0000 R CNN
F 1 "1N4148" V 9480 2970 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9525 2875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9525 3050 50  0001 C CNN
	1    9525 3050
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5FDF6345
P 8525 3700
AR Path="/5FDF6345" Ref="D?"  Part="1" 
AR Path="/6006EC30/5FDF6345" Ref="D?"  Part="1" 
AR Path="/605ACADC/5FDF6345" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FDF6345" Ref="D76"  Part="1" 
F 0 "D76" V 8571 3620 50  0000 R CNN
F 1 "1N4148" V 8480 3620 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8525 3525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8525 3700 50  0001 C CNN
	1    8525 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7525 3850 8525 3850
Text GLabel 7925 1200 1    50   Input ~ 0
COL_6
$Comp
L kbd:SW_PUSH SW?
U 1 1 5FDF6350
P 8225 4200
AR Path="/5FDF6350" Ref="SW?"  Part="1" 
AR Path="/6006EC30/5FDF6350" Ref="SW?"  Part="1" 
AR Path="/605ACADC/5FDF6350" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FDF6350" Ref="SW77"  Part="1" 
F 0 "SW77" H 8225 4455 50  0000 C CNN
F 1 "SW_PUSH" H 8225 4364 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 8225 4200 50  0001 C CNN
F 3 "" H 8225 4200 50  0000 C CNN
	1    8225 4200
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5FDF6369
P 8525 4350
AR Path="/5FDF6369" Ref="D?"  Part="1" 
AR Path="/6006EC30/5FDF6369" Ref="D?"  Part="1" 
AR Path="/605ACADC/5FDF6369" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FDF6369" Ref="D77"  Part="1" 
F 0 "D77" V 8571 4270 50  0000 R CNN
F 1 "1N4148" V 8480 4270 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8525 4175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8525 4350 50  0001 C CNN
	1    8525 4350
	0    -1   -1   0   
$EndComp
Connection ~ 7925 4200
Wire Wire Line
	7925 2900 7925 3550
Wire Wire Line
	8925 2250 8925 2900
Wire Wire Line
	7925 1200 7925 1600
Wire Wire Line
	7925 1600 7925 2250
Wire Wire Line
	8925 1600 8925 2250
Wire Wire Line
	7925 4150 7925 4200
Wire Wire Line
	7925 3550 7925 4200
Wire Wire Line
	8925 1200 8925 1600
Text GLabel 8925 1200 1    50   Input ~ 0
COL_7
$Comp
L kbd:SW_PUSH SW?
U 1 1 5FE0D81E
P 10225 1600
AR Path="/5FE0D81E" Ref="SW?"  Part="1" 
AR Path="/6006EC30/5FE0D81E" Ref="SW?"  Part="1" 
AR Path="/605ACADC/5FE0D81E" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FE0D81E" Ref="SW82"  Part="1" 
F 0 "SW82" H 10225 1855 50  0000 C CNN
F 1 "SW_PUSH" H 10225 1764 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 10225 1600 50  0001 C CNN
F 3 "" H 10225 1600 50  0000 C CNN
	1    10225 1600
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 5FE0D830
P 10225 2250
AR Path="/5FE0D830" Ref="SW?"  Part="1" 
AR Path="/6006EC30/5FE0D830" Ref="SW?"  Part="1" 
AR Path="/605ACADC/5FE0D830" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FE0D830" Ref="SW83"  Part="1" 
F 0 "SW83" H 10225 2505 50  0000 C CNN
F 1 "SW_PUSH" H 10225 2414 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 10225 2250 50  0001 C CNN
F 3 "" H 10225 2250 50  0000 C CNN
	1    10225 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9525 1900 10525 1900
$Comp
L Diode:1N4148 D?
U 1 1 5FE0D837
P 10525 1750
AR Path="/5FE0D837" Ref="D?"  Part="1" 
AR Path="/6006EC30/5FE0D837" Ref="D?"  Part="1" 
AR Path="/605ACADC/5FE0D837" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FE0D837" Ref="D82"  Part="1" 
F 0 "D82" V 10571 1670 50  0000 R CNN
F 1 "1N4148" V 10480 1670 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 10525 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 10525 1750 50  0001 C CNN
	1    10525 1750
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5FE0D83D
P 10525 2400
AR Path="/5FE0D83D" Ref="D?"  Part="1" 
AR Path="/6006EC30/5FE0D83D" Ref="D?"  Part="1" 
AR Path="/605ACADC/5FE0D83D" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FE0D83D" Ref="D83"  Part="1" 
F 0 "D83" V 10571 2320 50  0000 R CNN
F 1 "1N4148" V 10480 2320 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 10525 2225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 10525 2400 50  0001 C CNN
	1    10525 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9525 2550 10525 2550
Connection ~ 9925 1600
Connection ~ 9925 2250
Wire Wire Line
	9925 2250 9925 2900
Wire Wire Line
	9925 1600 9925 2250
Wire Wire Line
	9925 1200 9925 1600
Text GLabel 9925 1200 1    50   Input ~ 0
COL_8
Wire Wire Line
	1925 4850 1925 6100
Wire Wire Line
	2925 4850 2925 6100
Wire Wire Line
	3925 4850 3925 6150
Wire Wire Line
	4925 4850 4925 6150
Wire Wire Line
	5925 4850 5925 6150
Wire Wire Line
	6925 4850 6925 6150
Connection ~ 9525 2550
Connection ~ 9525 1900
Connection ~ 7525 1900
Connection ~ 7525 5150
Connection ~ 7525 2550
Connection ~ 7525 3200
Connection ~ 7525 3850
Wire Wire Line
	6925 2900 6925 3550
Wire Wire Line
	4925 3550 4925 4200
Wire Wire Line
	4925 2250 4925 2900
Wire Wire Line
	3925 1600 3925 2250
Wire Wire Line
	3525 2550 4525 2550
Wire Wire Line
	5525 3850 6525 3850
Wire Wire Line
	6525 4500 7525 4500
Wire Wire Line
	7525 5150 8525 5150
Wire Wire Line
	2925 1200 2925 1600
Wire Wire Line
	6925 3550 6925 4200
Connection ~ 6925 3550
Wire Wire Line
	1925 2900 1925 3550
$Comp
L kbd:SW_PUSH SW?
U 1 1 605DD198
P 2225 4200
AR Path="/605DD198" Ref="SW?"  Part="1" 
AR Path="/6006EC30/605DD198" Ref="SW?"  Part="1" 
AR Path="/605ACADC/605DD198" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/605DD198" Ref="SW41"  Part="1" 
F 0 "SW41" H 2225 4455 50  0000 C CNN
F 1 "SW_PUSH" H 2225 4364 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 2225 4200 50  0001 C CNN
F 3 "" H 2225 4200 50  0000 C CNN
	1    2225 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1925 3550 1925 4200
Connection ~ 1925 3550
Connection ~ 1925 4200
Wire Wire Line
	5925 2900 5925 3550
Connection ~ 5925 2900
Connection ~ 5925 4200
Wire Wire Line
	4525 3200 5525 3200
Wire Wire Line
	2525 1900 3525 1900
$Comp
L kbd:SW_PUSH SW?
U 1 1 5FE518D2
P 3225 1600
AR Path="/5FE518D2" Ref="SW?"  Part="1" 
AR Path="/6006EC30/5FE518D2" Ref="SW?"  Part="1" 
AR Path="/605ACADC/5FE518D2" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FE518D2" Ref="SW43"  Part="1" 
F 0 "SW43" H 3225 1855 50  0000 C CNN
F 1 "SW_PUSH" H 3225 1764 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 3225 1600 50  0001 C CNN
F 3 "" H 3225 1600 50  0000 C CNN
	1    3225 1600
	1    0    0    -1  
$EndComp
Connection ~ 2925 1600
Wire Wire Line
	2925 1600 2925 2250
$Comp
L kbd:SW_PUSH SW?
U 1 1 5FE52D83
P 4225 2250
AR Path="/5FE52D83" Ref="SW?"  Part="1" 
AR Path="/6006EC30/5FE52D83" Ref="SW?"  Part="1" 
AR Path="/605ACADC/5FE52D83" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FE52D83" Ref="SW50"  Part="1" 
F 0 "SW50" H 4225 2505 50  0000 C CNN
F 1 "SW_PUSH" H 4225 2414 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 4225 2250 50  0001 C CNN
F 3 "" H 4225 2250 50  0000 C CNN
	1    4225 2250
	1    0    0    -1  
$EndComp
Connection ~ 3925 2250
Wire Wire Line
	3925 2250 3925 2900
$Comp
L kbd:SW_PUSH SW?
U 1 1 5FE53252
P 5225 2900
AR Path="/5FE53252" Ref="SW?"  Part="1" 
AR Path="/6006EC30/5FE53252" Ref="SW?"  Part="1" 
AR Path="/605ACADC/5FE53252" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FE53252" Ref="SW57"  Part="1" 
F 0 "SW57" H 5225 3155 50  0000 C CNN
F 1 "SW_PUSH" H 5225 3064 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 5225 2900 50  0001 C CNN
F 3 "" H 5225 2900 50  0000 C CNN
	1    5225 2900
	1    0    0    -1  
$EndComp
Connection ~ 4925 2900
Wire Wire Line
	4925 2900 4925 3550
$Comp
L kbd:SW_PUSH SW?
U 1 1 5FE53828
P 6225 3550
AR Path="/5FE53828" Ref="SW?"  Part="1" 
AR Path="/6006EC30/5FE53828" Ref="SW?"  Part="1" 
AR Path="/605ACADC/5FE53828" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FE53828" Ref="SW64"  Part="1" 
F 0 "SW64" H 6225 3805 50  0000 C CNN
F 1 "SW_PUSH" H 6225 3714 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 6225 3550 50  0001 C CNN
F 3 "" H 6225 3550 50  0000 C CNN
	1    6225 3550
	1    0    0    -1  
$EndComp
Connection ~ 5925 3550
Wire Wire Line
	5925 3550 5925 4200
$Comp
L kbd:SW_PUSH SW?
U 1 1 5FE53DBE
P 7225 4200
AR Path="/5FE53DBE" Ref="SW?"  Part="1" 
AR Path="/6006EC30/5FE53DBE" Ref="SW?"  Part="1" 
AR Path="/605ACADC/5FE53DBE" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FE53DBE" Ref="SW71"  Part="1" 
F 0 "SW71" H 7225 4455 50  0000 C CNN
F 1 "SW_PUSH" H 7225 4364 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 7225 4200 50  0001 C CNN
F 3 "" H 7225 4200 50  0000 C CNN
	1    7225 4200
	1    0    0    -1  
$EndComp
Connection ~ 6925 4200
Wire Wire Line
	6925 4200 6925 4850
Wire Wire Line
	7925 4200 7925 4850
$Comp
L kbd:SW_PUSH SW?
U 1 1 5FE56FE9
P 8225 4850
AR Path="/5FE56FE9" Ref="SW?"  Part="1" 
AR Path="/6006EC30/5FE56FE9" Ref="SW?"  Part="1" 
AR Path="/605ACADC/5FE56FE9" Ref="SW?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FE56FE9" Ref="SW78"  Part="1" 
F 0 "SW78" H 8225 5105 50  0000 C CNN
F 1 "SW_PUSH" H 8225 5014 50  0000 C CNN
F 2 "keyboard_parts:Kailh_MX_Socket" H 8225 4850 50  0001 C CNN
F 3 "" H 8225 4850 50  0000 C CNN
	1    8225 4850
	1    0    0    -1  
$EndComp
Connection ~ 7925 4850
Wire Wire Line
	7925 4850 7925 6150
$Comp
L Diode:1N4148 D?
U 1 1 5FE575C3
P 8525 5000
AR Path="/5FE575C3" Ref="D?"  Part="1" 
AR Path="/6006EC30/5FE575C3" Ref="D?"  Part="1" 
AR Path="/605ACADC/5FE575C3" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FE575C3" Ref="D78"  Part="1" 
F 0 "D78" V 8571 4920 50  0000 R CNN
F 1 "1N4148" V 8480 4920 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8525 4825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8525 5000 50  0001 C CNN
	1    8525 5000
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 5FE5818A
P 7525 4350
AR Path="/5FE5818A" Ref="D?"  Part="1" 
AR Path="/6006EC30/5FE5818A" Ref="D?"  Part="1" 
AR Path="/605ACADC/5FE5818A" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FE5818A" Ref="D71"  Part="1" 
F 0 "D71" V 7571 4270 50  0000 R CNN
F 1 "1N4148" V 7480 4270 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7525 4175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7525 4350 50  0001 C CNN
	1    7525 4350
	0    -1   -1   0   
$EndComp
Connection ~ 7525 4500
Wire Wire Line
	7525 4500 8525 4500
$Comp
L Diode:1N4148 D?
U 1 1 5FE58D60
P 6525 3700
AR Path="/5FE58D60" Ref="D?"  Part="1" 
AR Path="/6006EC30/5FE58D60" Ref="D?"  Part="1" 
AR Path="/605ACADC/5FE58D60" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FE58D60" Ref="D64"  Part="1" 
F 0 "D64" V 6571 3620 50  0000 R CNN
F 1 "1N4148" V 6480 3620 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6525 3525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6525 3700 50  0001 C CNN
	1    6525 3700
	0    -1   -1   0   
$EndComp
Connection ~ 6525 3850
Wire Wire Line
	6525 3850 7525 3850
$Comp
L Diode:1N4148 D?
U 1 1 5FE59A1A
P 5525 3050
AR Path="/5FE59A1A" Ref="D?"  Part="1" 
AR Path="/6006EC30/5FE59A1A" Ref="D?"  Part="1" 
AR Path="/605ACADC/5FE59A1A" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FE59A1A" Ref="D57"  Part="1" 
F 0 "D57" V 5571 2970 50  0000 R CNN
F 1 "1N4148" V 5480 2970 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5525 2875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5525 3050 50  0001 C CNN
	1    5525 3050
	0    -1   -1   0   
$EndComp
Connection ~ 5525 3200
Wire Wire Line
	5525 3200 6525 3200
$Comp
L Diode:1N4148 D?
U 1 1 5FE5A13B
P 4525 2400
AR Path="/5FE5A13B" Ref="D?"  Part="1" 
AR Path="/6006EC30/5FE5A13B" Ref="D?"  Part="1" 
AR Path="/605ACADC/5FE5A13B" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FE5A13B" Ref="D50"  Part="1" 
F 0 "D50" V 4571 2320 50  0000 R CNN
F 1 "1N4148" V 4480 2320 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4525 2225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4525 2400 50  0001 C CNN
	1    4525 2400
	0    -1   -1   0   
$EndComp
Connection ~ 4525 2550
Wire Wire Line
	4525 2550 5525 2550
$Comp
L Diode:1N4148 D?
U 1 1 5FE5AC1E
P 3525 1750
AR Path="/5FE5AC1E" Ref="D?"  Part="1" 
AR Path="/6006EC30/5FE5AC1E" Ref="D?"  Part="1" 
AR Path="/605ACADC/5FE5AC1E" Ref="D?"  Part="1" 
AR Path="/5FDF19E6/605ACADC/5FE5AC1E" Ref="D43"  Part="1" 
F 0 "D43" V 3571 1670 50  0000 R CNN
F 1 "1N4148" V 3480 1670 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3525 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3525 1750 50  0001 C CNN
	1    3525 1750
	0    -1   -1   0   
$EndComp
Connection ~ 3525 1900
Wire Wire Line
	3525 1900 4525 1900
Wire Wire Line
	8925 2900 8925 6150
$EndSCHEMATC
