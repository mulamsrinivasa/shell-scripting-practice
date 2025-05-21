#!/bin/bash

UserID=$(id -u)

if [ $UserID -ne 0 ]
then
    echo "SUGGESTION: You're a Normal user. Please install the package as root user"
else
    echo "Installation the package as root user"
fi

dnf install mysqld -y