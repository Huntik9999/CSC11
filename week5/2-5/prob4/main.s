.global main
//function
.global sumArr
//data
.section .data
    arr: .word 10, 20, 30, 40, 50

//readonly
.section .rodata
    outSum: .asciz "sum is %d\n"
    outStep: .asciz "%d + %d\n"
.text
main:

    stmdb sp!, {lr}

    ldr r0, =arr 
    mov r1, #5 
    bl sumArr

    //print sum 
    mov r1, r0
    ldr r0, =outSum
    bl printf


    mov r0, #0
    ldmia sp!, {pc}
//r0 = array ; r1 = size 
sumArr:

    stmdb sp!, {lr}

    mov r4, #0
    mov r5, #0
    _while:
        cmp r5, r1
        bgt endWhile 

        stmdb sp!, {r0, r1}
        ldr r2, [r0]
        mov r1, r4 
        ldr r0, = outStep
        bl printf 
        ldmia sp!, {r0, r1}
        
        ldr r2, [r0], #4 
        add r4, r4, r2
        add r4, #1
        bal _while 
    endWhile:
    mov r0, r4 
    ldmia sp!, {pc}
