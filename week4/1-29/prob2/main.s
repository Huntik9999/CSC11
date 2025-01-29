//main
.global main
//functions
.global abs
.global isqrt
.global getInput

.extern divMod
//data
.section .data
    input: .word 0
//read only
.section .rodata
    outPrompt: .asciz "Enter a number to approx the sqrt: "
    inPat: .asciz "%d"
    debug: .asciz "guess %d is %d \n"
    //.asciz "Enter a number greater than 0\n"
    outRes: .asciz "the approximate sqrt of %d is %d\n"
//start program
.text
main:
    push {lr}
    bl getInput
    mov r4, r0
    bl isqrt
    mov r2, r0
    ldr r0, =outRes
    mov r1, r4
    bl printf
    pop {pc}
isqrt:
    push {r4-r8, lr}
    
    mov r4, r0
    lsr r5, r4, #1

    mov r8, #0

    isqrtDo:
        mov r6, r5 
        
        mov r0, r4
        mov r1, r5
        bl divMod
        mov r7, r0

        add r7, r5, r7

        lsr r7, r7, #1
        mov r5, r7

        ldr r0, =debug
        mov r1, r8 
        mov r2, r5
        bl printf

        add r8, #1 

        sub r0, r5, r6

        bl abs
        cmp r0, #0
        bgt isqrtDo 
    //++++++++++++++++++++++//
    
    mov r0, r5

    pop {r4-r8, pc}
getInput:
    push {lr}
    
    giDo:
    ldr r0, =outPrompt
    bl printf

    ldr r0, =inPat
    ldr r1, =input
    bl scanf

    ldr r0, =input
    ldr r0, [r0]
    cmp r0, #0
    ble giDo

    pop {pc}

abs:
    push {lr}
    
    cmp r0, #0
    bge absEnd
    rsb r0, r0, #0
    absEnd:
    
    pop {pc}
