//going to start soon
.global main


.section .data
	width: .word 0
	length: .word 0
//read only data
.section .rodata
	outWPrompt: .asciz "input the width: "
	outLPrompt: .asciz "Input the length: "
	inPat: .asciz "%d"
	outInvalidW: .asciz "need to enter a non-negative number for width\n"
	outInvalidL: .asciz "need to enter a non-negative number for length\n"
	outResults: .asciz "Your area is a %d\n"
	outSquare: .asciz "your shape is a square\n"
	outRect: .asciz "your shape is a rectangle\n"
//
.section .bss
	area: .space 4
//code starts here
.text
main:
	/* printf clears up to r3 */

	//start of assembly code with c
	push {lr}

	//load prompt
	ldr r0, =outWPrompt
	//output prompt
	bl printf

	//define data as ints
	ldr r0, =inPat
	//????
	ldr r1, =width
	//get input from user
	bl scanf

	//load prompt
	ldr r0, =outLPrompt
	//output prompt
	bl printf

	//define input data type
	ldr r0, =inPat
	//?????????
	ldr r1, =length
	//get input from user
	bl scanf

	//get adress of width and put into r1
	ldr r1, =width
	//switch it to the value
	ldr r1, [r1]

	//get adress of length and load into r2
	ldr r2, =length
	//switch adress -> value
	ldr r2, [r2]

	//compare num in r1 "width" to 0
	cmp r1, #0
	//if negative go to
	blt invalidWidth

	//compare length to 0
	cmp r2, #0
	//if negative go to 
	blt invalidLength

	//r3 = r1 & r2
	mul r3, r1, r2

	//load area into r4 
	ldr r4, =area
	str r3, [r4]

	//
	cmp r1, r2
	beq square
	bne rect

square:
	ldr r0, =outSquare
	bl printf
	bal outputArea

rect:
	ldr r0, =outRect
	bl printf
	bal outputArea

outputArea:
	//
	ldr r0, =outResults
	ldr r1, [r4]
	bl printf

	//go to end
	bal end


invalidWidth:
	ldr r0, =outInvalidW
	bl printf
	//go to end
	bal end
invalidLength:
	ldr r0, =outInvalidL
	bl printf
	//go to end
	bal end
end:
	mov r0, #0
	//end of assembly code with c
	pop {pc}

