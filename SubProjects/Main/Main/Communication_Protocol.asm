.Macro Comm_Init
	ldi R16, 0x01							;Initialize the counter as being the first byte
	sts Comm_Received_Byte_Num, R16			;
	clr R16									;Clear all of the SRAM-values used
	sts Comm_Received_Byte_1, R16			;
	sts Comm_Received_Byte_2, R16			;
	sts Comm_Received_Byte_3, R16			;
.ENDMACRO


;Define Types
.equ Comm_Type_SET = 0x55					;Used for setting a value or activating a command
.equ Comm_Type_GET = 0xAA					;Used for getting a value from the microcontroller

;Define Set Commands
.equ Comm_Command_Start = 0x10				;Start the car at a specific % of motor speed
.equ Comm_Command_Stop = 0x11				;Stop the car

;Define Get Commands
.equ Comm_Command_Yaccel_H = 0xA1
.equ Comm_Command_Yaccel_L = 0xA2

.equ Comm_Command_Zgyro_H = 0xA3
.equ Comm_Command_ZGyro_L = 0xA4

.equ Comm_Command_Ticks_H = 0xA5
.equ Comm_Command_Ticks_L = 0xA6

.equ Comm_Command_LapTime_H = 0xA7
.equ Comm_Command_LapTime_L = 0xA8


;Implemetation of the required communication protocol
Comm_Received:

	lds R16, Comm_Received_Byte_Num			;What byte # did we receive

	cpi R16, 0x01							;If it was the first
	breq Comm_Received_Type					;Set the type

	cpi R16, 0x02							;If it was the second
	breq Comm_Received_Command				;Set the command

	;Working under the assumption that if it was not the first or second byte, then it must be the third.

	rjmp Comm_Received_Execute				;Go to the execution of the received telegram


;Received a type
Comm_Received_Type:

	ldi R16, 0x02							;Set the counter to two
	sts Comm_Received_Byte_Num, R16			;Store it

	in r16, UDR								;Store the received type in SRAM
	sts Comm_Received_Byte_1, R16			;	
	reti									;Return from interrupt

;Received a command
Comm_Received_Command:

	ldi R16, 0x03							;Set the counter to three
	sts Comm_Received_Byte_Num, R16			;Store it

	in r16, UDR								;Store the received command in SRAM
	sts Comm_Received_Byte_2, R16			;
	reti									;Return from interrupt

;Execute the telegram received
Comm_Received_Execute:

	in r16, UDR								;Read in the received parameter
	sts Comm_Received_Byte_3, R16			;Store it in SRAM
	
	ldi R16, 0x01							;Reset the counter
	sts Comm_Received_Byte_Num, R16			;Store it in SRAM

;---------------------------------------------------------------------------------------------------------------------
;Types
;---------------------------------------------------------------------------------------------------------------------

	lds R16, Comm_Received_Byte_1			;Load in the first(Type) byte

	;SET
	cpi R16, Comm_Type_SET					;Check if we received a SET and branch if it was
	breq Comm_Received_Type_Set				;

	;GET
	cpi R16, Comm_Type_GET					;Check if we received a GET and branch if it was
	breq Comm_Received_Type_Get				;

	reti
;---------------------------------------------------------------------------------------------------------------------
;SET's
;---------------------------------------------------------------------------------------------------------------------

Comm_Received_Type_Set:

	lds R16, Comm_Received_Byte_2			;Load in the second(Command) byte

	cpi R16, Comm_Command_Start				;Check if we received a Start command
	breq Comm_Received_Command_Start		;

	cpi R16, Comm_Command_Stop				;Check if we received a Stop command
	breq Comm_Received_Command_Stop			;

	;Insert error handling here

	reti									;Do nothing if it was not a legit code

;Start
Comm_Received_Command_Start:

	lds R16, Comm_Received_Byte_3			;Load in the third(Parameter) byte

	call Motor_Set_Percentage

Comm_Received_Command_Start_End:

	reti									;Return from interrupt

;Stop
Comm_Received_Command_Stop:

	ldi R16, 0x00							;Load in 0x00
	out OCR2, R16							;And set the pwm duty cycle to nothing to stop the motor.

	reti


;---------------------------------------------------------------------------------------------------------------------
;GET's
;---------------------------------------------------------------------------------------------------------------------

Comm_Received_Type_Get:	

	lds R16, Comm_Received_Byte_2			;Load in the second(Command) byte

	cpi R16, Comm_Command_Yaccel_H			
	breq Comm_Received_Command_Yaccel		

	cpi R16, Comm_Command_Zgyro_H			
	breq Comm_Received_Command_Zgyro		

	cpi R16, Comm_Command_Ticks_H
	breq Comm_Received_Command_Ticks

	;Insert error handling here

	reti									;Do nothing if it was not a legit code

Comm_Received_Command_Yaccel:

	call MPU6050_Read_Accel_Y

	ldi R16, 0xBB
	call USART_Transmit

	ldi R16, Comm_Command_Yaccel_H
	call USART_Transmit

	lds R16, ACCEL_YOUT_H
	call USART_Transmit
	
	ldi R16, 0xBB
	call USART_Transmit

	ldi R16, Comm_Command_Yaccel_L
	call USART_Transmit

	lds R16, ACCEL_YOUT_L
	call USART_Transmit

	reti

Comm_Received_Command_Zgyro:
	call MPU6050_Read_Gyro_Z

	ldi R16, 0xBB
	call USART_Transmit

	ldi R16, Comm_Command_Zgyro_H
	call USART_Transmit

	lds R16, GYRO_ZOUT_H
	call USART_Transmit
	
	ldi R16, 0xBB
	call USART_Transmit

	ldi R16, Comm_Command_Zgyro_L
	call USART_Transmit

	lds R16, GYRO_ZOUT_L
	call USART_Transmit

	reti

Comm_Received_Command_Ticks:
	ldi R16, 0xBB
	call USART_Transmit

	ldi R16, Comm_Command_Ticks_H
	call USART_Transmit

	lds R16, Ticks_H
	call USART_Transmit
	
	ldi R16, 0xBB
	call USART_Transmit

	ldi R16, Comm_Command_Ticks_L
	call USART_Transmit

	lds R16, Ticks_L
	call USART_Transmit

	reti

;---------------------------------------------------------------------------------------------------------------------
;Send
;---------------------------------------------------------------------------------------------------------------------

Comm_Send_LapTime:
	ldi R16, 0xBB
	call USART_Transmit

	ldi R16, Comm_Command_LapTime_H
	call USART_Transmit

	lds R16, Ticks_Lap_H
	call USART_Transmit
	
	ldi R16, 0xBB
	call USART_Transmit

	ldi R16, Comm_Command_LapTime_L
	call USART_Transmit

	lds R16, Ticks_Lap_L
	call USART_Transmit

	ret