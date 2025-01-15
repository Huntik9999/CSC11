.global main 

.section .rodata
	outStr: asciz "%08x%08x"
.text

main:
	//start
	push {lr}

	//a + b
	//0x01ffffffff - n1, 0x01
	//0xffffffffff - n2, 0xff

	//n1
	ldr r0, #0xffffffff
	ldr r1, #0x01

	//n2
	ldr r2, #0xffffffff
	ldr r3, #0xff

	//addinglowers
	adds r4, r0, r2 //r2 + r0 = r4

	//adding uppers - AD with carry
	adcs r5, r1 ,r3

	//print
	ldr r0, =outStr
	mov r1, r5 //
	mov r2, r4 //

	bl printf

	mov r0, #0

	//fin
	pop {pc}


