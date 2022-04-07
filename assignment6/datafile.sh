#!/bin/bash
echo " CD Summary"
a=1
echo " read CD Details : "
read n
echo " CD Database " > item.dat
echo -e " CD Number " ' \t ' " Movie " ' \t '  " Movie " ' \t '  " Language " ' \t ' " Price " ' \t '  " Date of Release "  >> item.dat
while [ $a -le $n ] 		
do
	item_code=$a
	echo "Item Code generated " $a   
	
        echo "Enter quantity sold "
	read qty_sold
	if [ $qty_sold -le 0 ]; then
	echo " Error Quantiy sold should be greater than 0 "
        break 
        else 
	echo " Valid quantity "
  	fi
	#echo -n $qty_sold >> item.dat


	echo " Enter rate: "
	echo "Enter rate between 100 and 10000 "
        read rate
        if [[ $rate -lt 100 ]] || [[ $rate -gt 10000 ]]; then
        echo " Error Enter rate between 100 and 10000 " 
	break
	echo " Valid rate "
	continue 
	fi
echo -ne " " $a  ' \t\t ' "  " $qty_sold " " ' \t ' "  " $rate  "\n" >> item.dat
    	#echo -n $rate >> item.dat
   a=`expr $a + 1`
done

