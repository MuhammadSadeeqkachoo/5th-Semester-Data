.text
main:

li $v0, 4
la $a0, msg_input
syscall

li $v0, 5                              
syscall
sub $t0, $v0, 1                   
li $t1, 0                         

loop:
beq $t1, 2, end
move $a0, $t0
jal is_prime
beq $v0, 0, not_prime

li $v0, 4
la $a0, msg_prime
syscall
li $v0, 1
move $a0, $t0
syscall
    
addi $t1, $t1, 1

not_prime:
sub $t0, $t0, 1
j loop

end:
li $v0, 10
syscall
is_prime:
li $t2, 2
li $v0, 1                          

check:
bge $t2, $a0, ret
rem $t3, $a0, $t2
beq $t3, 0, fail                
add $t2, $t2, 1
j check

fail:
li $v0, 0

ret:
jr   $ra
.data
msg_input:   .asciiz "Enter a number:\n "
msg_prime:   .asciiz "\nPrevious prime:\n "
