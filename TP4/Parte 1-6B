.data
v: .word 5, 2, 6
fin: .word 3
.code
daddi $t4, $t0, 1
ld $t5, fin($zero)
ld $t1, v($zero)
daddi $t2, $t0, 8
ld $t3, v($t2)
dadd $t1, $t1, $t3
otro:
dadd $t2, $t2, $t2
ld $t3, v($t2)
dadd $t1, $t1, $t3

dsubu $t5, $t5, $t4
bnez $t5, otro
HALT
