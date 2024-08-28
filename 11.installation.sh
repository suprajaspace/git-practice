#!/bin/bash

USERID=$(id -u)
#echo "user ID is: $USERID"
if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi
    
dnf installed git
if [ $? -ne 0 ]
then
    echo "git is not installed,going to install it"
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "git installation is not successful --check it"
    fi
    else
        echo "git is already installed, nothing to do.."

fi

dnf installed mysql
if [ $? -ne 0 ]
then
    echo "mysql is not installed,going to install it"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "mysql installation is not successful --check it"
    fi
    else
        echo "mysql is already installed, nothing to do.."
fi