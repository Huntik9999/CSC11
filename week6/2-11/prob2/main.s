.global main

.section .rodata 
    coutInput: .asciz "enter something : "
    out: .asciz "= %dn\"
    inPat: .asciz "%d"

.text 
    push {lr}
        ldr r0, =coutInput
        bl printf 

        ldr r0, =inPat
        sub sp, #4 
        mov r1, sp
        bl scanf 

        pop {r0}

        mov r1, #1 

        sdiv r1, r0, r1 
        ldr r0, =outRes
        bl printf

        mov r0, #0
    ldmia sp!, {pc}
    //compile with -mcpu=cortex-a7
    