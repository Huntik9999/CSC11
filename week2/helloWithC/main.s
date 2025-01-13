.global main //using c to compile need entry to be main

.section .data //var inti
.section .rodata //readonly
	hello: .asciz "Hello World\n"

	format: .asciz "%s"
.section .bss //var, non-inti


.text //beg of code section
main: //	int main (){
	//push onto a stack from temp mem storage
	push {lr}

	//load parameters into printf
	//put the format into the `st parameter spot, r0
	//need to use load since its from a string
	ldr r0, =format

	//load the string we are pritning
	ldr r1, =hello

	//run printf
	bl printf

	//return values in function always to r0
	mov r0, #0

	//take off a value from the stack and  put into a register i need to use pop
	pop {pc}
