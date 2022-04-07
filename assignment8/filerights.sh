#!\bin\bash
echo -n "Enter file name : "
read file
#find out if file has read permission or not
[ -r $file ] && R="Read = Yes" || R="Read = No"

#find out if file has write permission or not
[ -w $file ] && W="Write = Yes" || W="Write = No"

#find out if file has excute permission or not
[ -x $file ] && X="Execute = Yes" || X="Execute = No"
 
echo "$file permissions"
echo "$R"
echo "$W"
echo "$X"
