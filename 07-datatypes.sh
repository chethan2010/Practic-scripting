#!/bin/bash

No1=$1
No2=$2

sum=$(($No1+$No2))

echo "total of two Number $No1 and $No2:$sum"

echo "all variables: $@"
echo "Number of variables Passed:$#"
echo "Script Name:$0"
echo "Current Working directory:$PWD"
echo "Home directory of Current user:$HOME"
echo "Which User is running this script:$USER"
echo "Host Name:$HOSTNAME"
echo "Proccess id of the current shell script: $$"
sleep 60 &
echo "Last id of last back ground command: $!"
