//since c need main as entry 
.global main

//var, init 
.section .data
	r1: .word 25 

//read only 
.section .rodata 
	outStr: .asciz "the sum is: %d\n"

//var, non-init
.section .bss

.text //code start here 
main:
	//where we came from 
	@ push{lr}
	//move 20 into r0
	mov r0, #20
	//load 25 from the data section 
	ldr r1, =r1 //this gets me the address of the r1 label 
	//to get teh value i need to dereference it 
	//i hav eaddress in r1, i want the number 25 to go into r1
	ldr r1, [r1]
	//lastly move 5 into r3
	mov r3, #5
	//add them all together 
	add r0, r0, r1 
	add r0, r0, r3
	
	//printf 
	//move answer from r0 so i dont overwrite it 
	mov r1, r0
	//now we can load the string 
	ldr r0, =outStr
	//ready to vsll printf 
	bl printf 
	
	mov r0, #0
	pop {pc}
