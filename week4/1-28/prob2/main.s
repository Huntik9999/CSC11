.global main
.global factorial

.section .data
	n: .word 0
.section .rodata
	outPrompt: .asciz "Enter a number from 1-12"
	inPat: .asciz "%d"
	outRes: .asciz "The factorial is: %d\n"
.text
main:
	push {lr}

	mainDo:
		ldr r0, =outPrompt
		bl printf
		//
		ldr r0, =inPat
		ldr r1, =n
		bl scanf
		//
		ldr r0, =n
		ldr r0, [r0]
		cmp r0, #0
		blt mainDo
		cmp r0, #12
		bgt mainDo
	//--------------------//
	bl factorial

	mov r1, r0

	ldr r0, =outRes
	bl printf

	mov r0, #0
	pop {pc}

factorial:
	push {lr}
	cmp r0, #0
	beq factorialBaseCase

	push {r0}
	sub r0, r0, #1
	bl factorial

	pop {r1}

	mul r0, r0, r1
	bal factorialExit

	factorialBaseCase:
		mov r0, #1
	factorialExit:
	pop {pc}
