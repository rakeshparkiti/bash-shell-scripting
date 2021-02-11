#!/bin/bash

: <<'DETAILS'
*********************************************************
           Author:  Rakesh Parkiti
            Topic:  RETURN Codes + EXIT Statuses
Date of Code Born:  04-Feb-2021
      Description:  Exit Statuses and Return Codes
*********************************************************
DETAILS

: <<'TASK'
Write a script that executes the command "cat /etc/shadow". If the command returns a 0 exit
status report "Command succeeded" and exit with a 0 exit status. If the command returns a
nonzero exit status report "Command failed" and exit with a 1 exit status.
TASK

# GLOBAL VARIABLES
#-----------------
STATUS="$?"

# FUNCTIONS DECLARATIONS
#-----------------------

# MAIN CODE
#----------
cat /etc/shadow

if [ "${STATUS}" -eq "0" ]
then
    echo "Command succeeded" 
    echo "${STATUS}"
    exit 0
else
    echo "Command Failed"
    echo "${STATUS}"
    exit 1
fi