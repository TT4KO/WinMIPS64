.data
num1: .word 4
num2: .word 5

.code
lb $s1, num1($zero)  
lb $s2, num2($zero)     
halt   
