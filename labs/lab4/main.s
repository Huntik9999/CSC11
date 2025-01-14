//We starting soon 
.global _start

//read only
.section .rodata 

//math const & strings that dont change 
.section .data

//my string data for "Hello World!\n"
myTxt: .ascii "Hello World\n"

//var init 
.section .bss 

//code start
.text 
_start: 
	

