    .global _start @prog3a/s -- a simple assembler file 

_start:
    MOV R0, #65
    MOV R7, #1
    SWI 0
