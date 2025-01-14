.global main

//variable, init
.section .data 

//readonly 
.section .rodata
	outStr: .asciz "result: %d"
//var un-init 
.section .bss

//code start 
.text
main:
	//came from 
	push {lr}  

	//operation, destination, integer 
	mov r0, #25
	mov r1, #10
	mov r2, #30 


	//operation, destination, mult mult 	
	mul r0, r0, r1
	mul r0, r2

	mov r1, r0
	ldr r0, =outStr

	bl printf 

	pop {pc} 
