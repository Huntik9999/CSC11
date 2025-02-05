//indexing mode 
.global main 

.data

    out: .asciz "%d\n"



.text 
main:
push {lr}

    stmdb sp!, {lr}
    mov r0, #25

    str r0, [sp, #-4]! //save r0 into the stack
    ldr r0, =out 

    ldr r1, [sp], #4
    bl printf
    
    ldmia sp!, {pc} 

mov r0, #0
pop {pc}