.global main

.section .rodata

printTHIS1: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHIS2: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHIS3: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣷⣌⠙⠷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHIS4: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣧⠘⡘⢿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHIS5: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣤⣤⣴⣶⣶⣶⡷⠷⠷⠶⠶⣦⣤⣀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣧⠐⡈⢿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHIS6: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣈⠙⠻⣦⣼⣿⣿⣿⣿⣿⣿⣿⣆⢁⠚⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHIS7: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⢿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣆⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⡄⠌⣹⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHIS8: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡡⢘⣿⣿⣿⣿⣿⣿⣿⣷⣐⣠⣿⣦⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHIS9: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISA: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⡘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISB: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣶⡿⣟⣛⣛⣛⡛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISC: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISD: .asciz "⠀⠀⠀⠀⠀⠀⠀⠰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣀⣀⣀⣀⣀⣄⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISE: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISF: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⢟⣵⡿⣹⣿⣿⣿⣿⠟⢛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISG: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⣿⣿⣿⣿⣿⣿⣿⣿⣷⡿⣿⣿⣿⣿⣿⠋⡼⢱⣿⣿⣿⠟⣡⠞⡿⣿⣿⢟⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISH: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣶⣶⣿⣟⣿⣿⡿⢻⣿⣿⣿⣿⡇⢻⣿⣿⡟⠁⠸⠁⣿⣿⣟⡵⠞⢁⠜⢁⣿⡿⣿⣿⣿⢿⣿⣿⣟⣟⣿⣻⣶⣶⣦⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISI: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⡧⡞⣿⣿⢹⣿⣿⣿⣿⡟⠀⠀⠀⢸⣿⣿⠋⠀⠀⢉⣠⣾⣷⣶⣿⡟⠛⣼⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISJ: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠿⣿⣿⣿⠃⢈⣿⣯⢁⡏⠉⠛⢿⣷⣄⠀⣸⡟⠁⢀⣤⡾⠟⠋⢹⠁⢀⢶⣀⣼⣿⣿⣿⣿⣿⠿⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISK: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣦⡈⠻⢿⡄⠳⣤⣄⣀⣛⢹⠿⠇⠼⠞⣏⣛⣁⣀⣠⠃⠀⡾⠟⢸⣿⣿⣿⣿⣉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISL: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⣷⣤⣻⢀⠋⠉⠉⠙⠛⠀⣠⠀⠀⠈⠓⠒⠒⠂⠀⣺⣤⣾⣿⣿⣿⣿⣾⣿⣿⣶⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISM: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠛⠛⠛⠛⠛⣿⣿⣁⠭⡀⠈⠀⠀⢴⣿⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣯⡉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISN: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⠈⢷⣄⡀⠀⠀⠸⠻⠞⠲⠀⠀⠀⢀⡤⠋⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISO: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⠀⡀⢻⡳⢦⡀⠀⠉⠛⠃⠀⣠⣴⡟⠀⠀⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISP: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⡇⢣⠀⢷⡈⠻⣦⣤⣠⠤⠞⠋⡔⡤⠀⠀⢿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISQ: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣧⠈⣇⠈⢷⡀⠘⣷⠀⠀⢀⠞⢰⠳⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISR: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡛⠢⠼⢷⣄⠘⣀⣴⣏⠠⠿⠒⠓⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISS: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣀⣈⣙⣏⣁⣀⣀⣤⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHIST: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISU: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHISV: .asciz "⠀⠀⠀⠀⠀⠀⠀⢠⡾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢦⡀⠀⠀⠀⠀⠀⠀\n"
printTHISW: .asciz "⠀⠀⠀⠀⠀⠀⣠⠟⡶⠁⣤⣼⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⢿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⠿⡇⢰⡽⣄⠀⠀⠀⠀⠀\n"
printTHISX: .asciz "⠀⠀⠀⠀⠀⣼⠛⡶⢿⠀⡝⠁⣠⣬⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣹⣿⡃⠀⠘⣿⣿⣿⣿⣿⣿⣏⢤⣼⡀⠻⢟⢆⠀⠀⠀⠀\n"
printTHISY: .asciz "⠀⠀⠀⠀⣸⣿⣾⣧⣤⣴⡇⠀⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣯⣿⣿⣾⣤⣤⣤⣿⣿⣿⣿⡟⡝⢱⠛⢀⣷⣦⣾⣿⣆⠀⠀⠀\n"
printTHISZ: .asciz "⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣦⣤⣀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⣷⣶⣿⣿⣿⣿⣿⣿⡄⠀⠀\n"
printTHIS10: .asciz "⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⢩⣯⣿⣿⣿⣿⣿⣟⣿⣯⣿⡽⣯⣿⣽⣯⣿⣿⣿⣿⣿⢿⣿⣿⠿⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠗⠙⣿⠿⡇⠀⠀\n"
printTHIS11: .asciz "⠀⠀⠀⣿⣿⢁⡄⢻⣿⣿⡧⣌⣿⣿⣿⡏⠉⡏⠉⢻⣿⠋⢀⣿⣿⡿⠀⠈⠉⠀⢾⣿⣿⣿⣏⣣⢇⣆⣧⣯⣾⣧⣦⣿⣿⣿⣿⠃⠈⣿⡇⠀⣴⡆⠀⢸⡀⠘⡟⢿⣿⣿⣿⣿⣿⣿⣿⣿⠃⣰⣤⣋⡄⡇⠀⠀\n"
printTHIS12: .asciz "⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣯⠛⢻⣿⣿⣿⣿⣿⡀⠸⠁⣠⣿⢿⣿⡇⠀⣿⣿⠂⠀⣿⣿⣿⣿⣻⣾⣿⣯⣿⣾⣽⣿⣿⣿⣿⣧⡄⠀⢿⠀⢰⣿⡇⠀⣾⣧⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣷⣿⣿⣯⠀⠀\n"
printTHIS13: .asciz "⠀⠀⣸⣿⡟⠙⢿⣿⣿⣿⣿⣷⣾⣿⣿⣿⣿⣿⡇⠀⣰⣿⡁⢀⣿⣇⣀⣈⣀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣾⣶⣾⣿⣤⣤⣿⠟⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀\n"
printTHIS14: .asciz "⠀⢰⣿⣿⢀⣠⣾⠉⢻⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣽⣻⣟⣿⠋⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀\n"
printTHIS15: .asciz "⠀⣾⣿⣿⣿⣿⢿⡁⣰⣿⣿⣿⣿⣿⣿⣿⣿⣀⣼⣿⣿⠟⠻⣿⣿⣿⠛⢻⣿⣿⣷⣦⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣾⣟⣷⣿⣻⣽⣿⣶⣿⣿⣿⣿⣿⣿⣿⡿⠛⠛⠉⢹⠁⠈⣁⣸⡄⢻⠿⡆\n"
printTHIS16: .asciz "⢀⣿⣿⣿⣿⣿⣦⡜⠻⣤⣼⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠙⣿⡟⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⣿⠿⠛⠛⢾⣿⠾⠻⢿⣾⣯⣷⣿⣿⣿⣿⣿⠟⣡⣾⣶⠀⢾⠀⣸⣿⣿⡇⠘⢰⡇\n"
printTHIS17: .asciz "⢸⣿⣿⢟⣻⣿⡟⠁⣀⣿⣿⠟⠻⣦⣿⣿⣿⣿⣿⣿⣿⠀⢸⣶⢾⡇⠀⣿⡟⠉⣀⡀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⢸⡇⠀⠺⣶⣿⠁⠐⢶⣾⠏⠁⣀⡈⠙⢛⣿⣇⣀⣻⣿⣧⣶⣿⣿⣿⣿⣿⠇⣠⠟⡇\n"
printTHIS18: .asciz "⠸⣿⣷⣿⣿⣿⣿⣿⣿⣿⣯⣀⣼⣿⣿⣿⣿⣿⣿⣿⣿⢀⣾⣿⣯⠇⠀⣿⠀⢈⣿⣉⣀⣸⣿⣿⣿⣿⣿⣿⣿⣿⡷⠶⣾⢷⣦⠀⢀⣿⣶⣄⣄⡇⠀⣾⣿⠃⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣡⣾⣿⣾⠃\n"
printTHIS19: .asciz "⠀⣿⣿⣿⣿⣿⣿⡿⠛⢛⡉⠙⣿⡇⠽⠿⣿⣿⣿⣿⣿⣭⣾⣿⣿⣝⣦⣿⣄⡈⣿⠋⢉⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣧⣮⣠⣴⣾⣴⣁⣠⣿⣆⡀⣉⠁⣸⣿⣿⣿⣿⠿⠟⣿⠟⠋⣙⡛⢻⣿⣿⣿⣿⣏⠀\n"
printTHIS1A: .asciz "⠀⢽⣿⡿⠿⠉⢹⡆⠀⣿⣷⠀⠸⣿⠳⠦⠀⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⣼⠁⢠⣄⣉⠃⢀⠟⠋⠙⢿⡟⠀\n"
printTHIS1B: .asciz "⠀⠘⣿⡇⣴⣦⠈⣷⠀⢹⣿⣇⣠⣽⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⠛⠛⠻⣿⣿⣿⣿⣿⣿⣿⣶⣾⣿⣄⡈⠉⢉⣻⠋⢀⣶⡆⢨⡇⠀\n"
printTHIS1C: .asciz "⠀⠀⢻⡇⢹⠏⠀⣽⣶⣾⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⡿⠀⣸⡆⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠈⠛⢁⢿⠁⠀\n"
printTHIS1D: .asciz "⠀⠀⠘⣿⣄⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⣿⣿⣿⡟⢶⣾⠉⢠⣄⣽⡿⠋⠉⠙⢿⣿⣿⣿⣿⣿⣿⡏⠘⣿⠋⠀⣴⣿⣿⣿⡇⠀⠉⠁⢸⡅⡽⣿⣿⣿⣿⣿⣿⡿⠋⠙⠛⠿⣿⣿⣿⣿⣧⡞⡞⠀⠀\n"
printTHIS1E: .asciz "⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⠛⠋⣠⣿⣷⣈⣿⣄⡀⠙⡏⠀⣰⣿⣷⣾⣿⣿⣿⣿⣿⣿⣿⠀⠁⣠⣾⣿⣿⣿⣿⠁⢰⣿⠂⢸⣷⣿⣿⣿⣿⣿⠛⠯⣛⣶⣾⡆⠀⣽⣿⣿⣿⣿⣿⠁⠀⠀\n"
printTHIS1F: .asciz "⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣋⣽⣿⣿⣿⣿⣿⣿⣏⡉⠁⣰⣇⠀⠙⠿⠋⢹⣿⣿⣿⣿⣿⣿⡟⢀⣴⣿⡃⠀⣹⣿⡏⠀⠈⣁⡴⢉⣿⣿⣿⣿⣿⣿⣷⣮⣝⡋⠛⣷⣞⣿⣿⣿⣿⣿⠇⠀⠀⠀\n"
printTHIS1G: .asciz "⠀⠀⠀⠀⠘⣿⣿⣏⡉⠛⠁⢸⣿⣿⣿⣿⣿⣿⣿⣿⠟⢿⣿⣿⣟⣿⣿⣿⣿⣷⣦⣶⣦⣿⣿⣿⣿⣿⣿⣿⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠿⡿⣛⣿⠋⠀⠀⠀⠀\n"
printTHIS1H: .asciz "⠀⠀⠀⠀⠀⠘⣿⣿⣿⣦⡄⢸⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠈⠻⣿⡈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⡿⠁⣰⡿⠋⠁⠙⠿⢿⣿⣿⣿⣿⣏⠉⢀⣀⣤⣴⣿⡿⠁⠀⠀⠀⠀⠀\n"
printTHIS1I: .asciz "⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⡇⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠐⣄⠈⠃⢹⣿⣿⡏⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣟⣁⠜⠋⢀⣴⣿⡿⠀⢀⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀\n"
printTHIS1J: .asciz "⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣠⣿⣿⣿⣿⠿⢻⣿⣿⣿⣇⠀⢹⣷⣄⢸⣿⣹⡝⣦⣿⣿⣿⣿⣿⣿⣿⣿⣯⣙⣏⢻⣿⢏⣻⣽⣿⣿⣿⣷⣶⣿⠟⠁⢀⣤⡾⠁⢠⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHIS1K: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⠀⢸⣿⣿⣿⣿⡄⣀⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⡿⢬⣿⣿⠾⢯⡄⢹⣿⣿⣿⣿⣿⣦⣴⣿⣿⠃⠠⠿⠛⠉⢻⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHIS1L: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⢉⣿⣿⣿⡉⠻⠆⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⠉⢙⣿⣿⣿⣿⣿⣯⣽⣿⣿⣿⣿⣶⠞⠛⡟⠛⠻⢿⣿⣿⣿⣿⣍⢀⣀⣤⣤⣶⣾⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHIS1M: .asciz "⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣾⡿⠿⣿⣿⣦⣤⣨⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⣠⣿⢷⣮⣿⣿⣿⣷⡽⠿⣿⣿⡿⠿⣿⣿⣷⠠⣿⣿⣷⣆⢈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
printTHIS1N: .asciz "⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⡟⠑⡆⡸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⢉⣠⠄⢸⣿⣿⣿⣿⠀⠀⠀⠀⠉⠒⠿⢿⣿⣷⣾⣿⡟⠛⡉⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⡇⢸⠘⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ \n"

