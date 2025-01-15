.global  _start

//.section .data 
	//input: .ascii "Hello World String\n"
.section .bss
	input: .space 20

.text
_start:
	mov r7, #3 //read syscall

	mov r0, #0 //stand in

	ldr r1, =input //input address

	mov r2, #5 //amount to input

	swi 0 //syscall

	mov r7, #4 //write syscall

	mov r0, #1 //stdout

	ldr r1, =input //what to stdout

	mov r2, #19 //amount to write

	swi 0 //syscall

	mov r7, #1//

	mov r0, #0//


