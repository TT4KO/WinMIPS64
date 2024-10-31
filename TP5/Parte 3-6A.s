.data
num1: .word 4
total: .word 0

.code
ld $s0, num1($zero)
ld $a0, num1($zero)
daddi $s1, $s1, 1
loop:
jal factorial
daddi $a0, $a0, -1
bnez $a0, loop
sd $v0, total($zero)
halt

factorial:  dmul $s1, $s1, $s0 
            daddi $s0, $s0, -1
            dadd $v0, $s1, $zero
            
jr $ra                  
