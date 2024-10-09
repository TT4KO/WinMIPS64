.data
cadena: .asciiz "adbd" 
car: .ascii "d" 
cant: .word 0

.code
daddi $t3, $t0, 0
daddi $t4, $zero, cadena
loop:  
    lb $t1, cadena($t0)
    beq $t1, $zero, fin 
    daddi $t0, $t0, 1
    daddi $t3, $t3, 1 
    j loop
fin:    
    sd $t3, cant($zero)
HALT
