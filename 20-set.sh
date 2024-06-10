#!/bin/bash

USERID=$(id -u)

set -e

failure(){
echo "Failed at $1:$2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

if [ $USERID -ne 0 ]

then 
    echo "Please Execute this Script as Super user"

else
    echo "You are super user"

fi

dnf install mysqll -y

dnf install giti -y

echo "Script is Proceddinf"
