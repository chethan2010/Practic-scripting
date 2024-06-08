#!/bin/bash

UserID=$(id -u)
TimeStamp=$(date +%F-%H-%M-%S)
Script_Name=$(echo $0| cut -d "." -f1)
Logfile=/tmp/$TimeStamp-$Script_Name.log

validate(){
if [ $1 -ne 0 ]

then 
   echo " $2.. Failure"
   exit 1
else
   echo "$2" Success
   exit 1
   }

if [ $UserID -ne 0 ]

then 
   echo "Please run the script with super user"

else 

   echo "You are super User"

fi