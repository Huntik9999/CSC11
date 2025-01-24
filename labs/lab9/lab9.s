//created on 1/23 by Samuel Anderson
//Purpose: Lab 9 - Distance

.global main 

.section .data
    input1: .word 0
    input2: .word 0
.section .rodata
    coutWelcome: .asciz "-Lab 9: Distance-\n"
    coutInput1: .asciz "What is the speed of the vehicle in mph? : "
    coutInput2: .asciz "How many hours has it traveled? : "
    coutBuffer: .asciz "----------------------------------\n"
    coutResult: .asciz "|Hour: %d |Distance Traveled: %d |\n"
    dataType: .asciz "%d"

.text
main:

    push {lr}
_welcome:
    ldr r0, =coutWelcome
    bl printf
//speed 
_output1:
    ldr r0, =coutInput1
    bl printf
_input1:
    ldr r0, =dataType
    ldr r1, =input1
    bl scanf
    //store input 
    ldr r4, =input1
    ldr r4, [r4]
    //check input 
    cmp r4, #1
    blt _output1
    //number to add by in each loop 
    mov r7, r4
//hours
_output2:
    ldr r0, =coutInput2
    bl printf
_input2:
    ldr r0, =dataType
    ldr r1, =input2
    bl scanf
    //store input 
    ldr r5, =input2
    ldr r5, [r5]
    //check input 
    cmp r5, #1
    blt _output2
    //use r6 as a counter 
    mov r6, #1
_buffer:
    ldr r0, =coutBuffer
    bl printf
_while:
    //output result of every loop first 
    ldr r0, =coutResult
    mov r1, r6
    mov r2, r4
    bl printf
    //check to exit the loop
    cmp r5, #1
    blt _endLoop
    //sub if no exit 
    sub r5, #1
    //incriment counter by 1 
    add r6 , #1
    //incriment the distance
    add r4, r4, r7
    //branch back to loop
    bal _while
_endLoop: 
    mov r0, #1
    pop {pc}
