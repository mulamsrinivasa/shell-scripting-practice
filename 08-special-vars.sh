#!/bin/bash

echo "Variables passed to the script: $@"
echo "Number of variables passed to the script: $#"
echo "Script name: $0"
echo "User who is running the script: $USER"
echo "Home directory of the user: $HOME"
echo "Present Working Directory: $PWD"
echo "PID of the current script: $$"
sleep 30 &
echo "PID of the last background process: $!"