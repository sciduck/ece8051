; We add 10 8 bit unsigned BCD Numbers
; Stored in Data Memory
; Provision for BCD carry included
; LSBy output on P0
; MSBy output on P1
; Session 1, Exercise 4

; Setup
	mov dptr, #Arr
	mov P0, #0x00
	mov P1, #0x00
	mov r0, #0x00
	mov r1, #0x00
	mov r2, #0x0A
	clr a
; Begin Add
LP:	movc a, @a+dptr
	inc dptr
	add a, r0
	da a
	mov r0, a
	jc CB
	clr a
	djnz r2, LP
OP:	mov P0, r0
	mov P1, r1
	mov 0x30, r0
	mov 0x31, r1
	sjmp $

; Take care of BCD Carry
CB:	inc r1
	clr c
	clr a
	djnz r2, LP
	sjmp OP

; Data for Adding
Arr:db 0x12, 0x43, 0x23, 0x02, 0x55
	db 0x54, 0x69, 0x82, 0x01, 0x02
	end