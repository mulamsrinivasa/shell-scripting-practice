#!/bin/bash

UserID=$(id -u)

if [ $UserID -ne 0 ]
then
    echo "SUGGESTION: You're a Normal user. Please do the installations as root user"
    exit 1
else
    echo "You're a root user, proceeding further"
fi

VALIDATE () {
    if [ $1 -eq 0 ]
    then
        echo "The $2 package is now installed"
    fi
}

echo "Checking if the mysql package is installed or not"
dnf list installed mysql
if [ $? -eq 0 ]
then
    echo "The mysql package is already installed... Nothing to do."
else
    echo "The mysql package is not installed, proceeding to install it now."
    dnf install mysql -y
    VALIDATE $? "mysql"
fi

echo "Checking if the python3 package is installed or not"
dnf list installed python3
if [ $? -eq 0 ]
then
    echo "The python3 package is already installed... Nothing to do."
else
    echo "The python3 package is not installed, proceeding to install it now."
    dnf install python3 -y
    VALIDATE $? "python3"
fi

echo "Checking if the nginx package is installed or not"
dnf list installed nginx
if [ $? -eq 0 ]
then
    echo "The nginx package is already installed... Nothing to do."
else
    echo "The nginx package is not installed, proceeding to install it now."
    dnf install nginx -y
    VALIDATE $? "nginx"
fi