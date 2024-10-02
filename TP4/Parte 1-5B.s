.data
a: .word 5
b: .word 6
c: .word 0

.code
ld $t2, a($t0)
ld $t3, b($t0)

dadd $t1, $t2, $t3

sd $t1, c($t0)
HALT
