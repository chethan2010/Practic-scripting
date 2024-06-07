#!/bin/bash

No1=$1
No2=$2

sum=$(($No1+$No2))

echo "total of two Number $No1 and $No2:$sum"

echo "all variables: $@"
echo "Number of variables Passed:$#"
echo "Script Name:$0"