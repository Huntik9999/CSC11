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
	test: .asciz "test number givenm: %d \n"

//code start
.text
main:
	push {lr}

	//load and output
	ldr r0, =coutWelcome
	bl printf

	//load and output ~~~~~
	ldr r0, =coutA
	bl printf

	//datatype and input
	ldr r0, =dataType
	ldr r1, =input
	bl scanf

	//store input/ dereference
	ldr r4, =input
	ldr r4, [r4]

	//2nd question  ~~~~~~
	ldr r0, =coutB
	bl printf

	//input 
	ldr r0, =dataType
	ldr r1, =input
	bl scanf 
	//store 
	ldr r5, =input
	ldr r5, [r5]

	//3rd question
	ldr r0, =coutC
	bl printf

	//input
	ldr r0, =dataType
	ldr r1, =input
	bl scanf 
	//store 
	ldr r6, =input
	ldr r6, [r6]
	/*test print ~~~~~~~~~~~~
	ldr r0, =test
	mov r1, r4
	bl printf
	//~~~~~~~~~~~~~~~~~
	ldr r0, =test
	mov r1, r5
	bl printf
	//~~~~~~~~~~~~~~~
	ldr r0, =test
	mov r1, r6
	bl printf
	//Compare the numbers~~~~~~~~~~~~~~~~*
	
	//end
	pop {pc}

