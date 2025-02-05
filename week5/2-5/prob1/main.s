//store multiple 

.global main

.data 
    out: .asciz "%d_%d\n"

.text
main: 
    push {lr}

    //push 25 to stack
    mov r0, #25
    @stmdb sp!, {r0}

    //push 16 to stack // ! = write back 
    mov r1, #16
    stmdb sp!, {r0,r1}

    //
    
    //load mult inc after 
    stmdb sp!, {r1,r2}
    
    ldmia sp!, {r1, r2}
    ldr r0, =out 
    bl printf
    

    mov r0, #0
    pop {pc}

