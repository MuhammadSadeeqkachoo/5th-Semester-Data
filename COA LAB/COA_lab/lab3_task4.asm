.text
.globl main
main:
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    div $v0, $zero, $t0   
      mfhi $t1 
    beq $t1, $zero, even  
    j odd                 
even:
    li $v0, 4
    la $a0, even_msg
    syscall
    j exit
odd:
    li $v0, 4
    la $a0, odd_msg
    syscall
exit:
    # Exit program
    li $v0, 10
    syscall
.data
prompt: .asciiz "Enter a number: "
even_msg: .asciiz "The number is even."
odd_msg: .asciiz "The number is odd."
