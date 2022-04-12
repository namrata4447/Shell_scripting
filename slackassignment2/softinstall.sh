#!/bin/bash
echo "Enter server name in which you to install the software"
read sname
if [[ $sname == mongodb ]]
then
	wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
	echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
	sudo apt-get update
	sudo apt-get install -y mongodb-org

elif [[ $sname == tomcat ]]
then
       sudo apt install default-jdk
       wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.16/bin/apache-tomcat-10.0.16.tar.gz
       sudo tar xzvf apache-tomcat-10*tar.gz -C /opt/tomcat --strip-components=1
       sudo apt-get update

elif [[ $sname == redis ]]
then
      curl https://packages.redis.io/gpg | sudo apt-key add -
      echo"deb https://packages.redis.io/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/redis.list
      sudo apt-get update
      sudo apt-get install redis

elif [[ $sname == mysql ]]
then
     curl -OL https://dev.mysql.com/get/mysql-apt-config_0.8.18-1_all.deb
     sudo dpkg -i mysql-apt-config*
     sudo apt-get update
     sudo apt install mysql-server

elif [[ $sname == maven ]]
then
     sudo apt install default-jdk
     wget https://www-us.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -P /tmp
     sudo tar xf /tmp/apache-maven-*.tar.gz -C /opt
     sudo apt-get update
     sudo apt install maven
fi

