.MACRO LapCounter_Init

	clr	R16
	sts	Time_Stamp_L, R16
	sts	Time_Stamp_M, R16
	sts	Time_Stamp_H, R16
			
	sts	Lap_time_L, R16
	sts	Lap_time_M, R16
	sts	Lap_time_H, R16

	in R16, ACSR
	ori R16, 0x48						;Initialize comparator with bandgap reference and enable interrupt
	out ACSR, R16						;

	in R16, SFIOR						;
	andi R16, ~(1<<ACME)				;Disable comparator multiplexer (AIN1 = inverting input for comparator)
	out SFIOR, R16						;

	cbi DDRB,PB3						;Make PB3 input for the comparator

.ENDMACRO

Lap_Time:	

	Push_Register_7 R0, R1, R2, R3, R4, R5, R16

	lds		R0, Timer_1ms_L				
	lds		R1, Timer_1ms_M				; Current time since startup in ms
	lds		R2, Timer_1ms_H				 
			
	lds		R3, Time_Stamp_L			
	lds		R4, Time_Stamp_M			; Time stamp at start of lap
	lds		R5, Time_Stamp_H
			
	sts		Time_Stamp_L, R0			
	sts		Time_Stamp_M, R1			; New time stamp for next lap
	sts		Time_Stamp_H, R2	
			
	sub		R0, R3						
	sbc		R1, R4						; Difference between current time and last time stamp
	sbc		R2, R5
		
	ldi R16, 2		
	cp R1, R16
	brlo Lap_Time_End
	
	sts		Lap_time_L, R0				
	sts		Lap_time_M, R1				; Latest lap time
	sts		Lap_time_H, R2			
	
	lds		R0, Ticks_L
	lds		R1, Ticks_H
	
	sts		Ticks_Lap_L, R0
	sts		Ticks_Lap_H, R1
	
	/*
	ldi R16, 'L'
	call USART_Transmit
	*/

	mov		R16, R0
	mov		R17, R1
	
	/*
	call	USART_Decimal_16
			USART_NewLine	
	*/

	ldi		R16, 0x00
	sts		Ticks_L, R16
	sts		Ticks_H, R16
	
	ldi		R16, 0x40					; Disable Comparator interrupt
	out		ACSR, R16					; Global interrupt register
			
	ldi		R16, 0b01011000				; Enable Comparator interrupt and clear comparator interrupt flag
	out		ACSR, R16					; Global interrupt register
	
	call AI_LAP_INTERRUPT

Lap_Time_End:

	Pop_Register_7 R16, R5, R4, R3, R2, R1, R0

			reti			
