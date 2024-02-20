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

        li $t1, 2  # Reset the divisor to 2
        move $t2, $t0  # Store the user-entered number in $t2
        subi $t2, $t2, 1  # Decrement $t2 by 1 to find the largest prime numbers

    find_primes:
        div $t2, $t1
        mfhi $t3
        beq $t3, $zero, not_prime2
        addi $t1, $t1, 1
        ble $t1, $t2, find_primes

        # At this point, $t1 contains the largest prime number less than the user-entered number
        subi $t2, $t2, 1  # Decrement $t2 by 1 to find the second largest prime number

    find_second_prime:
        div $t2, $t1
        mfhi $t3
        beq $t3, $zero, prime2
        addi $t1, $t1, 1
        ble $t1, $t2, find_second_prime

        # At this point, $t1 contains the second largest prime number less than the user-entered number

    prime2:
        li $v0, 4
        la $a0, Prime
        syscall
        li $v0, 1
        move $a0, $t1  # Load the largest prime number into $a0
        syscall
        li $v0, 4
        la $a0, Prime2
        syscall
        li $v0, 1
        move $a0, $t2  # Load the second largest prime number into $a0
        syscall

    exit:
        li $v0, 10
        syscall

not_prime:
        li $v0, 4
        la $a0, new
        syscall
        j exit

not_prime2:
        li $v0, 4
        la $a0, new
        syscall
        j exit

.data
num: .asciiz "Enter a number: "
Prime: .asciiz "The given number is Prime. "
Prime2: .asciiz "The second largest prime number is: "
new: .asciiz "The given number is not_prime. "
