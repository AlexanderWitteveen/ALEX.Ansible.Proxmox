#!/bin/bash

ipaddress=$1
username=$2
basename=$3

expect -f $(dirname "$0")/remote.install.python3.expect "$ipaddress" "$username" "$basename"
if [[ "$?" != "0" ]]; then 
    echo "**** Error: Expect failed"
fi
