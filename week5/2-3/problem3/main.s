.global main 

.extern divMod 
.section .data
    out: .asciz "%d\n"
main:
    push {lr}

    mov r0, #0
    bl time 
    bl srand 
    
    mov r4, #0
    while:
        cmp r4, #20
        bgt end 
        bl rand

        lsr r0, r0, #1 

        mov r1, #90
        bl divMod

        add r1, r1, #10
        ldr r0, =out
        bl printf
        add r4, #1
        bal while  
        end:
        pop {pc}