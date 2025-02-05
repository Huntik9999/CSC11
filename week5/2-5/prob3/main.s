.global main 

.section .rodata
    inPat: .asciz "%d"
    out: .asciz "read in %d\n"
.text
main: 
    str lr, [sp, #-4]! 
    
    ldr r0, =inPat
    sub sp, sp, #4 //4 bytes of space 
    mov r1, sp
    bl scanf

    ldr r0, =out 
    ldr r1, [sp], #4
    bl printf 

    //add sp, #4     
    ldr pc, [sp], #4 
