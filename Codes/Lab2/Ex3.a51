; Unsigned Subtracts 2 16bit numbers
; We say N2 - N1
; Outputs to P0, P1(MSBy)
; Session 1, Exercise 3

; Setup Numbers in Data Memory
	mov 0x30, #0xA1 ; N1 (LSBy)
	mov 0x31, #0x23 ; N1 (MSBy)
	mov 0x40, #0x89 ; N2 (LSBy)
	mov 0x41, #0x3A ; N2 (MSBy)
	; Clear P0 and P1
	mov P0, #0x00
	mov P1, #0x00
; Add the numbers
	mov a, 0x40
	subb a, 0x30
	mov P0, a       ; Output LSBy to P0
	mov a, 0x41
	subb a, 0x31
	mov P1, a       ; Output MSBy to P1
	sjmp $
	end