
.text
main:
    lw $t0, number   
    sll $t1, $t0, 1  
    srl $t2, $t0, 1  
    li $v0, 1       
    move $a0, $t0
    syscall

    li $v0, 4       
    la $a0, multi
    syscall

    li $v0, 1       
    move $a0, $t1
    syscall

    li $v0, 4         
    la $a0, division
    syscall

    li $v0, 1         
    move $a0, $t2
    syscall

    # Exit the program
    li $v0, 10
    syscall
.data
number: .word 10
multi: .asciiz"\nThe shift of left is multiply"
division: .asciiz"\nThe shift of right is division"

