#!/bin/bash

USERID=$(id -u)
date_Stamp=$(date +%F-%H-%M-%S)
script_Name=$(echo $0 | cut -d '.' -f1)
Log_file=/tmp/$date_Stamp-$script_Name.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
VALIDATE(){
if [ $1 -ne 0 ]
then 
    echo -e "$2...$R Failure $N"
    exit 1
else
    echo -e "$2...$G SUCCESS $N"
fi
}

if [ $USERID -ne 0 ]
then
   echo "Please run your script as Super user"
   exit 1
else
    echo "You are Super user"
fi

# dnf install mysql -y &>>$Log_file
# VALIDATE $? "INSTALLING SQL"

# dnf install git -y &>>$Log_file
# VALIDATE $? "INSTALLING GIT"
