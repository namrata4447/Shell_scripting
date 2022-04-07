#!/bin/bash
echo -e "Enter a file name: \c" 
read fname
#tn=`wc -c < $fname`
#vowCount=$(echo $fname | grep -o -i "[aeiou]" | wc -l)
vowCount=$(grep -o -i "[aeiou]" $fname | wc -l)
echo "Number of vowels in the given file is :$vowCount"
