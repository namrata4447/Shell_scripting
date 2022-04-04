#!/bin/bash
echo "Enter how many number you want"
read n
i=1
sum=0
echo "Enter the elements one by one"
while [ $i -le $n ]
do
  read ele               
  sum=$((sum + ele))     
  i=$((i + 1))
done

avg=$(echo $sum / $n | bc -l)

echo $avg
