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
L LED D1
U 1 1 55659A41
P 1800 1200
F 0 "D1" H 1800 1300 50  0000 C CNN
F 1 "LED" H 1800 1100 50  0000 C CNN
F 2 "LEDs:LED-0805" H 1800 1200 60  0001 C CNN
F 3 "" H 1800 1200 60  0000 C CNN
	1    1800 1200
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5565A70D
P 1350 1350
F 0 "R1" V 1430 1350 50  0000 C CNN
F 1 "220R" V 1350 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1280 1350 30  0001 C CNN
F 3 "" H 1350 1350 30  0000 C CNN
	1    1350 1350
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 5565A92C
P 1800 1500
F 0 "D2" H 1800 1600 50  0000 C CNN
F 1 "LED" H 1800 1400 50  0000 C CNN
F 2 "LEDs:LED-0805" H 1800 1500 60  0001 C CNN
F 3 "" H 1800 1500 60  0000 C CNN
	1    1800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1200 2000 1500
Wire Wire Line
	1600 1200 1600 1500
Connection ~ 1600 1350
$Comp
L LED D3
U 1 1 5565B6D3
P 1800 1800
F 0 "D3" H 1800 1900 50  0000 C CNN
F 1 "LED" H 1800 1700 50  0000 C CNN
F 2 "LEDs:LED-0805" H 1800 1800 60  0001 C CNN
F 3 "" H 1800 1800 60  0000 C CNN
	1    1800 1800
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5565B6D9
P 1350 1950
F 0 "R2" V 1430 1950 50  0000 C CNN
F 1 "220R" V 1350 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1280 1950 30  0001 C CNN
F 3 "" H 1350 1950 30  0000 C CNN
	1    1350 1950
	0    1    1    0   
$EndComp
$Comp
L LED D4
U 1 1 5565B6DF
P 1800 2100
F 0 "D4" H 1800 2200 50  0000 C CNN
F 1 "LED" H 1800 2000 50  0000 C CNN
F 2 "LEDs:LED-0805" H 1800 2100 60  0001 C CNN
F 3 "" H 1800 2100 60  0000 C CNN
	1    1800 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1800 2000 2100
Wire Wire Line
	1600 1800 1600 2100
$Comp
L LED D5
U 1 1 5565BBFC
P 1800 2400
F 0 "D5" H 1800 2500 50  0000 C CNN
F 1 "LED" H 1800 2300 50  0000 C CNN
F 2 "LEDs:LED-0805" H 1800 2400 60  0001 C CNN
F 3 "" H 1800 2400 60  0000 C CNN
	1    1800 2400
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5565BC02
P 1350 2550
F 0 "R3" V 1430 2550 50  0000 C CNN
F 1 "220R" V 1350 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1280 2550 30  0001 C CNN
F 3 "" H 1350 2550 30  0000 C CNN
	1    1350 2550
	0    1    1    0   
$EndComp
$Comp
L LED D6
U 1 1 5565BC08
P 1800 2700
F 0 "D6" H 1800 2800 50  0000 C CNN
F 1 "LED" H 1800 2600 50  0000 C CNN
F 2 "LEDs:LED-0805" H 1800 2700 60  0001 C CNN
F 3 "" H 1800 2700 60  0000 C CNN
	1    1800 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2400 2000 2700
Wire Wire Line
	1600 2400 1600 2700
Connection ~ 1600 2550
$Comp
L LED D7
U 1 1 5565BC12
P 1800 3000
F 0 "D7" H 1800 3100 50  0000 C CNN
F 1 "LED" H 1800 2900 50  0000 C CNN
F 2 "LEDs:LED-0805" H 1800 3000 60  0001 C CNN
F 3 "" H 1800 3000 60  0000 C CNN
	1    1800 3000
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5565BC18
P 1350 3150
F 0 "R4" V 1430 3150 50  0000 C CNN
F 1 "220R" V 1350 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1280 3150 30  0001 C CNN
F 3 "" H 1350 3150 30  0000 C CNN
	1    1350 3150
	0    1    1    0   
