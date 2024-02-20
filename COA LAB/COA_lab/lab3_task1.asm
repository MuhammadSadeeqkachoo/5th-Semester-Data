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
    li $v0, 4
    la $a0, msg3
    syscall
    li $v0, 5
    syscall
    move $t2, $v0

    # Condition checking
    beq $t1, 1, loc1
    beq $t1, 2, loc2
    beq $t1, 3, loc3
    beq $t1, 4, loc4
    j exit

loc1:
    add $t3, $t0, $t2
    j result

loc2:
    sub $t3, $t0, $t2
    j result

loc3:
    mult $t0, $t2
    j result

loc4:
    div $t0, $t2
    mflo $t3  

result:
    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

exit:
    li $v0, 10
    syscall

.data
msg1: .asciiz "Enter the first value: "
msg2: .asciiz "Enter the operation: "
msg3: .asciiz "Enter the Second Value: "
msg4: .asciiz "Result is: "
