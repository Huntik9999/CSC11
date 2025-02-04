.global main 

.data
    o: .asciz "%d\n"


.text
main: 
    push {lr}
    
    sub sp, sp, #4
    mov r0, #25
    str r0, [sp]

    sub sp, sp, #4
    mov r0, #16
    str r0, [sp]

    ldr r1, [sp]
    add sp, sp, #4

    ldr r0, =o
    ldr r1, [sp]
    bl printf
    
    pop {pc}