.global main //using c to compile need entry to be main

.section .data //var inti

.section .rodata //readonly
	hello: .asciz "Hello World!\n"

.section .bss //var, non-inti


.text //beg of code section
main: //	int main (){
	//start; lib c
	push {lr}

	//load string into r1
	ldr r0, =hello

	//print
	bl printf

	//always put at end , clean exit
	mov r0, #0

	//end; using c lib
	pop {pc}
