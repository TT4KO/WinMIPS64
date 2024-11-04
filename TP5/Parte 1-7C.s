.data
car: .asciiz "apal"
cant: .word 0

.code
daddi $s1, $zero, 0
ld $s0, car($s1)
daddi $s2, $zero, 0
j es_vocal
sd $v0, cant($zero)
halt

es_vocal:
          jal contiene
          daddi $s1, $s1, 1
          lbu $s0, car($s1)
          beq $s0, $zero fin
          j es_vocal
fin:      ld $v0, $s2($zero)
          jr $ra

                 
contiene:daddi $a0, $s0, 0
         beq $a0, 97, sumar
         beq $a0, 101, sumar
         beq $a0, 105, sumar
         beq $a0, 111, sumar
         beq $a0, 117, sumar
         j otro
sumar:   daddi $s2, $s2, 1
otro:    jr $ra
         
