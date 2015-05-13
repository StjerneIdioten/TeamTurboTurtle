.include "m32def.inc"

;Mapping of all the interrupts, must be the first include!
.include "Interrupt_Mapping.asm"

;Library includes
.include "Macros.asm"
.include "Math.asm"
.include "SRAM-Mapping.asm"
.include "USART_Library.asm"
.include "Delays.asm"
.include "Motor_Control.asm"
.include "I2C.asm"
.include "MPU-6050.inc"
.include "MPU-6050.asm"
.include "Time.asm"
;.include "EXT1.asm"
.include "WheelSpeed.asm"
.include "LapCounter.asm"
.include "Communication_Protocol.asm"
.include "Setup.asm"

Init:
					Setup
					;EXT1_init	
			ldi		R16, 90
			;out 	OCR2, R16
			
			clr		R16
			mov		R10, R16
			mov		R11, R16
					
			sei					;Enable global interrupt	
			rjmp Main

Main:		ldi		R16, 60
			call	Delay_MS
			
			lds		R16, Ticks_Lap_L
			lds		R17, Ticks_Lap_H
			
			;call	USART_Decimal_S16
					;USART_NewLine	

			rjmp Main
