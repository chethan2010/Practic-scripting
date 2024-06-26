#!/bin/bash

UserID=$(id -u)
Time_Stamp=$(date +%F-%H-%M-%S)
Script_Name=$(echo $0 | cut -d '.' -f1) 
logfile=$Time_Stamp-$SCRIPT_NAME.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

echo "Script started executing at time stamp"

VALIDATE(){
if [ $1 -ne 0 ]
then    
    echo -e "$2...$R failure $N"
    exit 1
else
    echo -e "$2...$G Success $N"
fi
}

if [ $UserID -ne 0 ]
then
    echo "You are not super user Please enter Script as Super user"
    exit 1
else
    echo "You are super User"
fi

dnf install mysql -y &>>$logfile
VALIDATE $? "Installing mysql"

dnf install git -y &>>$logfile  
VALIDATE $? "installing git" 