//Lab 15 Largest/Smallest with arrays
//created on 2-5
//author: Samuel Anderson 
.global main
//functions
.global arrFunct
.extern outputArr
//data
.section .data
    arr: .space 40 //4 bytes * 10 
    input: .space 4 //4 bytes per input 
//read only 
.section  .rodata
    coutWelcome: .asciz "_Lab 15 Largest/Smallest with arrays_\n"
    coutLarge: .asciz "The largest number in the array is: %d\n"
    coutSmall: .asciz "The smallest number in the array is: %d\n"
    coutPrompt: .asciz "Please enter value %d : " 
    dataType: .asciz "%d"
//un init 
.section .bss
//start program 
.text 
main:
    push {lr}
        //output welcome msg 
        ldr r0, =coutWelcome
        bl printf

        //array into r1
        ldr r5, =arr 
        //counter i = 0 
        mov r4, #1 
        _for:
            //when i = 10 loop ; zero flag 
            cmp r4, #11
            bge _end
            //prompt for input 
            ldr r0, =coutPrompt
            mov r1, r4 
            bl printf
            //input
            ldr r0, =dataType
            ldr r1, =input
            bl scanf
            //store and de ref 
            ldr r1, =input 
            ldr r1, [r1]
            //store the value in the array 
            str r1, [r5]
            //add to counter 
            add r4, r4, #1
            add r5, r5, #4
            //loop
            bal _for
        _end:
    //r0 = arr , r1 = size 
    ldr r0, = arr 
    mov r1, #10
    bl arrFunct
    //exit 
    pop {pc}

arrFunct:
    push {lr}
    //loop 
    loop:
        //check if loop end 
        cmp r1, 0
        beq exit 


    pop {pc}


