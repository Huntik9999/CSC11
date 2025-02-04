.global main
//functions 
.global menu 
.global fahrenheit
.global celsius
//external
.extern divMod
//data 
.section .data
    input: .word 0 
    inputD: .word 0
//read only 
.section .rodata
    coutWelcome: .asciz "-Lab 14: Temperature Conversion-\n"
    coutInput: .asciz "What do you want to convert a temperature to (C or F):"
    dataInt: .asciz "%d"
    dataChar: .asciz "%c"
    error: .asciz "!!!ERROR: _ please pick a correct choice!!!\n"
    coutAns: .asciz "Converted temp = %d\n"
    coutCelsius: .asciz "Please input temp in Celsius: "
    coutFahrenheit: .asciz "Please input temp in Fahrenheit: "
//start code 
.text 
main:
    push {lr}
    //call menu function
    bl menu 

    //check to see if its c or C
    cmp r0, #67
    bleq celcius
        
    cmp r0, #99
    bleq celcius

    //check for f or F 
    cmp r0, #70
    bleq fahrenheit
        
    cmp r0, #102
    bleq fahrenheit

    //print answer
    mov r1, r0
    ldr r0, =coutAns
    bl printf

    //exit
    mov r0, #0
    pop {pc}

menu:
    push {lr}
    _error:
        //output for the input 
        ldr r0, =coutInput
        bl printf

        //take input
        ldr r0, =dataChar
        ldr r1, =input
        bl scanf

        //store input 
        ldr r0, =input 
        ldr r0, [r0]

        //check to see if its c or C
        cmp r0, #67
        beq _exit
        
        cmp r0, #99
        beq _exit

        //check for f or F 
        cmp r0, #70
        beq _exit
        
        cmp r0, #102
        beq _exit

        //loop back and output error if wrong
        ldr r0, =error
        bl printf 
        
        bal _error 
    _exit:
    pop {pc}

fahrenheit:
    push {lr}
    //prompt for input 
    ldr r0, =coutCelsius
    bl printf
    //input answer 
    ldr r0, =dataType
    ldr r1, =inputD
    bl scanf
    //store 
    ldr r0, =inputD
    ldr r0, [r0]
    //multiply the top by 9 
    mov r1, #9
    mul r0, r0, r1

    //divide by 5 
    mov r1, #5 
    bl divMod

    //add 32 
    add r0, #32

    pop {pc}

celsius:
    push {lr}
    //prompt for input 
    ldr r0, =coutFahrenheit
    bl printf
    //input answer 
    ldr r0, =dataType
    ldr r1, =inputD
    bl scanf
    //store 
    ldr r0, =inputD
    ldr r0, [r0]
    //numerator math
    sub r0, r0, #32 
    mov r1, #5
    mul r0, r0, r1

    //call divmod extern 
    //uint32_t divMod( uint32_t numerator, uint32_t denominator );
    mov r1, #9 //denominator
    bl divMod //pray

    pop {pc}


