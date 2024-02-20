.data
array:  .word 100
result:.word 0

.text
.globl main
main:
 la $t0, array #This store it's address
 lw $t3,($t0)	#%this store it's value and moves from right to left, memory to register
la $t1,result   #this show the value

sll $t5,$t3,1
sw $t5,($t1)  #this store it's value and moves from register to left to right,register to memory
li $v0,1 
move $a0,$t5
syscall 
li $v0,10
syscall
