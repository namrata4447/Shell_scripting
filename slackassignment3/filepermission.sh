#!\bin\bash
echo -n "Enter file name : "
read file
#find out if file has read permission or not
[ -r $file ] && R="Read = Yes" || R="Read = No"

#find out if file has write permission or not
[ -w $file ] && W="Write = Yes" || W="Write = No"

#find out if file has excute permission or not
[ -x $file ] && X="Execute = Yes" || X="Execute = No"

echo "File permission for onwer"
ur=`ls -l $file | cut -c2`
uw=`ls -l $file | cut -c3`
ux=` ls -l $file | cut -c4`
     if [ $ur == r ]
     then
        echo "$file owner has read permission"
        fi
        if [ $uw == w ]
 then
         echo "$file owner has write permission"
        fi
if [ $ux == x ]
 then
         echo "$file onwer has execute permission"
        fi
echo "File permission for Group"
gr=`ls -l $file | cut -c5`
gw=`ls -l $file | cut -c6`
gx=` ls -l $file | cut -c7`
     if [ $gr == r ] 
     then
        echo "$file group has read permission"
        fi
        if [ $gw == w ]
 then
         echo "$file group has write permission"
        fi
if [ $gx == x ]
 then
         echo "$file group has execute permission"
        fi
echo "File permission for others"
or=`ls -l $file | cut -c8`
ow=`ls -l $file | cut -c9`
ox=` ls -l $file | cut -c10`
if [ $or == r ]
       then
         echo "$file others have read permission"
        fi
        if [ $ow == w ]
       then
         echo "$file others have write permission"
       fi
       if [ $ox == x ]
	    then
	echo "$file others have excute permission"
       fi
