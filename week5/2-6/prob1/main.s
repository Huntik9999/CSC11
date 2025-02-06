.global main

.section .bss
    array: .space 20
.section .rodata
    outPrompt: .asciz "Enter numbers for summing\n"
    outRes: .asciz "The sum is %d\n"
    outIn: .asciz "Enter number %d: "
    inPat: .asciz "%d"
.section .data
    len: .word 5
.text 
main: 
push {lr}

    ldr r0, =outPrompt
    bl printf

    ldr r0, =array
    ldr r1, =len 
    ldr r1, [r1]
    bl input 

    ldr r0, =array 
    ldr r1, =len 
    ldr r1, [r1]
    bl sum 
    ldr r1, =total 
    str r0, [r1]

    ldr r0, =outRes
    ldr r1, [r1]
    bl printf


pop {pc}

sum:
push {lr}
    mov r2, #0
    mov r3, #0
    sWhile: 
        cmp r3, r1
        bge sEnd
        ldr r4, [r0, r3, lsl #2]
        add r2, r2, r4

        add r3, r3, #1 
        bal sWhile
    sEnd:
    mov r0, r2
pop {pc}

input: 
push {lr}
    mov r2, #0
    iwhile:
        cmp r2, r1
        bge iEnd 
        
        stmdb sp!, {r0 -r2}
        ldr r0,  =outIn
        add r2, #1
        mov r1, r2
        bl printf
        ldmia sp!, {r0-r2}
        
        stmdb sp!, {r0-r3}
        
        add r1, r0, r2, lsl #2
        ldr r0, =inPat
        bl scanf
        ldmia sp!, {r0-r2}
        add r2, #1 
        bal iwhile
    iEnd:
pop {pc}
