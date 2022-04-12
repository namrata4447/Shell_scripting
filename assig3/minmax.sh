echo "Enter numbers:"
for ((i=0;i<5;i++))
do
        read arr[$i]
        countarr[$i]=-1
done
#sorting the array
for((i=0;i<5;i++))
do
        for((j=$i;j<5;j++))
        do
                if [[ ${arr[$i]} -gt ${arr[$j]} ]]
                then
                        temp=${arr[$i]}
                        arr[$i]=${arr[$j]}
                        arr[$j]=$temp
                fi
        done
done
echo "ascending order :"
for((i=0;i<5;i++))
do
        echo -n ${arr[$i]}
        echo -n " "
done
echo -e "\n"
echo "Min number"
echo ${arr[0]}
echo "Max number"
echo ${arr[4]}
echo "====================================="
for((i=0;i<5;i++))
do
        num=${arr[$i]}
        count=1
        for ((j=i+1;j<5;j++))
        do
                if [[ ${arr[j]} -ne $num ]]
                then
                        break
                else
                        (( count++ ))
                fi
        done
        echo $num "occurs" $count "times"
done