$EndComp
$Comp
L LED D8
U 1 1 5565BC1E
P 1800 3300
F 0 "D8" H 1800 3400 50  0000 C CNN
F 1 "LED" H 1800 3200 50  0000 C CNN
F 2 "LEDs:LED-0805" H 1800 3300 60  0001 C CNN
F 3 "" H 1800 3300 60  0000 C CNN
	1    1800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3000 2000 3300
Wire Wire Line
	1600 3000 1600 3300
Connection ~ 1600 3150
$Comp
L LED D9
U 1 1 5565C0F7
P 1800 3600
F 0 "D9" H 1800 3700 50  0000 C CNN
F 1 "LED" H 1800 3500 50  0000 C CNN
F 2 "LEDs:LED-0805" H 1800 3600 60  0001 C CNN
F 3 "" H 1800 3600 60  0000 C CNN
	1    1800 3600
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5565C0FD
P 1350 3750
F 0 "R5" V 1430 3750 50  0000 C CNN
F 1 "220R" V 1350 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1280 3750 30  0001 C CNN
F 3 "" H 1350 3750 30  0000 C CNN
	1    1350 3750
	0    1    1    0   
$EndComp
$Comp
L LED D10
U 1 1 5565C103
P 1800 3900
F 0 "D10" H 1800 4000 50  0000 C CNN
F 1 "LED" H 1800 3800 50  0000 C CNN
F 2 "LEDs:LED-0805" H 1800 3900 60  0001 C CNN
F 3 "" H 1800 3900 60  0000 C CNN
	1    1800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3600 2000 3900
Wire Wire Line
	1600 3600 1600 3900
Connection ~ 1600 3750
$Comp
L LED D11
U 1 1 5565C10D
P 1800 4200
F 0 "D11" H 1800 4300 50  0000 C CNN
F 1 "LED" H 1800 4100 50  0000 C CNN
F 2 "LEDs:LED-0805" H 1800 4200 60  0001 C CNN
F 3 "" H 1800 4200 60  0000 C CNN
	1    1800 4200
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5565C113
P 1350 4350
F 0 "R6" V 1430 4350 50  0000 C CNN
F 1 "220R" V 1350 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1280 4350 30  0001 C CNN
F 3 "" H 1350 4350 30  0000 C CNN
	1    1350 4350
	0    1    1    0   
$EndComp
$Comp
L LED D12
U 1 1 5565C119
P 1800 4500
F 0 "D12" H 1800 4600 50  0000 C CNN
F 1 "LED" H 1800 4400 50  0000 C CNN
F 2 "LEDs:LED-0805" H 1800 4500 60  0001 C CNN
F 3 "" H 1800 4500 60  0000 C CNN
	1    1800 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4200 2000 4500
Wire Wire Line
	1600 4200 1600 4500
Connection ~ 1600 4350
$Comp
L LED D13
U 1 1 5565C123
P 1800 4800
F 0 "D13" H 1800 4900 50  0000 C CNN
F 1 "LED" H 1800 4700 50  0000 C CNN
F 2 "LEDs:LED-0805" H 1800 4800 60  0001 C CNN
F 3 "" H 1800 4800 60  0000 C CNN
	1    1800 4800
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5565C129
P 1350 4950
F 0 "R7" V 1430 4950 50  0000 C CNN
F 1 "220R" V 1350 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1280 4950 30  0001 C CNN
F 3 "" H 1350 4950 30  0000 C CNN
	1    1350 4950
	0    1    1    0   
$EndComp
$Comp
L LED D14
U 1 1 5565C12F
P 1800 5100
F 0 "D14" H 1800 5200 50  0000 C CNN
F 1 "LED" H 1800 5000 50  0000 C CNN
F 2 "LEDs:LED-0805" H 1800 5100 60  0001 C CNN
F 3 "" H 1800 5100 60  0000 C CNN
	1    1800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4800 2000 5100
Wire Wire Line
	1600 4800 1600 5100
