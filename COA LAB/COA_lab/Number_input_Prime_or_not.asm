.text
.globl main
main:
# Display the prompt for user input
li $v0, 4
la $a0, prompt
syscall
# Read an integer from the user
li $v0, 5
syscall
move $t0, $v0  

# Check if the input is less than 2
li $t1, 2

bge $t0, $t1, check_prime
# Print "The number is not prime" and exit
li $v0, 4
la $a0, not_prime_msg
syscall
j exit

check_prime:
# Initialize $t2 to n/2
div $t0, $t1
mflo $t2
# Initialize $t3 to 2 (the first prime number)
li $t3, 2

# Start the loop
loop:
beq $t0, $t3, prime_found  # If n is equal to 2, it's prime
div $t0, $t3  

# Check for a remainder (not divisible)
mfhi $t4

beqz $t4, prime_not_found           # If there is no remainder, it's not prime
# Increment t3 (the divisor) and continue the loop
addi $t3, $t3, 1
bne $t3, $t2, loop

prime_found:
# Print "The number is prime" and exit
li $v0, 4
la $a0, is_prime_msg
syscall
j exit

prime_not_found:
# Print "The number is not prime" and exit
li $v0, 4
la $a0, not_prime_msg
syscall
exit:

# Exit the program
li $v0, 10
syscall

.data
prompt: .asciiz "Enter a number to check whether it's prime or not: "
is_prime_msg: .asciiz "The number entered is a prime Number."
not_prime_msg: .asciiz "The number entered is not prime Number."

