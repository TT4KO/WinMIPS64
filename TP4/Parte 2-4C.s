.data
control: .word 0x10000
data: .word 0x10008
color: .byte 255, 0, 0, 0
coorx: .byte 0
coory: .byte 0
.code
ld $t0, control($zero) 
ld $t1, data($zero) 
lwu $t2, color($zero) 
sw $t2, 0($t1) 
daddi $t4, $zero, 5 
daddi $a0, $zero, 50

loop:
lbu $t2, coorx($zero) 
sb $t2, 5($t1) 

lbu $t3, coory($zero) 
sb $t3, 4($t1)

sd $t4, 0($t0) 

daddi $t2, $t2, 1 
sb $t2, coorx($zero)
bne $t3, $a0, loop

halt
