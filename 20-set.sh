#!/bin/bash

USERID=$(id -u)

set -e

if [ $USERID -ne 0 ]

then 
    echo "Please Execute this Script as Super user"

else
    echo "You are super user"

fi

dnf install mysqll -y

dnf install giti =y

echo "Script is Proceding"
