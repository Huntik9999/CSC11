/* add two 64-bit numbers together */
.global _start

_start:
    mov r2, #0xFFFFFFFF @low num 1 
    mov r3, #0x1 @high num 1 
    mov r4, #0xFFFFFFFF @low num 2 
    mov r5, #0xFF @ high num 2
    adds r0, r2, r4 @ add lows and set flags
    adcs r1, r3, r5 @ adds highs look for flags

    mov r7, #1 @ exit through sys call
    swi 0
    