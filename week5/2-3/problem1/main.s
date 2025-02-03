.global main

.extern wiringPiSetupGpio
.extern pinMode
.extern digitalWrite
.extern delay 

//const
.equ PIN_LED, 21
.equ LOW, 0
.equ HIGH, 1
.equ INPUT, 0
.equ OUTPUT, 1

.text
main:
push {lr}

bl wiringPiSetupGpio

mov r0, #PIN_LED
mov r1, #OUTPUT
bl pinMode

mov r4, #0

while: 
    cmp r4, #1 
    beq on
    bne off 
    on: 
        mov r0, #PIN_LED
        mov r1, #HIGH
        bl digitalWrite
        mov r4, #0
        b delayLabel 
    off: 
        mov r1, #PIN_LED
        mov r1, #LOW
        bl digitalWrite
        mov r4, #1
    delayLabel:
    mov r0, #250
    bl delay
    b while 

mov r0, #0
pop {pc}

