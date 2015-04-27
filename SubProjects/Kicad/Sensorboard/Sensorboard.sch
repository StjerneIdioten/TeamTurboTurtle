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
LIBS:special
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
LIBS:ToyRaceCar_V2_REV3
LIBS:Breakout_Boards
LIBS:Sensorboard-cache
EELAYER 25 0
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
L ToyRaceCar_V2_REV3_J2 P3
U 1 1 5536E168
P 2350 1350
F 0 "P3" H 2350 1900 50  0000 C CNN
F 1 "ToyRaceCar_V2_REV3_J2" V 2650 1350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10" H 2350 1350 60  0001 C CNN
F 3 "" H 2350 1350 60  0000 C CNN
	1    2350 1350
	1    0    0    -1  
$EndComp
$Comp
L ToyRaceCar_V2_REV3_J3 P2
U 1 1 5536E214
P 1100 2500
F 0 "P2" H 1100 3050 50  0000 C CNN
F 1 "ToyRaceCar_V2_REV3_J3" V 1600 2500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10" H 1100 2500 60  0001 C CNN
F 3 "" H 1100 2500 60  0000 C CNN
	1    1100 2500
	1    0    0    -1  
$EndComp
$Comp
L ToyRaceCar_V2_REV3_J4 P1
U 1 1 5536E349
P 1100 1350
F 0 "P1" H 1100 1900 50  0000 C CNN
F 1 "ToyRaceCar_V2_REV3_J4" V 1600 1350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10" H 1100 1350 60  0001 C CNN
F 3 "" H 1100 1350 60  0000 C CNN
	1    1100 1350
	1    0    0    -1  
$EndComp
$Comp
L ToyRaceCar_V2_REV3_J1 P4
U 1 1 55381BB2
P 3800 2750
F 0 "P4" H 3800 3100 50  0000 C CNN
F 1 "ToyRaceCar_V2_REV3_J1" V 4200 2750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 3800 2750 60  0001 C CNN
F 3 "" H 3800 2750 60  0000 C CNN
	1    3800 2750
	1    0    0    -1  
$EndComp
$Comp
L ToyRaceCar_V2_REV3_J5 P6
U 1 1 55381BE9
P 3250 1100
F 0 "P6" H 3250 1350 50  0000 C CNN
F 1 "ToyRaceCar_V2_REV3_J5" V 3850 1100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 3250 1100 60  0001 C CNN
F 3 "" H 3250 1100 60  0000 C CNN
	1    3250 1100
	1    0    0    -1  
$EndComp
$Comp
L MPU-6050 P5
U 1 1 55381C69
P 3800 4250
F 0 "P5" H 3800 4700 50  0000 C CNN
F 1 "MPU-6050" V 4050 4300 50  0000 C CNN
F 2 "Sensorboard:MPU-6050" H 3800 4250 60  0001 C CNN
F 3 "" H 3800 4250 60  0000 C CNN
	1    3800 4250
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 55382378
P 1850 4200
F 0 "R3" V 1750 4200 50  0000 C CNN
F 1 "10K" V 1850 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1780 4200 30  0001 C CNN
F 3 "" H 1850 4200 30  0000 C CNN
	1    1850 4200
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 553823F8
P 2000 4200
F 0 "R4" V 2080 4200 50  0000 C CNN
F 1 "10K" V 2000 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1930 4200 30  0001 C CNN
F 3 "" H 2000 4200 30  0000 C CNN
	1    2000 4200
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5538245D
P 1350 4750
F 0 "R1" V 1430 4750 50  0000 C CNN
F 1 "10K" V 1350 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1280 4750 30  0001 C CNN
F 3 "" H 1350 4750 30  0000 C CNN
	1    1350 4750
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 553824EF
P 1650 4750
F 0 "R2" V 1730 4750 50  0000 C CNN
F 1 "10K" V 1650 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1580 4750 30  0001 C CNN
F 3 "" H 1650 4750 30  0000 C CNN
	1    1650 4750
	-1   0    0    1   
