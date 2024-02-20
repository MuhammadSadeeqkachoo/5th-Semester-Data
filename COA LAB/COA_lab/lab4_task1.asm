.data
array:  .word 100
result:.word 0

.text
.globl main
main:
 la $t0, array 
 lw $t3,($t0)
la $t1,result

addi $t3,$t3,13

sw $t3,($t1)
li $v0,1
move $a0,$t3
syscall 
li $v0,10
syscall
