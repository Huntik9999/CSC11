.globsl main

.section .data 

.section .rodata
	outPrompt: .asciz  "Enter a number: "
	inPat: .asciz "%d"
	outStr: .asciz "r2: %d\n"

.text
main:
	push {lr]

	ldr r0, =outPrompt
	bl printf

	ldr r0, =inPat 
	ldr r1, =input
	bl scanf

	ldr r0, =input
	ldr r0, [r0]

	//compare
	cmp r0, #0

	//branch
	blt isLess
	bge isGreater
isLess:
	//run less than code here
	mov r2, #60



isGreater:
	//greater than
	mov r2, #0
	movlt r2, #60

	ldr r0, =outStr
	mov r1, r2
	bl printf

	mov r0, #0

	pop{pc}
