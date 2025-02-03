.global main 
.extern wiringPiSetupGpio
.extern pinMode
.extern digitalRead
.extern digitalWrite
.extern delay

#define PIN_BUTTON 18
#define PIN_LED 17
.equ LOW, 0
.equ HIGH, 1
.equ INPUT, 0
.equ OUTPUT, 1

.text
main: 
    push {lr}

    bl wiringPiSetupGpio

    mov r0, #PIN_BUTTON
    mov r1, #INPUT
    bl pinMode

    mov r0, #PIN_LED
    mov r1, #OUTPUT
    bl pinMode

    while: 
        mov r0, PIN_BUTTON
        bl digitalRead
        cmp r0, #HIGH
        mov r0, #PIN_LED
        moveq r1, #HIGH
        movne r1, #LOW
        bl digitalWrite

        mov r0, #100
        bl delay 
        bal while

mov r0, #0
pop {pc}

