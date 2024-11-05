.data
control: .word 0x10000
data: .word 0x10008
cod: .asciiz "a"
win: .asciiz "ingresaste una a"
lose: .asciiz "no ingresaste una a"

.code
ld $s0, control($zero)
ld $s1, data($zero)
daddi $t0, $zero, 9

sd $t0, 0($s0)
lbu $t1, 0($s1)

lbu $a0, cod($zero)

bne $t1, $a0, dist

daddi $a1, $zero, win
j mostrar
dist: daddi $a1, $zero, lose
mostrar: sd $a1, 0($s1)
         daddi $t0, $zero, 4
         sd $t0, 0($s0)
halt
