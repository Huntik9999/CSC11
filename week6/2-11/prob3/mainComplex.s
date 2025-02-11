.global main 

.section .data 
    x: .float 0.0
    y: .float 2.35
    z: .float -9.435435
    
.section .rodata 
    outPrompt: .asciz "Enter a floating point number: "
    inFlt: .asciz     "%F"
    outRes: .asciz    "Entered: %f \n"

.text 
main:
    push {lr}

    ldr r0, =outPrompt
    bl printf 

    ldr r0, =infloat 
    ldr r1, =x 
    bl scanf 

    ldr r0, =outRes 
    ldr r1, =x
    vldr s0, [r1]

    vcvt.f64.f32 d0, s0

    vmov r1, r2, d0
    bl printf 

    mov r0, #0 
    pop {pc}