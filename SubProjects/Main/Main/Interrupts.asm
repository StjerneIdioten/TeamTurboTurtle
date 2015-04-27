; This library deals with the setup of interrupts

.MACRO Interrupts_Init
			ldi		R16, (1<<OCIE0)			; enable interrupt on output compare match for timer0
			out		TIMSK, R16				; timer/interrupt masking register
			
			ldi R16, 0x48					; initialize comparator with bandgap reference and enable interrupt
			out ACSR, R16

			ldi R16, (0<<ACME)				; disable comparator multiplexer (AIN1 = inverting input for comparator)
			out SFIOR, R16

			sei								; enable global interrupt
.ENDMACRO
