.data
control: .word 0x10000
data: .word 0x10008

.code
ld $s0, control($zero)
ld $s1, data($zero)
daddi $t0, $zero, 8
daddi $t5, $zero, 1
sd $t0, 0($s0)
ld $t1, 0($s1)
sd $t0, 0($s0)
ld $t2, 0($s1)

dadd $t3, $t1, $t2
sd $t3, 0($s1)
sd $t5, 0($s0)
halt
