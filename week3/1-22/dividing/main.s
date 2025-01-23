.global main

.section .data
	sum: .word 0
.section .rodata
	outPrompt: .asciz "Enter a positive number for n%d: "
	inPat: .asciz "%d"
	outRes: .asciz "You're average is %d\n"
.section .bss
	input: .space 4
.text
main:
	push {lr}
	//
	ldr r6, =sum
	ldr r5, = [r6]

	mov r4, #0
	//
inputLoop:
	ldr r5, [r6]
	cmp r4,  #5
	bge endInputLoop
	//
	validDo:
		ldr r0, =outPrompt
		mov r1, #4
		add r1, #1
		bl printf

		ldr r0, =inPat
		ldr r1, =input
		bl scanf

		ldr r1, =input
		ldr r1, [r1]



		cmp r1, #0
		blt validDo
	endValidDo:

	add r5, r1
	str r5, [r6]

	//

	add r4, r4, #1
	bal inputLoop
endInputLoop:
	//
	mov r3, #0x334

	ldr r2, =sum
	ldr r2, [r2]

	mul r2, r2, r3
	//
	lsr r2, r2, #12

	ldr r0, =outRes
	mov r1, r2
	bl printf

	mov r0, #0
	//
	pop {pc}
