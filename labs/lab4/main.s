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
	//say what you want to do
	mov r7, #4 //write - 3 arguments

	//int 1 into adress 0
	mov r0, #1 

	//load r1 with string 
	ldr r1, =myTxt

	//size of string 
	mov r2, #13

	//system call 
	swi 0
	//stuff to exit 
	mov r7, #1 //call to exit 
	mov r0, #0 //clean up
	swi 0 //sys call 
