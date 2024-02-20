.data
result: .word 0         
new: .word 0x100     

.text
main:
    
    la $t0, new
    
    jr $t0
  
    lw $t1, result         
    li $t2, 42             
    add $t1, $t1, $t2     
    sw $t1, result         
    # Exit the program 
    li $v0, 10             
    syscall

