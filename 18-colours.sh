#!/bin/bash

UserID=$(id -u)
Time_Stamp=$(date +%F-%H-%M-%S)
Script_Name=$(echo $0 | cut -d '.' -f) 
logfile=$Time_Stamp-$SCRIPT_NAME.log

if [ $UserID -ne 0 ]
then
    echo "You are not super user Please enter Script as Super user"
    exit 1
else
    echo "You are super User"
fi
   