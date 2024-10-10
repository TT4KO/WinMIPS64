.data
cadena: .asciiz "abracadaba" 
car: .ascii "d" 
cant: .word 0

.code
daddi $t2, $zero, cadena 
lb $t4, car($zero)
daddi $t3, $t0, 0
loop:
    lb $t1, 0($t2)
    beq $t1, $zero, fin 
    beq $t1, $t4, otro
    j siguiente
otro:
    daddi $t3, $t3, 1
siguiente: 
    daddi $t2, $t2, 1
    j loop
fin:  
    sd $t3, cant($zero)
HALT
