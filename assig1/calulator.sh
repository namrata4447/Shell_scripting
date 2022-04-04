#!/bin/bash
echo "Enter 1st number"
read a
echo "Enter 2nd number"
read b
echo "Choose the operand from the below option"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Division"
echo "4. Multiplication"
echo "your operand choice option is : $op"

read op

if [[ $op -eq 1 ]]
then
	echo "Addition of $a and $b is $(( $a + $b ))"

elif [[ $op -eq 2 ]]
then 
        echo "Substraction of $a and $b is $(( $a - $b ))"
elif [[ $op -eq 3 ]]
then
        echo "Division of $a and $b is $(( $a / $b ))"
elif [[ $op -eq 4 ]]
then
        echo "Mulitiplication of $a and $b is $(( $a * $b ))"
else
	echo "invalid operand choice $op"
fi

