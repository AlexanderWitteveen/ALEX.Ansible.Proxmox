#!/bin/bash

ipaddress=$1
username=$2
password=$3
keypath=$4
pubpath=$5

pub=$(cat $pubpath)

expect -f $(dirname "$0")/auto.logon.expect "$ipaddress" "$username" "$password" "$pub" "$keypath"
if [[ "$?" != "0" ]]; then 
    echo "**** Error: Expect failed"
fi
