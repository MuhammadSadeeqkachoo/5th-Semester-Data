.text
.globl main

main:
  
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 5
    syscall
    move $t1, $v0

    beq $t0, $t1, equal
not_equal:

    li $v0, 4
    la $a0, msg3
    syscall
    j end

equal:

    li $v0, 4
    la $a0, msg4
    syscall

end:
    # Exit the program
    li $v0, 10
    syscall
	
    # Exit the program
    li $v0, 10
    syscall


.data
msg1: .asciiz "Enter the first value: "
msg2: .asciiz "Enter the second value: "
msg3: .asciiz "The values are not equal."
msg4: .asciiz "The values are equal."