Connection ~ 1600 4950
$Comp
L CONN_01X01 P1
U 1 1 5566393C
P 1000 1350
F 0 "P1" H 1000 1450 50  0000 C CNN
F 1 "CONN_01X01" V 1100 1350 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 1000 1350 60  0001 C CNN
F 3 "" H 1000 1350 60  0000 C CNN
	1    1000 1350
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P2
U 1 1 55663A83
P 1000 1950
F 0 "P2" H 1000 2050 50  0000 C CNN
F 1 "CONN_01X01" V 1100 1950 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 1000 1950 60  0001 C CNN
F 3 "" H 1000 1950 60  0000 C CNN
	1    1000 1950
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P3
U 1 1 55663D53
P 1000 2550
F 0 "P3" H 1000 2650 50  0000 C CNN
F 1 "CONN_01X01" V 1100 2550 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 1000 2550 60  0001 C CNN
F 3 "" H 1000 2550 60  0000 C CNN
	1    1000 2550
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P4
U 1 1 55663DA0
P 1000 3150
F 0 "P4" H 1000 3250 50  0000 C CNN
F 1 "CONN_01X01" V 1100 3150 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 1000 3150 60  0001 C CNN
F 3 "" H 1000 3150 60  0000 C CNN
	1    1000 3150
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P5
U 1 1 55664087
P 1000 3750
F 0 "P5" H 1000 3850 50  0000 C CNN
F 1 "CONN_01X01" V 1100 3750 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 1000 3750 60  0001 C CNN
F 3 "" H 1000 3750 60  0000 C CNN
	1    1000 3750
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P6
U 1 1 55664206
P 1000 4350
F 0 "P6" H 1000 4450 50  0000 C CNN
F 1 "CONN_01X01" V 1100 4350 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 1000 4350 60  0001 C CNN
F 3 "" H 1000 4350 60  0000 C CNN
	1    1000 4350
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P7
U 1 1 5566424C
P 1000 4950
F 0 "P7" H 1000 5050 50  0000 C CNN
F 1 "CONN_01X01" V 1100 4950 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 1000 4950 60  0001 C CNN
F 3 "" H 1000 4950 60  0000 C CNN
	1    1000 4950
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P8
U 1 1 55664437
P 1000 5550
F 0 "P8" H 1000 5650 50  0000 C CNN
F 1 "CONN_01X01" V 1100 5550 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 1000 5550 60  0001 C CNN
F 3 "" H 1000 5550 60  0000 C CNN
	1    1000 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 1350 1500 1350
Wire Wire Line
	1600 1950 1500 1950
Wire Wire Line
	1600 2550 1500 2550
Wire Wire Line
	1600 3150 1500 3150
Wire Wire Line
	1600 3750 1500 3750
Wire Wire Line
	1600 4350 1500 4350
Wire Wire Line
	1600 4950 1500 4950
Wire Wire Line
	1200 5550 2100 5550
Connection ~ 1200 5550
Connection ~ 1600 1950
Connection ~ 1200 1350
Connection ~ 1500 1350
Connection ~ 1500 4950
Connection ~ 1200 4950
Connection ~ 1200 4350
Connection ~ 1500 4350
Connection ~ 1200 3750
Connection ~ 1500 3750
Connection ~ 1500 3150
Connection ~ 1200 3150
Connection ~ 1200 2550
Connection ~ 1500 2550
Connection ~ 1500 1950
Connection ~ 1200 1950
Wire Wire Line
	2100 5550 2100 1350
Wire Wire Line
	2100 1350 2000 1350
Connection ~ 2000 1350
Wire Wire Line
	2000 1950 2100 1950
Connection ~ 2100 1950
Connection ~ 2000 1950
Wire Wire Line
	2000 2550 2100 2550
Connection ~ 2100 2550
Connection ~ 2000 2550
Wire Wire Line
	2000 3150 2100 3150
Connection ~ 2100 3150
Connection ~ 2000 3150
Wire Wire Line
	2000 3750 2100 3750
Connection ~ 2100 3750
Connection ~ 2000 3750
Wire Wire Line
	2000 4350 2100 4350
Connection ~ 2100 4350
Connection ~ 2000 4350
Wire Wire Line
	2000 4950 2100 4950
Connection ~ 2100 4950
Connection ~ 2000 4950
$EndSCHEMATC
