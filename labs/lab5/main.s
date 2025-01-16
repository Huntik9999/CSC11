.global main

//variable, init
.section .data
	input: .word 0
//readonly
.section .rodata
	coutBirth: .asciz "Enter the year you were born: "
	coutYear:  .asciz "Enter the current year: "
	coutAge: .asciz   "Your are %d years old!!! \n"
	whatType: .asciz "%d" //signed decimal integer

//var un-init
.section .bss

//code start
.text
main:
	//start
	push {lr}

	//load birthday question
	ldr r0, =coutBirth
	//print string
	bl printf

	//input for birthday
	//load data type for input
	ldr r0, =whatType
	ldr r1, =input
	bl scanf

	//store number somewhere safe
	ldr r4, =input
	//switch from adress to value
	ldr r4, [r4]

	//output for current year
	//load string
	ldr r0, =coutYear
	bl printf

	//input for current year
	//load data type
	ldr r0, =whatType
	//load input
	ldr r1, =input
	bl scanf

	//store new input
	ldr r5, =input
	ldr r5, [r5]

	//subtract year(r5) - birth(r4) = r0
	sub r1, r5, r4

	//out put how old the user is
	//load the prompt
	ldr r0, =coutAge
	bl printf
	//end
	mov r1, #0
	pop {pc}
