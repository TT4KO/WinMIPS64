.data
NUM1: .word 5
NUM2: .word 6
ress: .word 0
resp: .word 0
resd: .word 0

.code
ld $t2, NUM1($t0)
ld $t3, NUM2($t0)
dadd $t1, $t2, $t3
sd $t1, ress($t0)

dmul $t4, $t2, $t3
sd $t4, resp($t0)

ddiv $t5, $t2, $t3
sd $t5, resd($t0)

HALT
