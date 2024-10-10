.data
texto: .asciiz "Hola, Mundo!" ; El mensaje a mostrar
control: .word 0x10000
data: .word 0x10008
.code
daddi $t3, $t0, 4
ld $t0, control($zero)
ld $t1, data($zero)
daddi $t2, $zero, texto
sd $t2, 0($t1)

daddi $t2, $zero, 4
loop:
    daddi $t3, $t3, -1
    beqz $t3, salir
    sd $t2, 0($t0)
    j loop
salir:
halt
