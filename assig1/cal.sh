#!/bin/bash
$a
$b
$op

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

