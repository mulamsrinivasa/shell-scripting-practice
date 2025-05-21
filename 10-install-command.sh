#!/bin/bash

UserID=$(id -u)
PKG="mysql"

if [ $UserID -ne 0 ]
then
    echo "SUGGESTION: You're a Normal user. Please install the package as root user"
    exit 0
else
    echo "You're a root user, proceeding further"
fi

# echo "Checking if the $PKG package is installed or not"
# dnf list installed mysql

# if [ $? -eq 0 ]
# then
#     echo "The $PKG package is already installed... Nothing to do."
#     exit 0
# else
#     echo "The $PKG package is not installed, proceeding to install it now."
#     dnf install mysql -y
#     echo "The $PKG package is now installed, good luck."
# fi

# # dnf install mysql -y