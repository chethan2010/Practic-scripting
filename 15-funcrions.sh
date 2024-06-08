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
    
fi
}
if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

# dnf install mysql -y &>>$LOGFILE
# VALIDATE $? "Installing MySQL"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing Git"