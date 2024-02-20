.text
.globl main
main:

li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall
move $t0, $v0

li $t1, 19
bge $t0, $t1, apply

li $v0, 4
la $a0, msg3
syscall
j end

apply:
li $v0, 4
la $a0, msg2
syscall

end:
li $v0, 10
syscall

.data
msg1: .asciiz "Enter your age: "
msg2: .asciiz "You can apply for CNIC."
msg3: .asciiz "You cannot apply for CNIC."
