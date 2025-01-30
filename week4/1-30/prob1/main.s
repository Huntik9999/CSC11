//main
.global main
//function
.global passByRef
//data
.section .data
    val1: .word 123
    val2: .word 456
    val3: .word 256
//readonly data
.section .rodata
    outBefore: .asciz "Before pass by ref function\n"
    outAfter: .asciz "After pass by ref function\n"
    outIn: .asciz "In pass by ref function"
    outV1: .asciz "val1: %d\n"
    outV2: .asciz "val2: %d\n"
    outV3: .asciz "val3: %d\n"
    outSum: .asciz "Sum is: %d\n"
//start code
.text
main:
    push {lr}
    ldr r0, =outBefore
    bl printf

    ldr r4, =val1
    ldr r5, =val2
    ldr r6, =val3

    ldr r0, =outV1
    ldr r1, [r4]
    bl printf

    ldr r0, =outV2
    ldr r1, [r5]
    bl printf

    ldr r0, =outV3
    ldr r1, [r6]
    bl printf

    mov r0, r4
    mov r1, r5
    mov r2, r6
    bl passByRef

    ldr r0, =outAfter
    bl printf

    ldr r0, =outV1
    ldr r1, [r4]
    bl printf 

    ldr r0, =outV2
    ldr r1, [r5]
    bl printf 

    ldr r0, =outV3
    ldr r1, [r6]
    bl printf

    pop {pc}

passByRef:
    push {r4-r7,lr}

    mov r4, r0
    mov r5, r1
    mov r6, r2

    ldr r0, =outIn
    bl printf
    ldr r0, [r4]
    ldr r1, [r5]
    ldr r2, [r6]
    
    add r3, r0, r1
    add r3, r3, r2

    add r0, r0, #5
    add r1, r1, #10
    mov r7, #2
    mul r2, r2, r7

    str r0, [r4]
    str r1, [r5]
    str r2, [r6]

    push {r0-r2}
    ldr r0, =outSum
    mov r1, r3
    bl printf 
    pop {r0-r2}

    push {r1, r2}
    ldr r0, =outV1
    mov r1, r0
    bl printf 
    pop {r1, r2}

    push {r2}
    ldr r0, =outV2
    bl printf 
    pop {r1}

    ldr r0, =outV3 
    bl printf 

    pop {r4-r7,pc}
