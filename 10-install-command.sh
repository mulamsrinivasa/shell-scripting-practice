#!/bin/bash

UID=$(id -u)

if [ $UID -ne 0 ]
then
    echo "ERROR: Please install the package as root user"
else
    echo "Running the installation as root user"
fi

dnf install mysqld -y