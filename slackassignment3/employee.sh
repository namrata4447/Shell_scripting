#!/bin/bash
echo "Choose options to work with Employee database"
echo "1.new"
echo "2.list"
echo "3.remove"
echo "4.clear"
echo "5.lookup"
read empdb
case $empdb in
#new :adds an entry to the database.
1)echo "Enter data for employee database"
read name
read age
read phno
read dept
echo -e "$name" ' \t ' "$age" ' \t ' "$phno" ' \t ' "$dept"  >> empdata.txt
echo "records added to database"
cat empdata.txt ;;
#list :displays every entry in the database (with name alphabetical order)
2)sort empdata.txt 
 if [ -s empdata.txt ] 
then
  echo "Database is not empty"
else
  echo "Database is empty"
 fi ;;
#remove :deletes all entries associated with that name. Do nothing if that name is not in the database. 
3) read n
   #nn=$n" "
   #cat empdata.txt | grep -w $nn | sed -i "/$nn/d" empdata.txt
   #echo "Entered name deleted from database"
   #cat empdata.txt ;;
   if  grep -q $n" " empdata.txt ;
  then
	  cat empdata.txt | grep -w $n" " | sed -i "/$n/d" empdata.txt
           #sed -i "/$nn/d" empdata.txt
   else
           echo "Database does not have given name"
         fi ;;
   #a=$(( grep -q $nn empdata.txt ))
   #if  grep -q $nn empdata.txt ;
   #if [ $a == 0 ]
   #then
   #cat empdata.txt | grep -w $nn | sed -i "/$nn/d" empdata.txt
	   #echo "Record deleted for the given name"
   #else
	   #echo "Database does not have given name"
	   #fi ;;
#clear :deletes the entire phonebook
4) cat empdata.txt | awk '{print $1,$2,$4}' ;;
#lookup :displays all phone number(s) associated with that name.
5)  read nm
    grep $nm empdata.txt | awk '{print $1,$3}'
   ;;
esac	
