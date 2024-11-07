.data
win: .asciiz "la clave es correcta"
lose: .asciiz "clave incorrecta"
cod: .asciiz "aaa"
data: .word 0x10008
control: .word 0x10000

.code
ld $s0, control($zero)
ld $s1, data($zero)
daddi $t5, $zero, 3
daddi $t1, $t0, 4
daddi $t3, $t3, 9
daddi $t2, $zero, cod ;t2 direccion
loop:
lb $a0, 0($t2)     ;$a0 tomo el primer caracter
sd $t3, 0($s0)      ;$t3 para imprimir
lb $a1, 0($s1)      ;$a1, guardo el caracter leido
bne $a1, $a0, error ;comparo
daddi $t2, $t2, 1   ;incremento la direccion
daddi $t5, $t5, -1
bnez $t5, loop

daddi $t0, $0, win
sd $t0, 0($s1)
sd $t1, 0($s0)
j fin
error: daddi $t0, $0, lose
       sd $t0, 0($s1)
       sd $t1, 0($s0)
fin: halt
