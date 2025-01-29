.global main
//functions
//.global getInputs
//external 
.extern intSqrt //DO NOT REMOVE


.align 4
.section .data
// your data here
    inputA: .word 0
    inputB: .word 0


.align 4
.section .rodata
// your read only data here
    coutGetA: .asciz "Please enter side A of the right triangle: "
    coutGetB: .asciz "Please enter side B of the right triangle: "
    dataType: .asciz "%d"
    coutHyp: .asciz "The Hypotenuse of the right triangle is: %d\n"
.text
main:
    push {lr}
	
	// this is dummy code to show you how to use the intSqrt function
	// you can erase this and put your code here
	bl getInputs
    //nums added in r0 already :)
    bl intSqrt                 // Call a square root routine
    mov r1, r0
    ldr r0, =coutHyp
    bl printf
    
    pop {pc} // should return 2 if the sqrt is working
getInputs:
    _inputA:
        push {lr}
        //output 
        ldr r0, =coutGetA
        bl printf
        //input 
        ldr r0, =dataType
        ldr r1, =inputA
        bl scanf
        //store
        ldr r4, =inputA
        ldr r4, [r4]
        //check if less than 0 or equal
        cmp r4, #0 
        ble _inputA
    _inputB:
        //2nd input 
        ldr r0, =coutGetB
        bl printf
        //2nd output
        ldr r0, =dataType
        ldr r1, =inputB
        bl scanf
        //store
        ldr r5, =inputB
        ldr r5, [r5]
        //check if less than 0 or equal
        cmp r5, #0 
        ble _inputB
        //add and return the numbers combined 
        add r0, r4, r5

    //pray it works 
    pop {pc} 
