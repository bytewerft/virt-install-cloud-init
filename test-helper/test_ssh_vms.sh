#!/bin/bash

source ./test-helper/_distributions.env.sh

truncate -s 0 ~/.ssh/known_hosts

length=${#DISTRIBUTIONS[@]}
for (( i=0; i<length; i++ ));
do
  IP_ADDRESS="192.168.1.$((i+10))"
  ssh-keyscan $IP_ADDRESS >> ~/.ssh/known_hosts
  echo $(ssh bytewerft@$IP_ADDRESS hostname)
done
