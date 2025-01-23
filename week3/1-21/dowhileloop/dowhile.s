.global main

.section .bss
	input: .word 0
.section .rodata
	outPrompt: .asciz "Enter a numbet to sum till:"
	inPat: .asciz "%d"
	outRes: .asciz "Your sum is %d\n"
	debug: .asciz "i = %d\n"
.text
main:
	push {lr}

	//output message
	ldr r0, = outPrompt
	bl printf

	//input number
	ldr r0, =inPat
	ldr r1, =input
	bl scanf

	//
	mov r4, #1
	mov r5, #0

	//
	ldr r6, =input
	ldr r6, [r6]
	do:
		//
		add r5, r4 //r5 = r5 + r4

		//debug
		ldr r0, =dubug
		mov r1, r4
		bl printf

		//increase r4 by +1
		add r4, #1

		cmp r4, r6
		ble do

	ldr r0, =outRes
	mov r1, r5
	bl printf

	mov r0, #0
	pop {pc}
