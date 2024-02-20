.text
.globl main
main:
    li $v0, 4
    la $a0, msg
    syscall

    li $v0, 5
    syscall
    move $t2, $v0  # Store the input number in $t2

    li $t0, 1  # Start with 1 as the first divisor
    li $t6, 2
    div $t2, $t6
    mflo $t1 #t1 = n/2


loop:

    addi $t0, $t0, 1
    
    div $t2, $t0
    mfhi $t3
    
    beq $t3,$zero,not_a_prime
    bne $t0,$t1, loop  # If the remainder is not 0, it's not a prime number

its_a_prime:
    li $v0, 4
    la $a0, msg1
    syscall

    j end
not_a_prime:
    li $v0, 4
    la $a0, msg2
    syscall

end:
    li $v0, 10
    syscall
.data
msg: .asciiz "Enter a Number:"
msg1: .asciiz "The no. is Prime"
msg2: .asciiz "The no. is not a Prime"