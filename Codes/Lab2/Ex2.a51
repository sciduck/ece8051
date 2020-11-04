; Unsigned Adds 2 16bit numbers
; Outputs to P0, P1(MSBy)
; Session 1, Exercise 2

; Setup Numbers in Data Memory
	mov 0x30, #0xA1 ; N1 (LSBy)
	mov 0x31, #0x43 ; N1 (MSBy)
	mov 0x40, #0x89 ; N2 (LSBy)
	mov 0x41, #0x3A ; N2 (MSBy)
	; Clear P0 and P1
	mov P0, #0x00
	mov P1, #0x00
; Add the numbers
	mov a, 0x30
	add a, 0x40
	mov P0, a       ; Output LSBy to P0
	mov a, 0x31
	addc a, 0x41
	mov P1, a       ; Output MSBy to P1
	sjmp $
	end