.data
v: .word 4, 2, 9, 3, 0
mul: .word 2
.code
ld $t3, mul($zero)
ld $t1, v($zero)
dmul $t1, $t1, $t3
sd $t1, v($zero)
daddi $t2, $t2, 8
loop:
    dmul $t1, $t1, $t3
    sd $t1, v($t2)
    ld $t1, v($t2)
    dadd $t2, $t2, $t2
    bnez $t1, loop

HALT
