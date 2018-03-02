#!/bin/bash
if [ $# = 2 ]
then
echo "Addition :" `expr $1 + $2` 
echo "Subraction :" `expr $1 - $2` 
echo "Multiplication :" `expr $1 \* $2` 

	if [ $2 = 0 ]	
	then
		echo "Division By Zero is NOt Possible Division : Undefined Mode : undefined "
	else
		echo "Division :" `expr $1 / $2` 
		echo "Modulus :" `expr $1 % $2`
	fi
else
echo " Not Enough Arguments Please enter the first number "
read  num1
echo " Please enter the second  number "
read  num2
echo "Addition :" `expr $num1 + $num2` 
echo "Subraction :" `expr $num1 - $num2` 
echo "Multiplication :" `expr $num1 \* $num2` 

	if [ $num2 = 0 ]	
	then
		echo "Division By Zero is NOt Possible Division : Undefined Mode : undefined "
	else
		echo "Division :" `expr $num1 / $num2` 
		echo "Modulus :" `expr $num1 % $num2`
	fi

fi
 
