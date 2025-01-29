.global main
.extern intSqrt

.section .data

.section .rodata
	outRes: .asciz "the sqrt is %d\n"
.text
main:
	push {lr}

	mov r0, r4

	bl main

	mov r1, r0
	ldr r0, =outRes
	bl printf

	pop {pc}
