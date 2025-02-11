.global main 
.section .rodata
output: .asciz "%d\n"

.text
main:
push {lr} 
mov r1, #273
ldr r0, =output
bl printf

pop {pc}
