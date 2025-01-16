.global main

.section .data
	value: .space 4  //4 bytes
.section .rodata
	outPrompt: .asciz "Enter a number: "
	inPat: .asciz "%d"
	outEven: .asciz "your number %d is even\n"
	outOdd: .asciz "your number %d is odd\n"

.text
main:
	push {lr}

	ldr r0, =outPrompt
	bl printf

	ldr r0, =inPat
	ldr r1, =value
	bl scanf

	ldr r1, =value
	ldr r1, [r1]

	//and r2, r1, #1
	//cmp r2, #0
	tst r1, #1
	beq even
	bne odd


even:
	ldr r0, =outEven
	bl printf
	bal end
odd:
	ldr r0, =outOdd
	bl printf
	bal end

end:

	mov r0, #0
	pop {lr}
	bx lr
