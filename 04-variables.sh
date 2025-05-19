#!/bin/bash

# we will provide the values to variables (like below) while executing shell script

# sh 04-variables.sh Srini Nani

Person1=$1 # first value Srini is $1
Person2=$2 # second value Nani is $2

echo "$Person1 - Hi $Person2, How are you ?"
echo "$Person2 - Hi $Person1, I'm doing good, thanks for asking. How are you doing ?"
echo "$Person1 - I'm doing fine $Person2. Thank you."
echo "$Person2 - Whatsup $Person1?"
echo "$Person1 - Shall we go to WonderLa this weekend ? we can have a nice time"
echo "$Person2 - Oh yeah! This is very exciting"
echo "$Person1 - Ok, We will plan accordingly"
echo "$Person2 - Cool......"