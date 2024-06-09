#!/bin/bash

UserID=$(id -u)
Time_Stamp=$(date +%F-%H-%M-%S)
Script_Name=$(echo $0 | cut -d '.' -f1) 
logfile=$Time_Stamp-$SCRIPT_NAME.log

R="e\[e31m"
G="e\[e32m"
N="e\[e0m"

VALIDATE(){
if [ $1 -ne o ]
then    
    echo "$2...$R failure $N"
    exit 1
else
    echo "S2...$G Success $N"
fi
}

if [ $UserID -ne 0 ]
then
    echo "You are not super user Please enter Script as Super user"
    exit 1
else
    echo "You are super User"
fi

dnf install msysql -y &>>$logfile
VALIDATE $? "Installing mysql"

dnf install gittt -y &>>$logfile  
VALIDATE $? "installing git" 