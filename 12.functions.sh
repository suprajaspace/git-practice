#!/bin/bash

USERID=$(id -u)
CHECK_ROOT(){
#echo "user ID is: $USERID"
if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi
}
VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo " $2 is --FAILED"
        exit1
        else
        echo "$2 is --Success"
    fi
}

CHECK_ROOT
    
dnf installed git
if [ $? -ne 0 ]
then
    echo "git is not installed,going to install it"
    dnt install git -y
   VALIDAT $? "Installing git"   
    else
        echo "git is already installed, nothing to do.."

fi

dnf installed mysql
if [ $? -ne 0 ]
then
    echo "mysql is not installed,going to install it"
    dnt install mysql -y
    VALIDAT $? "Installing git" 
    else
        echo "mysql is already installed, nothing to do.."
fi