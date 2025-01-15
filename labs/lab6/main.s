.global main

//variable, init
.section .data
	input .word 0
//read only
.section .rodata
	inPat: .asciz "%d"
	outPat: .asciz "%s"
	coutPrompt: .asciz "Enter a number: "
	

//code start
.text
main:
	push {lr]

	//output string from .rodata
	ldr r0, =coutPrompt
	bl printf

	//user input
	ldr r0, =inPat
	ldr r1, =input
	bl scanf

	//load input data and dereference
	ldr r0, =input
	mov r0, [r0]















	pop {pc}

