#!/bin/bash

UserID=$(id -u)

if [ $UserID -ne 0 ]
then
    echo "SUGGESTION: You're a Normal user. Please install the package as root user"
    exit 1
else
    echo "Installing the package as root user"
fi

dnf install mysql -y