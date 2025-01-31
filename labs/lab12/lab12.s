//main
.global main
//functions
.global fallingDistance
//data
.section .data
    input: .word 0
//rodata
.section .rodata
    coutWelcome: .asciz "Lab 12 - Falling Distance\n"
    coutGetTime: .asciz "Please input time in seconds: "
    coutTotal: .asciz "Total distance: %d meters\n"
    dataType: .asciz "%d"
    coutLoop: .asciz "Time: %d | Distance: %d\n"
//start 
.text
main:
    push {lr}
    //print message
    ldr r0, =coutWelcome
    bl printf
    //promp for time
    ldr r0, =coutGetTime
    bl printf
    //input time 
    ldr r0, =dataType
    ldr r1, =input
    bl scanf
    //store time
    ldr r0, =input
    ldr r0, [r0]
    //call function 
    bl fallingDistance
    //output the result
    mov r1, r0 
    ldr r0, =coutTotal 
    bl printf
    //fin
    pop {pc}
//accept time as argument (1-10)
//return distance 
fallingDistance:
    push {r4,r5,r6,r7,lr}
    //initial time
    mov r5, r0
    //i = 0
    mov r4, #0
    //put gravity in a register 
    mov r6, #9
    _loop:
        //i + 1
        add r4, #1
        //copy and mult
        mov r1, r4  
        mul r1, r1, r4
        //multiply by 9
        mul r1, r1, r6
        //logical shift right by 1 to divide by 2
        lsr r1, #1
        //move answer into safew register
        mov r7, r1
        //print the answer 
        mov r2, r1
        mov r1, r4
        ldr r0, =coutLoop
        bl printf
        //subtract amin time by 1 
        sub r5, #1
        //check for zero flag
        cmp r5, #0
        //loop if zero flag is not activated 
        bne _loop
        
    //put final answer in 0
    mov r0, r7
    //fin
    pop {r4,r5,r6,r7,pc}
