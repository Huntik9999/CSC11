.global main
//functions 
.global menu 
.global fahrenheit
.global celsius
.global kelvin
//external
.extern divMod
//data 
.section .data
    input: .word 0 
    inputD: .word 0
//read only 
.section .rodata
    coutWelcome: .asciz "-Lab 14: Temperature Conversion-\n"
    coutInput: .asciz "What do you want to convert a temperature to (C or F or K):"
    coutInputK: .asciz "Convert (C or F) to Kelvin? :"
    dataInt: .asciz "%d"
    dataChar: .asciz " %c"
    coutAns: .asciz "Converted temperature in %s = %d\n"
    coutCelsius: .asciz "Please input temp in Celsius: "
    coutFahrenheit: .asciz "Please input temp in Fahrenheit: "
    error: .asciz "!ERROR!: Please pick a correct choice!!!\n"
    coutEndF: .asciz "Fahrenheit"
    coutEndC: .asciz "Celsius"
    coutEndK: .asciz "Kelvin"
    debug: .asciz "debug:_ %d _\n"
//start code 
.text 
main:
    push {lr}
    //call menu function
    bl menu 

    //check to see if its c or C
    cmp r0, #67
    ldreq r1, =coutEndC
    bleq celsius

    cmp r0, #99
    ldreq r1, =coutEndC
    bleq celsius
    //check for f or F 
    cmp r0, #70
    ldreq r1, =coutEndF
    bleq fahrenheit
        
    cmp r0, #102
    ldreq r1, =coutEndF
    bleq fahrenheit
    //check for k or K 
    cmp r0, #75
    ldreq r1, =coutEndK
    bleq kelvin
        
    cmp r0, #107
    ldreq r1, =coutEndK
    bleq kelvin
    //print answer
    mov r2, r0
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

        //check for k or K 
        cmp r0, #75
        beq _exit
        
        cmp r0, #107
        beq _exit

        //loop back and output error if wrong
        ldr r0, =error
        bl printf 
        
        bal _error 
    _exit:
    pop {pc}

fahrenheit:
    push {r1,r4,lr}
    //prompt for input 
    ldr r0, =coutCelsius
    bl printf
    //input answer 
    ldr r0, =dataInt
    ldr r1, =inputD
    bl scanf
    //store 
    ldr r0, =inputD
    ldr r0, [r0]

    //multiply the top by 9 
    mov r1, #9
    mul r0, r0, r1

    //uint32_t divMod( uint32_t numerator, uint32_t denominator );
    //divide by 5 
    mov r1, #5 
    bl divMod
    
    //debug 
    //mov r4, r0
    //mov r1, r0
    //ldr r0, =debug
    //bl printf
    //mov r0, r4
    
    //add 32

    add r0, r0, #32

    pop {r1,r4,pc}

celsius:
    push {r1,lr}
    //prompt for input 
    ldr r0, =coutFahrenheit
    bl printf
    //input answer 
    ldr r0, =dataInt
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

    pop {r1,pc}
kelvin:
    push {r1, lr} 
    //input for F or C 
    _error2:
        //output for the input 
        ldr r0, =coutInputK
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
        beq _CToKelvin
        
        cmp r0, #99
        beq _CToKelvin

        //check for f or F 
        cmp r0, #70
        beq _FToKelvin
        
        cmp r0, #102
        beq _FToKelvin

        //loop back and output error if wrong
        ldr r0, =error
        bl printf 
        
        bal _error2

    _FToKelvin:
        //prompt for input 
        ldr r0, =coutFahrenheit
        bl printf
        //input answer 
        ldr r0, =dataInt
        ldr r1, =inputD
        bl scanf
        //store 
        ldr r0, =inputD
        ldr r0, [r0]
        //sub 32
        sub r0, r0, #32
        //multiply by 5
        mov r1, #5 
        mul r0, r0, r1 
        //divide by 9 
        mov r1, #9
        bl divMod
        ///add by 273 = done
        ldr r1, =#273
        add r0, r0, r1
        
        bal _exit2
    _CToKelvin:
        //prompt for input 
        ldr r0, =coutCelsius
        bl printf
        //input answer 
        ldr r0, =dataInt
        ldr r1, =inputD
        bl scanf
        //store 
        ldr r0, =inputD
        ldr r0, [r0]
        ///add by 273 = done
        ldr r1, =#273
        add r0, r0, r1
         
_exit2:
    pop {r1,pc}
