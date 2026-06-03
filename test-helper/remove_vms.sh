#!/bin/bash

source ./test-helper/_distributions.env.sh

for d in "${DISTRIBUTIONS[@]}"
do
  ./bin/remove-vm.sh -d $d
done
