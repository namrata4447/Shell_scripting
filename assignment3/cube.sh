#!/bin/bash
echo "Sum of cube of digit :"
a=100
while [ $a -le 999 ]
do
digi1=$(( a /10 ))
digi2=$(( digi1 /10 ))
digi3=$(( digi1 % 10 ))
digi4=$(( a % 10 ))
digicube=$(( digi2*digi2*digi2 + digi3*digi3*digi3 + digi4*digi4*digi4 ))
if [[ $a -eq $digicube ]]
then
	echo $digicube
fi
a=$(( $a + 1 ))
done
