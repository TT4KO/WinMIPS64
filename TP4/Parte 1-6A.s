.data
v: .word 5, 2, 6

.code
ld $t1, v($zero)
daddi $t2, $t0, 8
ld $t3, v($t2)
dadd $t1, $t1, $t3
dadd $t2, $t2, $t2
ld $t3, v($t2)
dadd $t1, $t1, $t3
HALT
