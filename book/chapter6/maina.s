/* Perform R0 = R1 + R2 */
    .global _start
_start:
    mov r1, #50 @r1 = 50
    mov r2, #60 @r2 = 60
    adds r0, r1, r2 @ r0 = r1 + r2

    mov r7, #1 @ exit through syscall
    swi 0
    