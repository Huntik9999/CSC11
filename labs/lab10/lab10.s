//Author:Samuel Anderson 
//Created on: 1-28 
//Purpose: Lab 10 Rectangle Area
.global main
//functions
.global getLength
.global getWidth
.global getArea
.global displayData
//data
.section .data
    inputLength: .word 0
    inputWidth: .word 0
//read only data
.section .rodata
    coutGetLength: .asciz "Please input the length: "
    coutGetWidth: .asciz  "Please input the width: "
    dataType: .asciz "%d"
    coutLength: .asciz "The length is: %d\n"
    coutWidth: .asciz "The width is: %d\n"
    coutArea: .asciz "The area is: %d\n"
    debug: .asciz "debug : %d\n" 
//start of program
.text
main:
    push {lr}
    //length
    bl getLength
    mov r4, r0
    //width
    bl getWidth
    mov r5, r0
    //area
    bl getArea
    mov r6, r0
    //display
    bl displayData
    //exit 
    mov r1, #0
    pop {pc}
getLength:
    push {lr}
    //output
    ldr r0, =coutGetLength
    bl printf 
    //input
    ldr r0, =dataType
    ldr r1, =inputLength
    bl scanf
    //load value
    ldr r0, =inputLength
    ldr r0, [r0]
    //exit
    pop {pc}
getWidth:
    push {lr}
    //output
    ldr r0, =coutGetWidth
    bl printf
    //input 
    ldr r0, =dataType
    ldr r1, =inputWidth
    bl scanf
    //load value
    ldr r0, =inputWidth
    ldr r0, [r0]
    //exit
    pop {pc}
getArea:
    push {lr}
    //area into r6
    mul r0, r4, r5
    //exit
    pop {pc}
displayData:
    push {lr}
    //output length
    ldr r0, =coutLength
    mov r1, r4
    bl printf 
    //output width
    ldr r0, =coutWidth
    mov r1, r5
    bl printf
    //output area
    ldr r0, =coutArea
    mov r1, r6
    bl printf
    //exit
    mov r0, #0
    pop {pc}
