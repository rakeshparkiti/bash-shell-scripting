#!/bin/bash

: <<'DETAILS'
*********************************************************
           Author:  Rakesh Parkiti
            Topic:  EXIT Statuses
Date of Code Born:  04-Feb-2021
      Description:  Exit Statuses and Return Codes
*********************************************************
DETAILS

: <<'TASK'
Write a shell script that displays "This script will exit with a 0 exit status." 
Be sure that the script does indeed exit with a 0 exit status.
TASK

# GLOBAL VARIABLES
#-----------------

# FUNCTIONS DECLARATIONS
#-----------------------

# MAIN CODE
#----------
read -p "Ping any Website URLs: " url
ping -c 1 ${url} > /dev/null 2> /dev/null

if [ "$?" -eq "0" ]
then
    echo "This script will exit with a 0 exit status"
else
    echo "Script exited with a non-zero exit status"
fi