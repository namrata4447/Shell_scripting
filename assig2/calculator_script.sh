#!/bin/bash/
#echo "linux cmd for calculator"
#bc
#echo "Read the values and operand"
x=$1
y=$2
z=$3
if [[ $y == 'add' ]]
then
        a=`expr $x + $z`
        echo $a
elif [[ $y == 'sub' ]]
then
	b=`expr $x - $z`
        echo $b
elif [[ $y == 'mult' ]]
then
	c=`expr $x \* $z`
	echo $c
elif [[ $y == 'div' ]]
then
	d=`expr $x / $z`
	echo $d
fi
  
