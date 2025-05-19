#!/bin/bash

echo "Enter your PIN to login the server" # This will ask for value

read secret # read will read the entered value and store it in secret which is a variable, but this will show the entered PIN value on the screen

# read -s secret # -s flag will hide the entered PIN value (like how the password is hidden for Linux server login)

echo "The PIN entered by you is $secret"