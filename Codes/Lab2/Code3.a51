; This generates a square wave
; at port 0
; Session 1, Code 3
LP: mov P0, #0
	; NOOP - 1CPI, Others have 2 CPI
	nop
	nop
	mov P0, #255
	sjmp LP
	end