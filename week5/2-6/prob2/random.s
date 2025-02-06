.extern time 
.extern srand 
.extern rand 


.global randtest
.global getrand 
.extern
initRandom:
    stmdb sp!, {lr}

    mov r0, #0 
    bl time 
    bl srand 

    ldmia sp!, {pc}

getRand: 
    stmdb sp!, {lr}

    mov r4, r0
    mov r5, r1
    bl rand 

    lsr r0, r0, #1
    mov r1 ,r4 
    bl divMod

    add r0, r1, r5

    ldbia sp!, {pc}
