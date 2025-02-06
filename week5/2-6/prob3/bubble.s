.global main 

.section .rodata 
    outBefore: .asciz "Before sorting\n"
    outAfter: .ascizi "Sorted Array!\n"
    outNum: .asciz "%d "
    newlinr: .asciz "\n"
.section .data 
    len: .word 5
.section .bss
    array: .space 20 
.text 
main: 
    push {lr}
    bl initRandom
    ldr r0, =array
    ldr r1, =len
    ldr r1, [r1]
    bl input 
    ldr r0, =outBefore
    bl printf

    ldr r0, =array
    ldr r1, =len
    ldr r1, [r1]
    bl outArr

    ldr r0, =array
    ldr r1, =len
    ldr r1, [r1]
    bl bubbleSort

    ldr r0, =array
    bl printf

    pop {pc}

bubbleSort: 
    push {lr}
    sub r1, r1, #1 
    mov r2, #0
    bsForOut:
        cmp r2, r1
        bge bsOutEnd
        mov r3, #0
        bsForInner:
            cmp r3, r1
            bge bsInnerEnd

            ldr r4, r0, r3, lsl #2
            ldr r5, [r4]

            add r6, r3, #1 
            add r6, r0, r6, lsl #2 
            ldr r7, [r6]

            cmp r5, r7 
            ble noswap
            str r7, [r4]
            str r5, [r6]


            noswap:
            add r3, #1
            bal bsForInner
        bsInnerEnd:
        add r2, r2, #1
        bal bsForOut
    bsOutEnd:

    pop {pc}
    
input: 
    push {r4-r6,lr}
    mov r4, #0
    mov r5, r0
    mov r6, r1
    iWhile:
        cmp r4, r6
        bge iEnd 
        mov r0, #90
        mov r1, #10
        bl getRand

        str r0, [r5, r4, LSL #2]
        add r4, #1 
        bal iWhile
    iEnd:
    pop {r4-r6,pc}

outArr: 
    push {r4-r6,lr}
    mov r4, #0
    mov r5, r0
    mov r6, r1
    oaWhile:
        cmp r4, r1
        bge oaEnd
        
        ldr r1, [r0], #4
        ldr r0, =outNum
        bl printf 

        add r4, #1 
        bal oaWhile 
    oaEnd:
    ldr r0, =newlinr
    bl printf 

    pop {r4-r6,pc}

