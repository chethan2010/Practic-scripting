#!/bin/bash

UserID=$(id -u)
#TimeStamp=$(date +%F-%H-%M-%S)
#Script_Name=$(echo $0| cut -d '.' -f1)
# echo "$UserID"
# echo "$TimeStamp"

if [ $UserID -ne 0 ]
then
    echo "Please run Script as Superuser"
    exit 1
else
    echo "You are Super user"
    exit 1
fi

dnf install mysql-y

if [$? -ne 0]
then
    echo "Installtion of mysql is ..Failure"
    exit 1
else
    echo "Insrallation mysql is success"
    exit
fi

#dnf install git -y
if [$? -ne 0]
then 
    echo "Installation of Git is Failed"
    exit 1

else 

    echo "Installation of Git is Success"
    exit 1
fi