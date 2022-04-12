#!/bin/bash
cpu_usage=`mpstat i | awk 'NR==4{print $12/100}'`
mem_usage=`free -m | awk 'NR==2{print $3/$2*100}'`
disk_usage=`df -m | awk 'NR==2{print $3/$2*100}'`
cp=`echo "CPU Utilization: $cpu_use%"`
mu=`echo "Memory Utilization: $mem_usage%"`
di=`echo "Disk Utilization: $disk_usage"` 
message=`echo "$cp $mu $di"` 
[ ! -z "$message" ] && curl -X POST -H 'Content-type: application/json' --data "{\"text\": \"${message}\"}"  https://hooks.slack.com/services/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


