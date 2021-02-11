#!/bin/bash

: <<'DETAILS'
*********************************************************
           Author:  Rakesh Parkiti
            Topic:  Custom EXIT Codes
Date of Code Born:  04-Feb-2021
      Description:  Exit Statuses and Return Codes
*********************************************************
DETAILS

: <<'TASK'
Write a shell script that accepts a file or directory name as an argument. Have the script report
if it is a regular file, a directory, or other type of file. If it is a regular file, exit with a 0 exit status.
If it is a directory, exit with a 1 exit status. If it is some other type of file, exit with a 2 exit status.
TASK

# GLOBAL VARIABLES
#-----------------

# FUNCTIONS DECLARATIONS
#-----------------------

# MAIN CODE
#----------

if test -f "$1"; 
then
    echo "Regular Files listings"
    ls -l "$1" 2> /dev/null
    exit 0
    echo $?
elif test -d "$1"; 
then
    echo "Director Files listings."
    ls -ld "$1" 2> /dev/null
    exit 1
    echo $?
else
    echo "Other Files Types listings"
    ls -ls "$1" 2> /dev/null
    exit 2
    echo $?
fi



