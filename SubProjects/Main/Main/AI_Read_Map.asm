Read_Map:


		subi		Length_L,		1
		sbci		Length_H,		0

		cpi			Length_H,		0
		brne		Road_Reaction
		
		cpi			Length_L,		0
		brne		Road_Reaction
		
		ld			Length_L,		Y+
		ld			Length_H,		Y+
		ld			Type,			Y+

Road_Reaction:

		cpi		Type,		1
		breq	Lille_Sving
		cpi		Type,		2
		breq	Stor_Sving

		cpi		Type,		4
		breq	Stor_Sving
		cpi		Type,		5
		breq	Lille_Sving

;Ligeud1:

		cpi		Length_H,		0
		brne	Bare_Ligeud				;Hvis der er mere end 255 tilbage, så bare ligeud.

		ldi		R16,	LOW(Periode_Lille_Sving)
		ldi		R17,	High(Periode_Lille_Sving)
		mov		R18,	Length_L
		mov		R19,	Length_H

		lsl		R18
		rol		R19
		lsl		R18
		rol		R19

		sub		R17,	R19
		sbc		R16,	R18

		ldi		R18,	Pulse_Time_L	;Reference periode.
		ldi		R19,	Pulse_Time_H
		
		cp		R19,	R17
		brlo	Bare_Ligeud
		cp		R18,	R16
		brlo	Bare_Ligeud

		sts		Speed_L,	R18
		sts		Speed_H,	R19

ret

Bare_Ligeud:
		
		ldi		R16, LOW(Periode_Ligeud)	;Reference periode.
		ldi		R17, HIGH(Periode_Ligeud)	;Reference periode.
		sts		Speed_L,	R16
		sts		Speed_H,	R17

ret

Lille_Sving:

		cpi		Length_H,		0
		brne	Lille_Sving_Test
		cpi		Length_L,		Afstand_Ud_Af_Sving
		brlo	Ud_Af_Sving

Lille_Sving_Test:

		ldi		R16, LOW(Periode_Lille_Sving)	;Reference periode.
		ldi		R17, HIGH(Periode_Lille_Sving)	;Reference periode.
		sts		Speed_L,	R16
		sts		Speed_H,	R17

ret

Stor_Sving:

		cpi		Length_H,		0
		brne	Lille_Sving_Test
		cpi		Length_L,		Afstand_Ud_Af_Sving
		brlo	Ud_Af_Sving

Stor_Sving_Test:

		ldi		R16, LOW(Periode_Stort_Sving)	;Reference periode.
		ldi		R17, HIGH(Periode_Stort_Sving)	;Reference periode.
		sts		Speed_L,	R16
		sts		Speed_H,	R17

ret

Ud_Af_Sving:

		ldi		R16, LOW(Periode_Ligeud)	;Reference periode.
		ldi		R17, HIGH(Periode_Ligeud)	;Reference periode.
		sts		Speed_L,	R16
		sts		Speed_H,	R17

ret
