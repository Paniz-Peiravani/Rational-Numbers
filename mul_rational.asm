.data
	prompt1:	.asciiz "rational(a,b): Enter a \n"
	prompt1.1:	.asciiz "rational(a,b): Enter b \n"
	prompt2:	.asciiz "rational(c,d): Enter c \n"
	prompt2.2:	.asciiz "rational(c,d): Enter d \n"
	
	errorMessage:	.asciiz "Error: Denominator cannot be ZERO!!!\n"
	par1: 		.asciiz " rational ( "	
	div1: 		.asciiz " / "
	par2: 		.asciiz " ) "
	times: 		.asciiz " * "
	equal: 		.asciiz " = "
.text 
	#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Print First Rational ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#	
	
	# a 
	li $v0, 4			# Syntax for printing message
	la $a0, prompt1
	syscall
	
	# Get user input for a
	li $v0, 5			# Syntax for storing integer	
	syscall				
	move $t0, $v0		 	# Store the input for a into $t0
	
	# b 
	li $v0, 4			# Syntax for printing message
	la $a0, prompt1.1
	syscall
	
	# Get user input for b
	li $v0, 5			# Syntax for storing integer	
	syscall				
	move $t1, $v0 			# Store the input for b into $t1
	
	beq $t1, $zero, End		#if b = 0 print error message
	
	#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Print Second Rational ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#	
	
	# c
	li $v0, 4			# Syntax for printing message
	la $a0, prompt2 	
	syscall				
	
	li $v0, 5			# Syntax for storing integer	
	syscall				
	move $t2, $v0			# Store the input for c into $t2
	
	# d
	li $v0, 4			# Syntax for printing message
	la $a0, prompt2.2 	
	syscall				
	
	li $v0, 5			# Syntax for storing integer	
	syscall				
	move $t3, $v0			# Store the input for d into $t3
	
	beq $t3, $zero, End		#if d = 0 print error message
	
	#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Multiplying two rational numbers ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#	
	
	mul $t4, $t0, $t2        # Multiply numerator1 by numerator2
	mul $t5, $t1, $t3        # Multiply denominator1 by denominator2

	#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Print the Result ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#	
	
	li $v0, 4			# Print(
	la $a0, par1						
	syscall
	
	li $v0, 1			# Print a
	move $a0, $t0						
	syscall
	
	li $v0, 4			# Print /
	la $a0, div1						
	syscall	
	
	li $v0, 1			# Print b
	move $a0, $t1						
	syscall
	
	li $v0, 4			# Print )
	la $a0, par2				
	syscall	
	
	li $v0, 4			# Print *
	la $a0, times					
	syscall	
	
	li $v0, 4			# Print (
	la $a0, par1			
	syscall
	
	li $v0, 1			# Print c
	move $a0, $t2						
	syscall	
	
	li $v0, 4			# print /
	la $a0, div1					
	syscall	
	
	li $v0, 1			# Print d
	move $a0, $t3						
	syscall
	
	li $v0, 4			# Print )
	la $a0, par2						
	syscall	
	
	li $v0, 4			# Print =
	la $a0, equal		
	syscall
	
	li $v0, 4			# Print (
	la $a0, par1			
	syscall
	
	li $v0, 1			# print result num	
	move $a0, $t4					
	syscall	
	
	li $v0, 4			# print /
	la $a0, div1						
	syscall	
	
	li $v0, 1			# Print result denom	
	move $a0, $t5					
	syscall
	
	li $v0, 4			# Print )
	la $a0, par2						
	syscall	
	
	#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Execute Program ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#	
	
	li $v0, 10           
    	syscall  
    	            
	#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Error Message ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#	
End:
	la $a0, errorMessage	# Print error message if b or d = 0
	li $v0, 4		
	syscall	
		
	#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Execute Program ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#	
	li $v0, 10           
	syscall              
