.global main

//variable, init
.section .data 
	in: .word 0
	result: .word 0
//readonly 
.section .rodata
	addBy: .word 32
	inPat: .asciz "%d"
	outPat: .asciz "%s"
	outPrompt: .asciz "Enter a number: "
	outResults: .asciz "%d + 32 = %d\n"
//var un-init 
.section .bss

//code start 
.text
main:
	//came from 
	push {lr}  

	//operation, destination, integer 
	ldr r5, =addBy
	ldr r5, [r5]

	
	//output prompt
	ldr r0, =outPat 
	ldr r1, =outPrompt
	bl printf

	//user input 
	ldr r0, =inPat
	ldr r1, =in 
	bl scanf

	//load 
	ldr r1, =in
	ldr r1, [r1] //dereference 

	add r2, r5, r1


	//store
	//ldr storehere, loadthis
	//str storethis, here
	ldr r3, =result
	str r2, [r3]

	//output 
	ldr r0, =outResults
	ldr r1, =in
	ldr r1, [r1]

	//get results from result var
	ldr r2, =result 
	ldr r2, [r2]



	bl printf 

	mov r0, #0

	//
	pop {pc} 
