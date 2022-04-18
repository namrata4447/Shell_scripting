#!/bin/bash
n=`netstat -an | grep 9090 | grep LISTEN | wc -l`
if [ $n == 0 ]
then
        echo "not running"
        cd /home/ubuntu/apache-tomcat-10.0.20/bin/
        bash catalina.sh start
fi

