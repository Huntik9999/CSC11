//Master Mind Game Project 
//Created by: Samuel Anderson 
//Created on:2/7/2025 
.global main 
//functions
.global getInput
.global checkGuess
.global printFeedback
//constants
.equ RED,    1
.equ GREEN,  2
.equ CYAN,   3
.equ YELLOW, 4
.equ BROWN,  5
.equ ORANGE, 6
.equ BLACK,  7
.equ WHITE,  8
//data
.section .data
    arr: .space 16 //4 bytes * 4 
    input: .space 4 //4 bytes per input
    secretArray:  .word WHITE, CYAN, BROWN, YELLOW //8, 3, 5, 4 
//read only data 
.section .rodata
    coutWelcome: .asciz "-Welcome to Master Mind-\n"
    partialMatch: .asciz "Partial Match Activated\n"
    exactMatch: .asciz "Exact Match Activated\n"
    coutGuess: .asciz "Please enter guess for spot %d:\nR = RED, G = GREEN, C = CYAN, Y = YELLOW, B = BROWN, O = ORANGE, K = BLACK, W = WHITE\n"
    coutWin: .asciz "You win the game"
    coutLoose: .asciz "You loose the game"
    dataTypeS: .asciz " %s" 
    dataTypeC: .asciz " %d"
    dataTypeD: .asciz " %c"
//start of game 
.text
main:
    push {lr}
    //welcome message
    ldr r0, =coutWelcome
    bl printf
    //counter
    mov r4, #10

    //game loop 
    _game:
        //check if counter ends 
        cmp r4, #0
        beq _exitGame
        //get guess and put into array 
        ldr r0, =arr
        bl getInput 
        //check answer 
        bl checkGuess
        //

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    //win game message 
    _win:
    ldr r0, =coutWin
    bl printf
    bal _fin
    //loose game message 
    _loose:
    ldr r0, =coutLoose
    bl printf 
    _fin: 
    pop {pc}

getInput: 
    push {r4,lr}
    // i = 4
    mov r4, #4
    _loopGetInput:
        //msg to guess 
        ldr r0, =coutGuess
        bl printf
        //input 


    pop {pc}

checkGuess:
    push {lr}



    pop {pc}

printFeedback:
    push {lr}



    POP {PC}