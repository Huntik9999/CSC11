.global outputArr

.section .rodata
    out: .asciz "a[%d] = %d\n"
.text
outputArr:
    push {r4, lr}
    mov r4, #0 //i
    oaFor:      @ for( int i = 0; i < 25; i++ ){
        cmp r4, r1
        bge oaEnd
    
        push {r0-r1}
        ldr r2, [r0]
        mov r1, r4
        ldr r0, =out
        bl printf       @ printf( "a[%d] = %d\n", i, arr[i] );
        pop {r0-r1}

        add r4, #1 //add to my counter
        add r0, r0, #4 //add to my array address to get the next value
        bal oaFor
    @ }
    oaEnd:
    pop {r4, pc}
//end outputArr
