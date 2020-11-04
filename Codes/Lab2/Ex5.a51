; We multiply 2 8 bit unsigned BCD Numbers
; Carry is ignored
; Output is on P0
; Session 1, Exercise 5

; Setup
	mov dptr, #Num
	mov P0, #0x00
	mov r0, #0x00
	mov r1, #0x00
	mov b, #0x0A
	clr a
; Convert Number 1 to Hex
	movc a, @a+dptr
	inc dptr
	mov r0, a
	anl a, #0xF0
	rr a
	rr a
	rr a
	rr a
	mul ab
	mov r1, a
	mov a, r0
	anl a, #0x0F
	add a, r1
	mov r0, a
; BCD Add without Carry Number 2, Number 1 Times
	clr a
	movc a, @a+dptr
	mov r1, a
	clr a
LP:	add a, r1
	clr c
	da a
	djnz r0, LP
	mov P0, a
	sjmp $
; Data for Multiplying
Num:db 0x19, 0x05
	end	