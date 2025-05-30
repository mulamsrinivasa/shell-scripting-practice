#!/bin/bash

UserID=$(id -u)
PKG=mysql

if [ $UserID -ne 0 ]
then
    echo "SUGGESTION: You're a Normal user. Please install the package as root user"
    exit 1
else
    echo "You're a root user, proceeding further"
fi

echo "Checking if the $PKG package is installed or not"
dnf list installed $PKG

if [ $? -eq 0 ]
then
    echo "The $PKG package is already installed... Nothing to do."
else
    echo "The $PKG package is not installed, proceeding to install it now."
    dnf install $PKG -y
    echo "The $PKG package is now installed, good luck."
fi