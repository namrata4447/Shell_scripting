#!/bin/bash
echo "To generate public key enter"
ssh-keygen
echo "id_rsa_pub is genrated with public key path is /home/ubuntu/.ssh/id_rsa.pub,get into the authorized_keys and paste the public key of the receiver(another server) path is  /home/ubuntu/.ssh/authorized_keys/"
echo "Enter hostname of the reciever"
read hostname
echo "Enter public ip of the reciever"
read pubip
echo "ssh to another user sever"
ssh $hostname@$pubip
