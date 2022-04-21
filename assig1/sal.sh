#!/bin/bash
#echo "Enter basic salary amount Rs:"
read b
#b=$2
if [[ $b -gt 0 ]]
then
	dp=$(( 50 * $b / 100 ))
	echo "dp is Rs:$dp"
	da=$((35 * ($b + $dp) / 100 ))
	echo "da is Rs:$da"
	hra=$((8 * ($b + $dp) / 100 ))
	echo "hra is Rs:$hra"
	ma=$((3 * ($b + $dp) / 100 ))
	echo "ma is Rs:$ma"
	pf=$((10 * ($b + $dp) / 100 ))
	echo "pf is Rs:$pf"
	salary=$(($b + $dp + $da + $hra + $ma- $pf ))
	echo "salary is Rs:$salary"
else
	echo "failed"
fi


