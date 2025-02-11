.global main
//function 
.global print 
//library 
.extern wiringPiSetupGpio
.extern pinMode
.extern digitalRead
.extern digitalWrite
.extern delay

//constants
.equ PIN_BUTTON, 18
.equ PIN_HUMAN_WALK, 23
.equ PIN_HUMAN_STOP, 24
.equ PIN_CAR_GO, 22
.equ PIN_CAR_WARN, 27
.equ PIN_CAR_STOP, 17
.equ LOW, 0
.equ HIGH, 1
.equ INPUT, 0
.equ OUTPUT, 1
//read only 
.section .rodata
     coutPinOn: .asciz "Pin has been turned on\n"
     coutPinOff: .asciz "Pin has been turned off\n"
     coutButtonPressed: .asciz "Button pressed\n"
.text
main:
    push {lr}
    //gpio
    bl wiringPiSetupGpio    

    //init button mode
    mov r0, #PIN_BUTTON
    mov r1, #INPUT
    bl pinMode             
    //init led lights mode 
    mov r0, #PIN_HUMAN_STOP
    mov r1, #OUTPUT
    bl pinMode              

    mov r0, #PIN_HUMAN_WALK
    mov r1, #OUTPUT
    bl pinMode  

    mov r0, #PIN_CAR_GO
    mov r1, #OUTPUT
    bl pinMode  

    mov r0, #PIN_CAR_WARN
    mov r1, #OUTPUT
    bl pinMode  

    mov r0, #PIN_CAR_STOP
    mov r1, #OUTPUT
    bl pinMode  
    
    //turn trafic light on 
    mov r0, #PIN_CAR_GO
    mov r1, #HIGH
    bl digitalWrite
    mov r0, #1
    bl print

    //start of game loop infinite 
    _loop:
        //check if button is pressed 
        mov r0, #PIN_BUTTON
        bl digitalRead
        //check input 
        cmp r0, #LOW
        //go back if not high
        beq _loop
        //output if pressed 
        mov r0, #3
        bl print
        //turn on human stop 
        mov r0, #PIN_HUMAN_STOP
        mov r1, #HIGH
        bl digitalWrite
        mov r0, #1
        bl print
        //turn on yellow light 
        mov r0, #PIN_CAR_WARN
        mov r1, #HIGH
        bl digitalWrite
        mov r0, #1
        bl print
        //turn off green light 
        mov r0, #PIN_CAR_GO
        mov r1, #LOW
        bl digitalWrite
        mov r0, #2
        bl print
        //delay for a bit 
        mov r0, #4000
        bl delay
        //turn off yellow and make red for traffic 
        mov r0, #PIN_CAR_WARN
        mov r1, #LOW
        bl digitalWrite
        mov r0, #2
        bl print

        mov r0, #PIN_CAR_STOP
        mov r1, #HIGH
        bl digitalWrite
        mov r0, #1
        bl print

        //walk light green on / turn off red 
        mov r0, #PIN_HUMAN_STOP
        mov r1, #LOW
        bl digitalWrite
        mov r0, #2
        bl print

        mov r0, #PIN_HUMAN_WALK
        mov r1, #HIGH
        bl digitalWrite
        mov r0, #1
        bl print
        //delay for a bit 
        mov r0, #4000
        bl delay
        //make a loop for the waning light
            mov r4, #11 //10 loops 
            mov r5, #1  //bool true 
            _warning:
                //delay for a bit 
                mov r0, #800
                bl delay
                cmp r4, #0
                //exit when r4 = 0
                beq _exitWarning
                //check bool 
                cmp r5, #1 
                beq _off 
                //turn on 
                mov r0, #PIN_HUMAN_WALK
                mov r1, #HIGH
                bl digitalWrite
                mov r0, #1
                bl print
                mov r5, #1 //bool = true 
                sub r4, r4, #1 // 1 off the loop
                bal _warning
                //turn off
                _off:
                mov r0, #PIN_HUMAN_WALK
                mov r1, #LOW
                bl digitalWrite
                mov r0, #2
                bl print
                mov r5, #0 //bool = false 
                sub r4, r4, #1 // 1 off the loop
                bal _warning
            _exitWarning:
            //after warning the end is near 
            //human to red  
            mov r0, #PIN_HUMAN_STOP
            mov r1, #HIGH
            bl digitalWrite
            mov r0, #1
            bl print
            //traffic to green / turn off red 
            mov r0, #PIN_CAR_STOP
            mov r1, #LOW
            bl digitalWrite
            mov r0, #2
            bl print
            
            mov r0, #PIN_CAR_GO
            mov r1, #HIGH
            bl digitalWrite
            mov r0, #1
            bl print
            //go back to beggining 
    bal _loop

    mov r0, #0            
    pop {pc}

//argument r0, = 1(coutPinOn), 2(coutPinOff), 3(coutButtonPressed)
print:
    push {lr}
        //check r0 and execute if equal
        cmp r0, #1
        ldreq r0, =coutPinOn
        bleq printf 
        //check r0 and execute if equal
        cmp r0, #2
        ldreq r0, =coutPinOff
        bleq printf        
        //check r0 and execute if equal
        cmp r0, #3
        ldreq r0, =coutButtonPressed
        bleq printf

        //return 0
        mov r0, #0
    pop {pc}
