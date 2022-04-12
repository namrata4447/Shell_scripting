#!/bin/bash
echo "To generate public key enter"
ssh-keygen
#echo "go into cd .ssh"
#cd .ssh
#ls
#echo "id_rsa_pub is genrated with public key path is /home/ubuntu/.ssh/id_rsa.pub"
#cat id_rsa_pub
#above in #comments abd below suggest steps followed to have access of another user server
echo "get into the authorized_keys and paste the public key of the receiver(another user server) path is  /home/ubuntu/.ssh/authorized_keys/"
echo "Enter hostname of the reciever"
read hostname
echo "Enter public ip of the reciever"
read pubip
#echo "ssh to a particular hostname"
#ssh $hostname@$pubip
echo "Enter filename to transfer"
read fname
scp $fname $hostname@$pubip:/home/ubuntu
echo "$fname file transferred successfully"



