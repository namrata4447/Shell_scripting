#!/bin/bash
echo "Give a number"
read n
sum=0
for ((i=1;i<=$n;i++))
do
   echo -n $i
   if [ $i -lt $((n)) ]
   then
   echo -n "+"
   else
   echo -n " "
   fi
   sum=$(( sum+i ))

done
echo -n "   "
echo  "Sum upto the given number is: $sum"

