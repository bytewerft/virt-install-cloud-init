#!/bin/bash

source ./test-helper/_distributions.env.sh

GATEWAY="192.168.1.1"
length=${#DISTRIBUTIONS[@]}

for (( i=0; i<length; i++ ));
do
  IP_ADDRESS="192.168.1.$((i+10))/24"
  ./bin/launch-vm.sh -d ${DISTRIBUTIONS[$i]} -n ${DISTRIBUTIONS[$i]} -i ${IP_ADDRESS} -g ${GATEWAY}
done
