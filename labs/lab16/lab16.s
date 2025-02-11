.global main
//functions
.global printArr
.global linearSearch
//external library 
.extern random

.section .data 
 arr: .space 100//4 bytes * 25
 input: .space 4 

.section .rodata 
    coutWelcome:   .asciz "-Lab 16: Search Array-\n"
    coutArrTabele: .asciz "-----------------\nTabble for Array\n---------------------------------------------------------------------------------------\n"
    coutArr:       .asciz "-%d-"
    coutGetInput:   .asciz "Please input a number to search for in the array: "
    coutNumberFound: .asciz "Number found at index %d \n"
    dataType:      .asciz "%d"
    coutNewLine: .asciz "\n---------------------------------------------------------------------------------------\n"
    coutNegative: .asciz "-1 was returned from searching the function\n"

.text
main:
push {lr}
    bl initRandom
    //output welcome message 
    ldr r0, =coutWelcome
    bl printf 
    //load array 
    ldr r5, =arr
    //fill the array with 25 random numbers 
    mov r4, #25 // i = 25 
    _loop:
        //check to exit 
        cmp r4, #0
        beq _exit
        //dec i by 1 
        sub r4, r4, #1 
        //get random number - getRand( int modby, int addby )
        mov r0, #10 
        mov r1, #5
        bl getRand
        //place in array 
        str r0, [r5]
        //incriment array 
        add r5, r5, #4
        bal _loop
    _exit: 
    //otuput start of array table 
    ldr r0, =coutArrTabele
    bl printf 
    //output the array 
    ldr r0, =arr
    mov r1, #25 
    bl printArr 
    //ask user for input 
    ldr r0, =coutGetInput
    bl printf
    //get input 
    ldr r0, =dataType
    ldr r1, =input
    bl scanf
    //load arguments into r0 & r1 & r2 and call linear search 
    ldr r0, =input
    ldr r0, [r0]
    mov r1, #25
    ldr r2, =arr
    bl linearSearch
    //exit 
    //tell userr there was not a number in the array 
    CMN r0, #1 
    ldreq r0, =coutNegative
    bleq printf 

    mov r0, #0
pop {pc}

//(r0 = array ; r1 = size of array )
printArr:
push {r4, lr}
    //move i to r4 
    mov r4, r1
    _printLoop:
        //check for loop 
        cmp r4, #0
        beq _printExit
        //decriment i
        sub r4, r4, #1 
        //store number in array 
        ldr r1, [r0]
        //push array     
        push {r0}
        //print array number 
        ldr r0, =coutArr
        bl printf 
        //pop the array back in 
        pop {r0}
        //incriment the array 
        add r0, r0, #4 
        //loop back 
        bal _printLoop
    _printExit:
    ldr r0, =coutNewLine
    bl printf
pop {r4 ,pc}

//r2 = array ; r1 = size of array ; r0 = input  )
linearSearch:
push {r4, r5, r6, r7, lr}
    //size of array to safe register 
    mov r4, r1
    //user input to safe register 
    mov r5, r0
    //i = r6
    mov r6, #0
    //checks if num was found in array  
    mov r7, #0
    searchLoop:
        //check r4 for end
        cmp r4, #0
        beq searchLoopExit
        //dec i by 1 
        sub r4, r4, #1  
        //store array num 
        ldr r0, [r2]
        //array to stack 
        push {r2}
        //compare input and array num
        cmp r5, r0
        addeq r7, r7, #1
        ldreq r0, =coutNumberFound
        moveq r1, r6
        bleq printf 
        //bring back array 
        pop {r2}
        //inc i 
        add r6, r6, #1 
        //add to array 
        add r2, r2, #4 
        //go back
        bal searchLoop
    searchLoopExit:
    mov r0, #0
//return -1 if number not found 
cmp r7, #0
moveq r0, #-1 

pop {r4, r5, r6, r7, pc}
