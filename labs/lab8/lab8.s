.global main

.section .data 
    input: .word 0
.section .rodata 
    coutWelcome: .asciz "*-This program takes numbers as input and outputs the largest and smallest numbers-*\nEnter '-99' to stop inputing numbers\n"
    coutInput:   .asciz "Please enter number #%d : "
    dataNumber:  .asciz "%d"
    coutBig:     .asciz "The biggest number was: %d\n"
    coutSmall:   .asciz "The smallest number was %d\n"
    debug:       .asciz "The number is : %d\n"
    
.section .bss

.text
main:
    push {lr}
    //output message to start program
    ldr r0, =coutWelcome
    bl printf
    //using r4 as incriment
    mov r4, #0
    //init big and small
    bal _input
    //
_init:
    //only go through once to init the numbers witht the first value
    ldr r6, =input 
    ldr r6, [r6]
    mov r7, r6 
    bal _weback
    
_input:
    //output
    ldr r0, =coutInput
    add r4, r4, #1
    mov r1, r4
    bl printf
    //input
    ldr r0, =dataNumber
    ldr r1, =input
    bl scanf
    //branch for first number 
    cmp r4, #1
    beq _init //checks zero flag 
_weback:
    //store number in r5
    ldr r5, =input
    ldr r5, [r5]
    //check for -99
    cmn r5, #99 //cmn turns op2 into negative
    beq _end//branch if zero flag is set
    //check largest r6 / branch if no negative flag is set 
    cmp r5, r6
    bpl _changeBig
    //check smallest r7 // branch if no negative flag is set 
_cont:
    cmp r7, r5
    bpl _changeSmall
    //if nothing is changed go back to _input
    bal _input
_changeBig:
    mov r6, r5
    bal _cont
_changeSmall:
    mov r7, r5
    bal _input
_end: 
    //output big
    ldr r0, =coutBig
    mov r1, r6
    bl printf
    //output small
    ldr r0, =coutSmall
    mov r1, r7
    bl printf
    //end
    mov r0, #0
    pop {pc}
