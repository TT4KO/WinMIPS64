.data
cadena: .asciiz "pipipipipi" 
total: .word 0

.code
daddi $s0, $zero, cadena
lb $s1, cadena($s0)
jal longitud
ld $v0, total($zero)
halt

longitud:   daddi $t1, $t1, 1
            daddi $s0, $s0, 1
            lb $s1, cadena($s0)
            bnez $s1, longitud
            dadd $v0, $v0, $t1
jr $ra   
