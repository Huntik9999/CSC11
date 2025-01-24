.global main

.section .data
	value: .word 0
.section .rodata
	outPrompt: .asciz "Enter a number to multiply by 5:"
	inPat: .asciz "%d"
	outRes: .asciz "%d x 5 = %d\n"
.text
main:
	push {lr}

_prompt:
	ldr r0,  =outPrompt
	bl printf

_input:
	ldr r0, =inPat
	ldr r1, =value
	bl scanf
_math:
	//load
	ldr r1, =value
	ldr r1, [r1]

	//shift
	lsl r2, r1, #2
	add r2, r2, r1

_output:
	ldr r0, =outRes
	bl printf

	mov r0, #0
	pop {pc}
