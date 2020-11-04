; This transfers data to memory
; and adds using accumulator
; Session 1, Code 0
mov 01h, #01h
mov 19h, #19h
mov r0, 01h
mov r1, 19h
mov a, r0
add a, r1
mov P0, a
sjmp $
end