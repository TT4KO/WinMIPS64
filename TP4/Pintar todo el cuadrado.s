.data
colory: .byte 0
colorx: .byte 0
reset: .word 50
color: .byte 254, 234, 000, 000
data: .word 0x10008
control: .word 0x10000

.code
ld $s0, control($zero)
ld $s1, data($zero)
daddi $t5, $zero, 5  ;t5 = imprimir
ld $s3, reset($zero)
lbu $t2, colory($zero)

vuelta:
       ld $s2, reset($zero)
       lbu $t1, colorx($zero) 
loop:
sb $t1, 5($s1)
sb $t2, 4($s1)
lbu $a0, color($zero)
sb $a0, 0($s1)
sd $t5, 0($s0)
daddi $t1, $t1, 1
daddi $s2, $s2, -1
bnez $s2, loop

daddi $t2, $t2, 1
daddi $s3, $s3, -1
bnez $s3, vuelta
halt
