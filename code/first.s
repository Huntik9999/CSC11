//global starts acts as an int main() in c/c++  prototype 
.global _start 

//kinda like the function in c/c++
//label 
_start:
	//moves/copy data to and from register
	// put 42 into register 0 
	//# for immediate vale 
	move r0, #42
	//do a syatem call to exit the program 
	// to do a syscall i need to put the syscall number in a specific register r7
	move r7, #1 

	//now i want 
