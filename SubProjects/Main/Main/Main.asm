;
;Main.asm
;
;Created: 16-03-2015 21:03:12
;Author: StjerneIdioten
; 

;Defines

.def DATA_HIGH = R19
.def DATA_LOW = R20

.org 0x0000
rjmp Init

;Board specific port names
.include "Delay_Macros.asm"
.include "Motor_Control.asm"
.include "USART_Library.asm"
.include "I2C.asm"
.include "MPU-6050.inc"
.include "MPU-6050.asm"

Init:
	
	;Initialize the stack
	LDI	R16, low(RAMEND)
    OUT	SPL, R16
	LDI	R16, high(RAMEND)
    OUT	SPH, R16			

	USART_Init
	Motor_Init
	I2C_Init 0x00,0x12	;Prescaler 4 and TWBR 12
	MPU6050_Init
	ldi R16, 'D'
	call USART_Transmit
	USART_Newline

	rjmp	Main

Main:
	
	call I2C_Start

	I2C_Write MPU6050_ADDRESS_W

	I2C_Write MPU6050_RA_GYRO_ZOUT_H

	call I2C_Start

	I2C_Write MPU6050_ADDRESS_R

	I2C_Read I2C_Ack

	mov DATA_HIGH, R16

	I2C_Read I2C_Nack

	mov DATA_LOW, R16

	call I2C_Stop
	
	mov R16, DATA_HIGH

	call USART_Binary

	mov R16, DATA_LOW

	call USART_Binary

	USART_Newline

	DELAY_MS 100
	
rjmp	MAIN

