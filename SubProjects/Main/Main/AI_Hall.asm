AI_HALL_INTERRUPT:							;Interrupt fra hall sensoren der fungerer som et tachometer

		lds		R20, AI_Check_Lap			

		cpi		R20, AI_Lap_Speed			;Checks if we are currently running a speed lap.
		breq	Hall_Speed_Lap

		cpi		R20, AI_Lap_Mapping			;Checks if we are currently running a mapping lap.
		breq	Hall_Map_Lap

		;Else its preround and we do nothing
		
		ldi		R20,			100			;Sætter hastigheden til 80, så bilen langsomt bevæger sig mod målstregen uden problemer1
		out		OCR2,			R20	
		
		
;		ldi		R16,	HIGH(Periode_p)			;Reference periode.
;		lds		R17,	Pulse_Time_H		;Indlæser den målte hastighed (periode)
	;	ldi		R18,	Hastighed_p			;Sætter motor output standard

;		call	Hastigheds_kontrol
		
ret
		
;I den første runde skal der blot måles op, så her laver hall interruptet ikke andet end at
;måle "afstanden" og justerer hastigheden så accelerometeret får gode resultater.
Hall_Map_Lap:
		
		
		inc	Laengde


		ldi	R16, HIGH(Periode_m)	;Reference periode.
		lds	R17, Pulse_Time_H		;Indlæser den målte hastighed (periode)


		call	Hastigheds_kontrol

ret

Hall_Speed_Lap:									;Hvis den første omgang er færdig skal Hall interruptet stadig måle op
;										og justerer hastigheden. Den skal dog yderligere skifte mellem de målte banestykker
		ldi		R16,	0
		out		OCR2,	R16

;		cpi		Laengde,	0			;Først checkes om der er noget af Laengden tilbage.
;		brne	RUN
		ld		Laengde,	Y+			;Ellers indlæses det næste stykke
		ld		Type,		Y+
		

		
		ldi		YH,			HIGH(Map_Start)		;Indlæser første Ram hukommelse tildelt til mapping
		ldi		YL,			LOW(Map_Start)		;
		cli
NEXT:
		
		ldi		R16, 250
call	Delay_MS

		ldi		R16,	'T'
call	USART_Transmit
		USART_NewLine
		ld		R16,		Y+
call	USART_Decimal_8
		USART_NewLine
		ldi		R16,	'L'
call	USART_Transmit
		USART_NewLine
		ld		R16,		Y+
call	USART_Decimal_8
		USART_NewLine
		USART_NewLine
		ldi		R16,	0
		out		OCR2,	R16
		rjmp NEXT
		sei
		
		
		
		
		
		
RUN:

		cpi		Type,		1			;check om lille højre
		breq	RUN_S1
		cpi		Type,		2			;check om lille venstre
		breq	RUN_S1
		cpi		Type,		3			;check om stor højre
		breq	RUN_S2
		cpi		Type,		4			;check om stor venstre
		breq	RUN_S2
										;Hvis alle check fejler må der være tale om et lige stykke
		ldi		R20,			0			;Sætter hastigheden til 80, så bilen langsomt bevæger sig mod målstregen uden problemer
		out		OCR2,			R20	

;		ldi		R16,	Periode_l			;Reference periode.
;		lds		R17,	Pulse_Time_H		;Indlæser den målte hastighed (periode)
		
call	Hastigheds_kontrol

rjmp	RUN_DONE								;Hop til run_done når hastigheden er sat

RUN_S1:

		ldi		R20,			100			;Sætter hastigheden til 80, så bilen langsomt bevæger sig mod målstregen uden problemer
		out		OCR2,			R20	

;		ldi		R16,	Periode_s1			;Reference periode.
;		lds		R17,	Pulse_Time_H		;Indlæser den målte hastighed (periode)
		
;call	Hastigheds_kontrol

rjmp	RUN_DONE



RUN_S2:

		ldi		R20,			100			;Sætter hastigheden til 80, så bilen langsomt bevæger sig mod målstregen uden problemer
		out		OCR2,			R20	

;		ldi		R16,	Periode_s2			;Reference periode.
;		lds		R17,	Pulse_Time_H		;Indlæser den målte hastighed (periode)
		
;call	Hastigheds_kontrol

rjmp	RUN_DONE

RUN_DONE:
		dec		Laengde					;Sætter den tilbageværende "Laengde" ned med en.
ret












