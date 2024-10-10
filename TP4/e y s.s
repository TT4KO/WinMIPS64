.data
ingresar: .asciiz "ingrese contrasena:"
contrasena: .asciiz "AAAA"
win: .asciiz "Contrasena correcta"
lose: .asciiz "Contrasena incorrecta"
car: .byte 0
control: .word 0x10000
data: .word 0x10008

.code
daddi $t5, $t0, 0
ld $t3, contrasena($t4)

ld $s0, control($zero)
ld $s1, data($zero)
daddi $t2, $zero, ingresar
sd $t2, 0($s1)
daddi $t2, $zero, 4
sd $t2, 0($s0)
daddi $t5, $t0, 13
lwu $s0, control($zero)
lwu $s1, data($zero)
loop:
    daddi $t0, $zero, 9
    sd $t0, 0($s0)
    lbu $t0, 0($s1)
    beq $t0, $t5, fin
    sb $t0, car($zero)
    daddi $t0, $zero, car
    sd $t0, 0($s1)
    daddi $t0, $zero, 4
    sd $t2, 0($s0)
j loop
fin:
halt
