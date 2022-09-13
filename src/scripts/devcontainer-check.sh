#!/bin/bash

required_packages="gh node solc python jq curl vim wget"

for exec in $required_packages;
do
  if [ -z "$(which $exec)" ];
  then
    echo "Error: $exec is not available inside the container"
    exit 1
  fi
done

node <<EOF
console.log("Node runs as expected");
EOF