#!/bin/bash

User=$(id -u)
Time_Stamp=$(date +%F-%H-%M-%S)
Script_Name=$(echo $0 | cut -d '.' -f1)
Logfile=/tmp/$Time_Stamp-$Script_Name

R="\e[e31m"
G="\e[e32m"
N="\e[e0m"

if [$1 -ne 0]
then
    echo "$2....$R Failure $N"
    exit 1
else
    echo "$2...$G Success $N"
fi

if [ User -ne 0 ]
then
    echo "You are Not super user Please Enter Script as Super user"
    exit 1
else
    echo "You are super user"
fi

echo "Script is Proccessing.."

dnf install mysql -y
VALIDATE $? "Installing mysql"

dnf install git -y
VALIDATE $? "Installing git"