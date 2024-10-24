#NAME:LEO JAMU
#PROGRAM:program allowing user to a enter a number and print 0 if it is even else 1 if old

.text
main:

#out a string for prompt
li $v0,4
la $a0,prompt
syscall

#take user integer input
li $v0,5
syscall
#move the value in $v0 register into saved register $s0
move $s0,$v0

li $t0,2 #store number 2 in register $t0
div $t1,$s0,$t0 #dividing value in saved egister by 2
mfhi $s1 # Save remainder in $s1

#string for output
li $v0,4
la $a0,output
syscall

#print an integer of our remainder 
li $v0,1
move $a0,$s1
syscall

#exiting our program 
li $v0,10
syscall

.data
prompt: .asciiz"Please enter a number  "
output: .asciiz"if remainder is 1 it is old,if 0 the number is even  "