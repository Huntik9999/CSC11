.global main

.section .data
    x: .float 2.324
    y: .float 3.234
    z: .float -2.234
    w: .float 1.232
.section .rodata 
    outPrompt: .asciz "Enter a floating point number: "
    inFit: .asciz "%f"
    outRes: .asciz "value entered was %f(y=%f, z = %f, z= %f). The sum is: %f \n"
.text

main:
    push {fp, lr}



    pop {pc}