$EndComp
$Comp
L BSS138 Q1
U 1 1 55382588
P 950 4250
F 0 "Q1" V 850 4350 50  0000 L CNN
F 1 "BSS138" V 1300 4000 50  0000 L CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23_Handsoldering" V 1200 4000 50  0001 L CIN
F 3 "" H 950 4250 50  0000 L CNN
	1    950  4250
	0    -1   -1   0   
$EndComp
$Comp
L BSS138 Q2
U 1 1 553825E4
P 1450 4250
F 0 "Q2" V 1350 4350 50  0000 L CNN
F 1 "BSS138" V 1800 3950 50  0000 L CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23_Handsoldering" V 1700 3950 50  0001 L CIN
F 3 "" H 1450 4250 50  0000 L CNN
	1    1450 4250
	0    -1   -1   0   
$EndComp
Text Notes 800  5050 0    60   ~ 0
I2C Logic Level Shifter 3.3V<->5V
Text Label 700  2050 0    60   ~ 0
+5V
Text Label 700  2150 0    60   ~ 0
GND
Text Label 3350 3900 0    60   ~ 0
+5V
Text Label 3350 4000 0    60   ~ 0
GND
Text Label 1000 4900 0    60   ~ 0
+3.3V
Text Label 2050 4350 0    60   ~ 0
+5V
NoConn ~ 900  1100
NoConn ~ 900  1200
NoConn ~ 900  1300
NoConn ~ 900  1400
NoConn ~ 900  1500
NoConn ~ 900  1600
NoConn ~ 900  1700
NoConn ~ 2150 1100
NoConn ~ 2150 1200
NoConn ~ 2150 1300
NoConn ~ 2150 1400
NoConn ~ 2150 1500
NoConn ~ 2150 1600
NoConn ~ 2150 1700
NoConn ~ 2150 1800
NoConn ~ 3050 950 
NoConn ~ 3050 1050
NoConn ~ 3050 1150
NoConn ~ 3600 2700
NoConn ~ 3600 2900
NoConn ~ 3600 3000
NoConn ~ 900  2650
NoConn ~ 900  2550
NoConn ~ 900  2450
NoConn ~ 900  2350
NoConn ~ 900  2250
NoConn ~ 3600 4300
NoConn ~ 3600 4400
NoConn ~ 3600 4500
NoConn ~ 3600 4600
Text Label 3300 2500 0    60   ~ 0
+3.3V
$Comp
L CNY70 P7
U 1 1 5538F827
P 3800 3400
F 0 "P7" H 3800 3650 50  0000 C CNN
F 1 "CNY70" V 4400 3400 50  0000 C CNN
F 2 "Sensorboard:KK254-4" H 3800 3400 60  0001 C CNN
F 3 "" H 3800 3400 60  0000 C CNN
	1    3800 3400
	1    0    0    -1  
$EndComp
Text Label 700  2950 0    60   ~ 0
GND
Text Label 3300 2600 0    60   ~ 0
GND
Text Label 2800 1250 0    60   ~ 0
GND
Text Label 700  900  0    60   ~ 0
+5V
Text Label 700  1000 0    60   ~ 0
GND
Text Label 1950 900  0    60   ~ 0
+5V
Text Label 1950 1000 0    60   ~ 0
GND
Text Label 2050 3950 0    60   ~ 0
SDA(5V)
Text Label 2050 4050 0    60   ~ 0
SCL(5V)
Text Label 2050 4450 0    60   ~ 0
SCL(3.3V)
Text Label 2050 4550 0    60   ~ 0
SDA(3.3V)
Wire Wire Line
	1650 4150 1650 4600
Wire Wire Line
	1250 4150 1250 4050
Wire Wire Line
	1250 4050 2050 4050
Wire Wire Line
	750  4150 750  3950
Wire Wire Line
	750  3950 2050 3950
Wire Wire Line
	2000 3950 2000 4050
