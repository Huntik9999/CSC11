//We starting soon 
.global _start

//read only
.section .rodata 

//math const & strings that dont change 
.section .data

//my string data for "Hello World!\n"
myTxt: .ascii "Hello World!\n"

//var init 
.section .bss 

//code start
.text 
_start:
	//int 4 into adress 7
	mov r7, #4

	//int 1 intp adress 0
	mov r0, #1

	//load r1 with string 
	ldr r1, =myTxt

	//size of string 
	mov r2, #13

	//sys call
	swi 0

	//stuff to exit 
	mov r7, #1
	mov r0, #0
	swi 0 
