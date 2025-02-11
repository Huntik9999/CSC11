.global main

.section .data
    val1: .float 3.12342
    val2: .float 0.243
.section .rodata
    outRes: .asciz "the result is: %f\n"
.text 
main:
push {lr}

    ldr r0, =val1 
    vldr s0, [r0]

    ldr r0, =val2
    vldr s2, [r0]

    vmul.f32 s0, s0, s2 

    vcvt.f64.f32  d0, s0

    vmov r1, r2, d0 

    
    
    print:
    ldr r0, =outRes
    bl printf 
pop {pc}