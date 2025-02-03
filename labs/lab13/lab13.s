.global main
//external 
.extern divMod
//functions
.global celsius 

//data 
.section .data
    input: .word 0
//read only data 
.section .rodata
    coutWelcome: .asciz "-Lab 13: Celsius Temperature Table-\n"
    coutInput: .asciz "Please input tempature in Fahrenheit to convert to Celsius: "
    coutAns: .asciz "The Final Tempature converted = %d degrees celsius\n"
    coutBuffer: .asciz "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
    coutTable: .asciz "| Fahrenheit  = %d | Celsius  = %d |\n"
    dataType: .asciz "%d"
.text
main: 
    push {lr}
    //output welcome msg
    ldr r0, =coutWelcome
    bl printf 

    //output prompt for input
    ldr r0, =coutInput
    bl printf 

    //input F 
    ldr r0, =dataType
    ldr r1, =input
    bl scanf 
    //store input into argument
    ldr r0, =input 
    ldr r0, [r0]
    //call funciton 
    bl celsius
    //print the answer from function (celcius)
    mov r1, r0
    ldr r0, =coutAns
    bl printf
    //call function and loop through 32 - 100 fore demenstration 
    //print buffer for loop 
    ldr r0, =coutBuffer 
    bl printf
    mov r4, #32
    _loop:
        //store
        mov r0, r4
        //call function
        bl celsius
        //print
        mov r2, r0
        mov r1, r4
        ldr r0, =coutTable
        bl printf
        //add to r4 till 100 and loop if not equal
        add r4, #1 
        cmp r4, #101
        bne _loop 
    //end buffer
    ldr r0, =coutBuffer 
    bl printf 
    //exit  
    mov r0, #0 
    pop {pc}

celsius:
    push {lr}

    //numerator math
    sub r0, r0, #32 
    mov r1, #5
    mul r0, r0, r1

    //call divmod extern 
    //uint32_t divMod( uint32_t numerator, uint32_t denominator );
    mov r1, #9 //denominator
    bl divMod //pray



    pop {pc}
