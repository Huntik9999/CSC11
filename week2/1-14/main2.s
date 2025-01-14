.global main

//variable, init
.section .data 

//readonly 
.section .rodata
	outStr: .asciz "%x\n"
//var un-init 
.section .bss

//code start 
.text
main:
	//came from 
	push {lr}  

	//operation, destination, integer 
	mov r0,  #7
	mov r0,  #0b0111
	mov r1,  #0b1001


	//operation, destination, mult mult 	
	@and r0, r0, r1
	@orr r0, r0, r1
	eor  r0, r0, r1

	//print this thang 
	mov r1, r0
	ldr r0, =outStr

	bl printf 

	pop {pc} 
