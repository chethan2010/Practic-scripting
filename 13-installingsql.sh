#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]

then 
    echo  "Please run this script with root access"
    exit 1
else
    echo "you are Super user"
    exit1
fi

#dnf insall mysql -y
if [ $? -ne 0 ]
then
   echo "Installaion of MySql is Failed"
   exit 1
else

    echo "Installation Mysql is sucess"
    exit 1
fi
