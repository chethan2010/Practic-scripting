#!/bin/bash

UserID=$(id -u)
TimeStamp=$(date +%F-%H-%M-%S)
Script_Name=$(echo $0 | cut -d '.' -f1 )
Log_file=/tmp/$TimeStamp-$Script_Name.log

if [ $UserID -ne 0 ]

then
    echo "Please Enter your script  Super user "

else
    echo "Your Super User"

fi

