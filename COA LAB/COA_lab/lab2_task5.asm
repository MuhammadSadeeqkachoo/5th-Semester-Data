.text
.globl main

main:
  # Display the prompt to enter a number
  li $v0, 4
  la $a0, msg1
  syscall

  # Read the number from the user
  addi $v0, $zero, 5
  syscall
  move $t0, $v0

  # Initialize the sum to 0.
  addi $t1, $zero, 0

  # Loop from 1 to the limit, adding each number to the sum.
loop:
  bge $t1, $t0, done
  addi $t1, $t1, 1
  lw $t2, sum          # Load the current value of "sum" into $t2
  add $t2, $t2, $t1    # Add $t1 to $t2
  sw $t2, sum          # Store the updated sum back in the "sum" variable
  j loop

done:
  # Print the sum
  addi $v0, $zero, 1
  lw $a0, sum
  syscall


  # Exit the program.
  addi $v0, $zero, 10
  syscall
.data
msg1: .asciiz "Enter a number: "
msg2: .asciiz "The sum of numbers "
sum:  .word 0    # Define a variable named "sum" with an initial value of 0

