.data
v: .word 4, 2, 9, 3, 0
max: .word 0
.code
ld $t1, v($zero)
daddi $t2, $t2, 8
ld $t3, v($t2)
loop:
slt $t4, $t1, $t3
beqz $t4, otro
dadd $t1, $t0, $t3
otro:
dadd $t2, $t2, $t2
ld $t3, v($t2)
bnez $t3, loop

sb $t1, max($zero)
HALT
