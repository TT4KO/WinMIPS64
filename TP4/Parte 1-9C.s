.data
cadena: .asciiz "ArquiTectuRa de ComPutaDoras"
cant: .word 0

.code
daddi $t2, $zero, cadena 
daddi $t3, $t0, 0
loop:
    lb $t1, 0($t2)
    beq $t1, $zero, fin

    slti $t5, $t1, 65
    bnez $t5, otro

    slti $t5, $t1, 91
    beqz $t5, otro 

    daddi $t3, $t3, 1
otro:
    daddi $t2, $t2, 1
    j loop
fin:  
    sd $t3, cant($zero)
HALT
