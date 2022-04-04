#!/bin/bash
echo -e "Current home directory is: \c" 
pwd
echo -e "Current user name is: \c"
whoami
#who | wc -l
echo -e "Today's date  is : \c"
date +%m-%d-%Y
echo -e "No of users logged in: \c"
who -q -H
echo -e "Terminal: \c"
tty
