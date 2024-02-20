.text

.globl main
main:
li $v0 ,4
la $a0, msg1
syscall

li $v0 ,5
syscall
move $t0,$v0

div $t2,$t0,10
li $v0, 4
la $a0, msg2
syscall
mfhi $t3
syscall
li $v0,1
move $a0,$t3
syscall







.data
msg1: .asciiz "Enter 1st value:"
msg2: .asciiz "Value is:"