Wire Wire Line
	1500 4900 1500 4450
Connection ~ 1000 4900
Wire Wire Line
	1000 4450 1000 4900
Connection ~ 1350 4900
Connection ~ 1500 4900
Connection ~ 1650 4450
Connection ~ 2000 3950
Wire Wire Line
	1850 4050 1850 4050
Connection ~ 1850 4050
Wire Wire Line
	1850 4350 2050 4350
Connection ~ 2000 4350
Wire Wire Line
	3350 4000 3600 4000
Wire Wire Line
	3600 3900 3350 3900
Wire Wire Line
	900  2050 700  2050
Wire Wire Line
	900  2150 700  2150
Wire Wire Line
	1000 4900 1650 4900
Wire Wire Line
	3600 2500 3300 2500
Wire Wire Line
	900  2950 700  2950
Wire Wire Line
	3600 2600 3300 2600
Wire Wire Line
	3050 1250 2800 1250
Wire Wire Line
	900  900  700  900 
Wire Wire Line
	900  1000 700  1000
Wire Wire Line
	2150 900  1950 900 
Wire Wire Line
	2150 1000 1950 1000
Wire Wire Line
	1650 4450 2050 4450
Wire Wire Line
	1150 4150 1150 4550
Connection ~ 1350 4550
Wire Wire Line
	1350 4600 1350 4550
Wire Wire Line
	1150 4550 2050 4550
Wire Notes Line
	700  3850 2500 3850
Wire Notes Line
	2500 3850 2500 4950
Wire Notes Line
	2500 4950 700  4950
Wire Notes Line
	700  4950 700  3850
Wire Wire Line
	3600 4100 3200 4100
Wire Wire Line
	3600 4200 3200 4200
Text Label 3200 4100 0    60   ~ 0
SCL(3.3V)
Text Label 3200 4200 0    60   ~ 0
SDA(3.3V)
Text Label 550  2850 0    60   ~ 0
SDA(5V)
Text Label 550  2750 0    60   ~ 0
SCL(5V)
Wire Wire Line
	900  2850 550  2850
Wire Wire Line
	900  2750 550  2750
Wire Wire Line
	3600 3450 3350 3450
Wire Wire Line
	3600 3350 3350 3350
Text Label 3350 3350 0    60   ~ 0
+5V
Text Label 3350 3450 0    60   ~ 0
+5V
$Comp
L R R6
U 1 1 553C6BF8
P 3400 3550
F 0 "R6" V 3480 3550 50  0000 C CNN
F 1 "560R" V 3400 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3330 3550 30  0001 C CNN
F 3 "" H 3400 3550 30  0000 C CNN
	1    3400 3550
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 553C6C67
P 3250 3250
F 0 "R5" V 3330 3250 50  0000 C CNN
F 1 "22K" V 3250 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3180 3250 30  0001 C CNN
F 3 "" H 3250 3250 30  0000 C CNN
	1    3250 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 3550 3550 3550
Wire Wire Line
	3250 3550 3050 3550
Text Label 3050 3550 0    60   ~ 0
GND
Wire Wire Line
	900  1800 700  1800
Text Label 700  1800 0    60   ~ 0
VIN
Wire Wire Line
	3600 2800 3500 2800
Wire Wire Line
	3500 2800 3500 3250
Wire Wire Line
	3400 3250 3600 3250
Connection ~ 3500 3250
Wire Wire Line
	3100 3250 2950 3250
Text Label 2950 3250 0    60   ~ 0
GND
$Comp
L SS495A P8
U 1 1 553E0EE3
P 3750 5300
F 0 "P8" H 3750 5500 50  0000 C CNN
F 1 "SS495A" V 3950 5300 50  0000 C CNN
F 2 "Sensorboard:KK254-3" H 3750 5300 60  0001 C CNN
F 3 "" H 3750 5300 60  0000 C CNN
	1    3750 5300
	-1   0    0    1   
$EndComp
$EndSCHEMATC
