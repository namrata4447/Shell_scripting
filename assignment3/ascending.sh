#!/bin/bash
countp=0
countn=0
countz=0
i=0
echo "Enter number : "
while [ $i -lt 10 ]
do
read arr[$i]
num=${arr[$i]}
	if [[ $num -lt 0 ]]
	then
		(( countn++ ))
	elif [[ $num -eq 0 ]]
	then
		(( countz++ ))
	else
		(( countp++ ))
        fi
	((i++))
done
echo "array original"
echo ${arr[@]}
#sorting the array
for ((i=0;i<10;i++))
do 
	for ((j=$i;j<10;j++))
	do
		if [[ ${arr[$i]} -gt ${arr[$j]} ]]
		then
			temp=${arr[$i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$temp
		fi
	done
done
echo "ascending order"
for ((i=0;i<10;i++))
do
 echo -n ${arr[$i]}
 echo -n " "
done
echo -e "\n"
echo -n "Total of negative numbers :"
echo $countn
echo -n "Total of positive numbers :"
echo $countp
echo -n "Total of zero numbers :"
echo $countz



