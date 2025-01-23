.global main

.section .data
	input: .word 0
.section .rodata
	outPrompt: .asciz "Enter a number between 1-12: "
	outRes: .asciz "Factorial = %d\n"
	inPat: .asciz "%d"
	debug: .asciz "number : %d\n"
.text
main:
	push {lr}

	//ldr r0, =outPrompt
	//bl printf

	//ldr r0, =inPat
	//ldr r1, =input
	//bl scanf

	ldr r4, =input
	ldr r4, [r4]

inputloop:
	cmp r4, #0
	ble getInput
	cmp r4, #12
	bgt getInput
	bal endInputLoop
getInput:
	ldr r0, =outPrompt
	bl printf

	ldr r0, =inPat
	ldr r1, =input
	bl scanf
	
	
	bal inputLoop
endInputLoop:
	mov r4, #1
	mov r5, #1
	ldr r6, =input
	ldr r6, [r6]
mathLoop:
	cmp r5, r6
	bgt endMathLoop
	mul r4, r4, r5

	ldr r0, =debug
	mov r1, r4
	bl printf

	add r5, r5, #1
	bal mathloop
endMathLoop:
	ldr r0, =outRes
	mov r1, r4
	bl printf

	mov r0, #0
	pop {pc}
