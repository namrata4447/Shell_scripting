#!/bin/bash
echo "num1:" $1
echo "num2:" $2
if [ $1 -lt $2 ] || [ $1 -le 0 ]
   then
    echo "error num1 is less than num2"
    echo "input num1 $1 correctly,number should be positive and greater than num2"
elif  [ $2 -le 0 ]
   then
    echo "error num2 is less than num1"
    echo "input num2 $2 correctly,number should be positive and greater than num1"
else
tn=$(( $1 / $2 ))
echo "result of two numbers is :$tn"
fi


