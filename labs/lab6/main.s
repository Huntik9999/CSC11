.global main

//variable, init
.section .data
	input: .word 0
//read only
.section .rodata
	coutWelcome: .asciz "This program finds the biggest number\n"
	coutA: .asciz "Please enter integer A: "
	coutB: .asciz "Please enter integer B: "
	coutC: .asciz "Please enter integer C: "
	dataType: .asciz "%d"

//code start
.text
main:
	push {lr]

	//load and output
	ldr r0, =coutWelcome
	ld printf

	//load and output
	ldr r0, =coutA
	ld printf

	//datatype and input
	ldr r0, =dataType
	ldr r1, =input
	bl scanf

	//store input/ dereference
	ldr r4, =input
	ldr r4, [r4]

	//2nd question
	ldr r0, =coutB
	ld printf

	//
	pop {pc}

