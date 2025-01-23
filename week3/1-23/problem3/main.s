.global main

.section .data
	n1: .word 0
	n2: .word 0
.section .rodata
	outPrompt: .asciz "Enter 2 numbers to multiply by: "
	inPat: .asciz "%d %d"
	outRes: .asciz "%d x %d = %d\n"
.text
main:
	push {lr}

_prompt:
	ldr r0,  =outPrompt
	bl printf

_input:
	ldr r0, =inPat
	ldr r1, =n1
	ldr r2, =n2
	bl scanf
_math:
	//load
	ldr r1, =n1
	ldr r1, [r1]
	ldr r2, =n2
	ldr r2, [r2]

	//
	mov r4, r1
	mov r0, #0
while:
	cmp r1, #1
	blt endLoop

	add r0, r0, r2
	sub r1, r1, #1
	bal while
endLoop:

_output:
	mov r3, r0
	mov r1, r4
	ldr r0, =outRes
	bl printf

	mov r0, #0
	pop {pc}
