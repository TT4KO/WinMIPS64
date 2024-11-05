.data
control: .word 0x10000
data: .word 0x10008
color: .byte 255, 0, 0, 0
equis: .byte 0
igriega: .byte 0
.code
ld $s0, control($zero)
ld $s1, data($zero)
daddi $t5, $zero, 5
daddi $s2, $zero, 8

sb $s2, 0($s0)
lbu $t1, 0($s1)
sb $t1, equis($zero)

sb $s2, 0($s0)
lbu $t2, 0($s1)
sb $t2, igriega($zero)

lwu $t0, color($zero)
sw $t0, 0($s1)
lbu $t0, equis($zero)
sb $t0, 5($s1)
lbu $t0, igriega($zero)
sb $t0, 4($s1)

sd $t5, 0($s0)
halt 
