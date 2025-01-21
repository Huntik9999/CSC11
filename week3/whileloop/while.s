.global main

.section .data
	input: .word 0

.section .rodata
	outPrompt: .asciz "Enter a number to sum till: "
	inPat: .asciz "%d"
	outRes: .asciz "your sum is %d\n"
	debug: .asciz "number = %d\n"
.text
main:
	push {lr}

	//output
	ldr r0, =outPrompt
	bl printf

	//input
	ldr r0, =inPat
	ldr r1, =input
	bl scanf

	//counter into safe register
	mov r4, #1
	mov r5, #0

	//load input
	ldr r6, =input
	ldr r6, [r6]
while:
	cmp r4, r6
	bgt endwhile //if greater than i loop ends
	//incriment sum
	add r5, r5, r4

	ldr r0, =debug
	mov r1, r4
	bl printf

	add r4, #1
	bal while
endwhile:

	ldr r0, =outRes
	ldr r1, r5
	bl printf



	mov r0, #0

	pop {pc} //program counter
