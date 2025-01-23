.global main

.section .data
	input: .word 0
.section .rodata
	outPrompt: .asciz "Enter num : "
	inPat: .asciz "%d"
	outRes: .asciz "you sum is : %d\n"
	debug: .asciz "i = %d\n"
.text
main:
	push {lr}

	//
	ldr r0, =outPrompt
	bl printf

	//
	ldr r0, =inPat
	ldr r1, =input
	bl scanf

	//
	mov r5, #0

	//
	ldr r6, =input
	ldr r6, [r6]

	mov r4, #1
for:
	cmp r4, r6
	bgt endFor

	//
	add r5, r5, r4

	//
	ldr r0, =debug
	mov r1, r4
	bl printf

	//inc
	add r4, #1
	bal for
endFor:

	//
	ldr r0, =outRes
	mov r1, r5
	bl printf

	//
	mov r0, #0

	pop {pc}
