.text
.globl main
main:
li $v0,4
la $a0,msg1
syscall
li $v0,5
syscall
move $t0,$v0
li $t1,8
and $t3,$t0,$t1
li $v0,4
la $a0,msg2
syscall
li $v0,1
move $a0,$t3
syscall
li $v0,10
syscall
.data
msg1: .asciiz "Input:"
msg2: .asciiz "4th bit is :   "