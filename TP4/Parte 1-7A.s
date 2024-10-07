.data
v: .word -5, 2, 6, 3, 2, 0
pos: .word 0
.code
ld $t1, v($zero)
daddi $t2, $t2, 8
loop:
slti $t1, $t1, 0
bnez $t1, salir
daddi $t4, $t4, 1
salir:
ld $t1, v($t2)
dadd $t2, $t2, $t2
bnez $t1, loop

sb $t4, pos($zero)
HALT
