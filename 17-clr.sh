#!/bin/bash

UserID=$(id -u)
TimeStamp=$(date +%F-%H-%M-%S)
Script_Name=$(echo $0 | cut -d '.' -f1)
Log_file=/tmp/$TIMESTAMP-$SCRIPT_NAME.log

R="\e[e31m"
G="\e[e32m"
N="\e[e0m"


echo "Script Stated Executing:$TimeStamp"

if [ $1 -ne 0 ]
then
    echo -e "$2..$G failure$N"
else
    echo -e "$2..$R Success$N"



if [ $USERID -ne 0]
then 
    echo "Please run script as Super user"
    exit 1
else 
    echo "You are a super user"
fi

dnf install mysqll -y &>>$Log_file
VALIDATE $? "Installing Mysql"

dnf install gitt -y &>>Log_file
VALIDATE $? "Installing git"


