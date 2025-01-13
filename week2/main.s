//going a _start somewhere
.global _start 

//this is for read only data
.section .rodata 

//math const, string that dont change 
.section .data 

//hello world data at label hello 
hello: .ascii "Hello world\n" //== string hello = "Hello World\n" 

//var inti
.section .bss

//code starts
.text 

//start label/function 
_start:

  //write a syscall to output to the terminal 
  //snip from book
  // sys action function 
  //4     write   write to file descriptor

  //put 4 into r7 which our syscall regiter 
  mov r7, m4 
  
  //write to cout is 1 
  //move 1 to r0 register
  move r0, #1
  
  //load the string hello world into the r1 register 
  //load register, the address of the data into r1 
  ldr r1, =hello

  //store the size of what we are printing 
  mov r2, #12
  //run sys call by doing a software interrupt
  swi 0

  //to return 0 we need to do syscall to exit 
  mov r7, #1

  //error code into r0
  mov r0, #0
  //run the syscall
  swi 0
