//Lab 7 Grade Book -Created on 1 - 21 - 25
//Created by: Samuel Anderson
//Objective: output letter grade based on number input
.global main

.section .data
    input: .word 0
.section .rodata
    coutWelcome: .asciz "- Lab 7 Grade Book -\n"
    coutInput: .asciz "Please enter grade on assignment : "
    coutGrade: .asciz "Letter grade based on assignment : %s\n"
    data: .asciz "%d"
    
    letterA: .asciz "A"
    letterB: .asciz "B"
    letterC: .asciz "C"
    letterD: .asciz "D"
    letterF: .asciz "F"
.text
main:
    push  {lr}

    //cout the first message
    ldr r0, =coutWelcome
    bl printf

    //cout prompt for inpt
    ldr r0, =coutInput
    bl printf

    //input from user
    ldr r0, =data
    ldr r1, =input
    bl scanf

    //store input 
    ldr r4, =input
    ldr r4, [r4]

    //test grade againt other numbers

    cmp r4, #90             //---------Notes------------
    bpl gradeA
    cmp r4, #80             //bmi = negative flag
    bpl gradeB
    cmp r4, #70             //bpl = no negative flag 
    bpl gradeC
    cmp r4, #60             //bal = always branch
    bpl gradeD
    bmi gradeF
                            //cmp r1, r2 @ sets flags for r1 - r2
    gradeA:
        ldr r1, =letterA
        bal end
    gradeB:
        ldr r1, =letterB
        bal end
    gradeC:
        ldr r1, =letterC
        bal end
    gradeD:
        ldr r1, =letterD
        bal end
    gradeF:
        ldr r1, =letterF
        bal end
end:
    ldr r0, =coutGrade
    bl printf

    //end program
    mov r0, #0
    pop   {pc}
    