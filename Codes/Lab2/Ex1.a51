; Reads P0 and outputs
; on P1 if positive or negative
; Session 1, Exercise 1
	mov a, P0
	anl a, #0x80
	jnz NEG
	; If number is positive
	; set P1 to 0
	mov P1, #0x00
	; If number is negative
	; do nothing, P1 is by default 0xFF
	; AKA -128
NEG:sjmp $
	end