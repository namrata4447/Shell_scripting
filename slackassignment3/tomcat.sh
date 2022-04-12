#!/bin/bash
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.20/bin/apache-tomcat-10.0.20.tar.gz
tar -xvzf apache-tomcat-10.0.20.tar.gz
mv apache-tomcat-10.0.20 tomcat10
rm -rf apache-tomcat-10.0.20.tar.gz
