#!/bin/bash

UserID=$(id -u)
TimeStamp=$(date +%F-%H-%M-%S)
Script_Name=$(echo $0 | cut -d '.' -f1)
Log_file=/tmp/$Script_Name-$TimeStamp.log

validate(){
if [ $1 -ne 0]
then 
    echo "$2.. failure"
    exit 1
else
    echo "$2.. Success"
    exit 1

fi
}