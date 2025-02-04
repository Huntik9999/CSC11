.global divMod

.align 4
.section .rodata

// r0 numerator / dividend
// r1 what you to divide by aka denom / divisor
// results
// r0 return register for all function. has the division
// r1 mod

.text
divMod: //int divMod( x, y){  x/y r0 returns results of the division, r1 should have the result of the mod


/*
r0 = result of div
r1 = result of mod
r2 = increment from 1
r3 = decrement from denom
r4 = denom
r5 = numerator
 */
    push {lr}
    push {r4-r12}
    
    mov r11, r0          //denom = 3;
    mov r12, r1        //numer = 600; 

    //Initialize the working registers with the data
    cmp r0, #0;
    movlt r8, #1
    movge r8, #0

    cmp r1, #0
    movlt r9, #1
    movge r9, #0

    eor r10, r8, r9

    cmp r0, #0
    rsblt r0, r0, #0
    cmp r1, #0
    rsblt r1, r1, #0

    


    mov r4, r1
    mov r5, r0

