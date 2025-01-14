.global main //using c to compile need entry to be main

.section .data //var inti
.section .rodata //readonly
	hello: .asciz "Hello World!\n"

	format: .asciz "%s"
.section .bss //var, non-inti


.text //beg of code section
main: //	int main (){
	//start; lib c
	push {lr}

	//string data type 
	ldr r0, =format

	//load string into r1
	ldr r1, =hello

	//print
	bl printf

	//always put at end 
	mov r0, #0

	//end; using c lib
	pop {pc}