.text
main:

    push {lr}
    ldr r0, =printTHIS1
    bl printf
    ldr r0, =printTHIS2
    bl printf
    ldr r0, =printTHIS3
    bl printf
    ldr r0, =printTHIS4
    bl printf
    ldr r0, =printTHIS5
    bl printf
    ldr r0, =printTHIS6
    bl printf
    ldr r0, =printTHIS7
    bl printf
    ldr r0, =printTHIS8
    bl printf
    ldr r0, =printTHIS9
    bl printf
    ldr r0, =printTHISA
    bl printf
    ldr r0, =printTHISB
    bl printf
    ldr r0, =printTHISC
    bl printf
    ldr r0, =printTHISD
    bl printf
    ldr r0, =printTHISE
    bl printf
    ldr r0, =printTHISF
    bl printf
    ldr r0, =printTHISG
    bl printf
    ldr r0, =printTHISH
    bl printf
    ldr r0, =printTHISI
    bl printf
    ldr r0, =printTHISJ
    bl printf
    ldr r0, =printTHISK
    bl printf
    ldr r0, =printTHISL
    bl printf
    ldr r0, =printTHISM
    bl printf
    ldr r0, =printTHISN
    bl printf
    ldr r0, =printTHISO
    bl printf
    ldr r0, =printTHISP
    bl printf
    ldr r0, =printTHISQ
    bl printf
    ldr r0, =printTHISR
    bl printf
    ldr r0, =printTHISS
    bl printf
    ldr r0, =printTHIST
    bl printf
    ldr r0, =printTHISU
    bl printf
    ldr r0, =printTHISV
    bl printf
    ldr r0, =printTHISW
    bl printf
    ldr r0, =printTHISX
    bl printf
    ldr r0, =printTHISY
    bl printf
    ldr r0, =printTHISZ
    bl printf
    ldr r0, =printTHIS10
    bl printf
    ldr r0, =printTHIS11
    bl printf
    ldr r0, =printTHIS12
    bl printf
    ldr r0, =printTHIS13
    bl printf
    ldr r0, =printTHIS14
    bl printf
    ldr r0, =printTHIS15
    bl printf
    ldr r0, =printTHIS16
    bl printf
    ldr r0, =printTHIS17
    bl printf
    ldr r0, =printTHIS18
    bl printf
    ldr r0, =printTHIS19
    bl printf
    ldr r0, =printTHIS1A
    bl printf
    ldr r0, =printTHIS1B
    bl printf
    ldr r0, =printTHIS1C
    bl printf
    ldr r0, =printTHIS1D
    bl printf
    ldr r0, =printTHIS1E
    bl printf
    ldr r0, =printTHIS1F
    bl printf
    ldr r0, =printTHIS1G
    bl printf
    ldr r0, =printTHIS1H
    bl printf
    ldr r0, =printTHIS1I
    bl printf
    ldr r0, =printTHIS1J
    bl printf
    ldr r0, =printTHIS1K
    bl printf
    ldr r0, =printTHIS1L
    bl printf
    ldr r0, =printTHIS1M
    bl printf
    ldr r0, =printTHIS1N
    bl printf
    mov r0, #0
    pop {pc}
    