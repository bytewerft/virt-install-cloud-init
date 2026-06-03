#!/bin/bash

source ./test-helper/_distributions.env.sh

for d in "${DISTRIBUTIONS[@]}"
do
	virsh start $d
done
