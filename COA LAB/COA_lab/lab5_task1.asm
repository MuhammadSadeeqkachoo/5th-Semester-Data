.text
.globl main

main:
	li $v0, 4
	la $a0, num
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0	
	
	li $t1, 2	
	div $t4, $t0, $t1  
again:
	div $t0, $t1	
	mfhi $t3
	
	beq $t3, $zero, not_prime
	
	addi $t1, $t1, 1	

	ble $t1, $t4, again	

prime:
	li $v0, 4
	la $a0, Prime
	syscall
	
	j exit
		
not_prime:	
	li $v0, 4
	la $a0, new
	syscall
	
	j exit
	
exit:
	li $v0, 10
	syscall
	
.data
num: .asciiz"Enter a number if it is Prime or not: "
Prime: .asciiz"The given number is Prime. "
new: .asciiz"The given number is not_prime. "