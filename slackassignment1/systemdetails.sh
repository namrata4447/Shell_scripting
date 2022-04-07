#!/bin/sh
free -t | awk 'NR == 2 {printf("Memory Usage: %.2f%"), $3/$2*100}'
echo -e
echo -n "Disk Usage: "
df --output=pcent /boot | grep -v Use
top -bn1 | grep "Cpu(s)" | \
           sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
           awk '{print "CPU Usage:" 100 - $1"%"}'
	   
