.data
msg1: .asciiz "Enter the lower number: "
msg2: .asciiz "Enter the upper number: "
msg3: .asciiz "Prime numbers between the given numbers: "
newline: .asciiz "\n"

.text


is_prime:
    li $v0, 1          
    li $t0, 2          

loop_check:
    beq $t0, $a0, exit
    div $a0, $t0
    mfhi $t1           
    beqz $t1, not_prime        

    addi $t0, $t0, 1   
    j loop_check

not_prime:
    li $v0, 0          
    j exit

exit:
    jr $ra

main:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $s0, $v0  

    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $s1, $v0    

    # Print the message
    li $v0, 4
    la $a0, msg3
    syscall

    # Loop to find and display prime numbers
    loop:
        beq $s0, $s1, end
        move $a0, $s0
        jal is_prime   
        beq $v0, 1, prime
        j lower_limit

        prime:
            # Print the prime number
            move $a0, $s0
            li $v0, 1
            syscall
            li $v0, 4
            la $a0, newline
            syscall

        lower_limit:
            addi $s0, $s0, 1
        j loop

    end:
        li $v0, 10
        syscall
