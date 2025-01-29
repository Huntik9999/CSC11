.global main
.global multby5
.global getInput
.global output
.section .data
	input: .word 0
.section .rodata
	inPat: .asciz "%d"
	outResult: .asciz "%d x 5 = %d\n"
	outPrompt: .asciz "Enter a number to multiply by 5: "
.text
main:
	push {lr}
	bl getInput
	mov r4, r0
	mov r0, r4
	bl multby5
	mov r1, r0
	mov r0, r4
	bl output
	mov r0, #0

	pop {pc}
multby5:
	push {lr}
	add r0, r0, r0, lsl #2


	pop {pc}
getInput:
	push {lr}
	ldr r0, =outPrompt
	bl printf
	ldr r0, =inPat
	ldr r1, =input
	bl scanf

	ldr r0, =input
	ldr r0, [r0]
	pop {pc}
output:
	push {lr}
	mov r2, r1
	mov r1, r0
	ldr r0, =outResult
	bl printf


	pop {pc}
