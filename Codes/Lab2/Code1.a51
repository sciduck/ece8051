; This generates a sine wave
; at port 0
; Session 1, Code 1
lp:		mov dptr, #sin
		mov r0, #24
snlp:	mov a, #0
		movc a, @a + dptr
		mov P0, a
		inc dptr
		djnz r0, snlp
		sjmp lp
		
sin:	db 128, 161, 192, 218, 239
		db 252, 255, 252, 239, 218
		db 192, 161, 128, 95, 64
		db 37, 17, 4, 0, 4
		db 17, 37, 64, 95
		end