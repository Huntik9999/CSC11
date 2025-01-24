.global main

.section .data
	value: .word 0
	shiftBy: .word 0
.section .rodata
	outPrompt: .asciz "Enter a 32 signed and the number of bits to shift by: "
	inPat: .asciz "%d %d"
	outlsl: .asciz "%d (0x%08x) LSL #%d = %d (0x%08x)\n"
	outlsr: .asciz "%d (0x%08x) LSL #%d = %d (0x%08x)\n"
	outasr: .asciz "%d (0x%08x) LSL #%d = %d (0x%08x)\n"
 	outror: .asciz "%d (0x%08x) LSL #%d = %d (0x%08x)\n"
 	//outasr: .asciz "%d (0x%08x) LSL #%d = %d (0x%08x)\n"
	debug: .asciz "%d\n"
.text
main:

	push {lr}
	//lsl
	ldr r0, =outPrompt
	bl printf

	ldr R0, =inPat
	ldr r1, =value
	ldr r2, =shiftBy
	bl scanf

	ldr r4, =value
	ldr r4, [r4]
	ldr r5, =shiftBy
	ldr r5, [r5]

	//same instructions
	lsl r0, r4, r5
	mov r0, r4, lsl r5

	mov r1, r4
	mov r2, r4
	mov r3, r5

	push {r0}
	push {r0}
	ldr r0, =outlsl
	bl printf
	//lsr
	add sp, sp, #8

	lsr r0, r4, r5
	mov r0, r4, lsr r5

	mov r1, r4
	mov r2, r4
	mov r3, r5
	push {r0}
	push {r0}
	ldr r0, =outlsr
	bl printf

	add sp, #8

	//asr
	add sp, sp, #8

        lsr r0, r4, r5
        mov r0, r4, asr r5

        mov r1, r4
        mov r2, r4
        mov r3, r5
        push {r0}
        push {r0}
        ldr r0, =outasr
        bl printf

        add sp, #8

	//ror
	add sp, sp, #8

        lsr r0, r4, r5
        mov r0, r4, ror r5

        mov r1, r4
        mov r2, r4
        mov r3, r5
        push {r0}
        push {r0}
        ldr r0, =outror
        bl printf

        add sp, #8

	//



	pop {pc}

