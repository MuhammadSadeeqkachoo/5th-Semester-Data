.text
.globl main
main:
  
    li $v0, 4
    la $a0, msg1
    syscall

  
    li $v0, 5
    syscall
    move $t0, $v0  
    bgt $t0, $zero, greater
    ble $t0, $zero, less
greater:
   
    li $v0, 4
    la $a0, msg2
    syscall
    j end
less:
    li $v0, 4
    la $a0, msg3
    syscall

end:
    # Exit the program
    li $v0, 10
    syscall

.data
msg1: .asciiz "Enter a number: "
msg2: .asciiz "The number is greater than zero."
msg3: .asciiz "The number is less than or equal to zero."
