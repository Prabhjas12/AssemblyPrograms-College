
#Note that this file only contains a function xyCoordinatesToAddress
#As such, this function should work independent of any caller funmction which calls it
#When using regisetrs, you HAVE to make sure they follow the register usage convention in RISC-V as discussed in lectures.
#Else, your function can potentially fail when used by the autograder and in such a context, you will receive a 0 score for this part

xyCoordinatesToAddress:
	#(x,y) in (a0,a1) arguments
	#a2 argument contains base address
	#returns pixel address in a0
	
	#since this is leaf function, no need to preserve ra 
	
	#Enter code below!
	#make sure to return to calling function after putting correct value in a0!
	
	# Calculate the offset for x-coordinate
	slli a3, a0, 2       # Multiply x by 4 (each pixel is 4 bytes)

	# Calculate the offset for y-coordinate
	slli a4, a1, 7       # Multiply y by 128 (each row is 128 pixels, i.e., 128 * 4 = 512 bytes)

	# Calculate the total offset by adding x and y offsets
	add a5, a3, a4

	# Add the total offset to the base address
	add a0, a2, a5

	# Return to the calling function
	ret

	
					
