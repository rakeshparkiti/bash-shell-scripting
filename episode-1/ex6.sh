#!/bin/bash

: <<'DETAILS'
*********************************************************
           Author:  Rakesh Parkiti
            Topic:  User INPUT via Keyboard
Date of Code Born:  04-Feb-2021
      Description:  Shell Scripting Succinctly
*********************************************************
DETAILS

: <<'TASK'
Write a shell script that prompts the user for a name of a file or directory and reports if it is a
regular file, a directory, or other type of file.
Also perform an ls command against the file or directory with the long listing option.
TASK
# GLOBAL VARIABLES
#-----------------

# FUNCTIONS DECLARATIONS
#-----------------------

# MAIN CODE
#----------
read -p "Enter the Filename/Directory Names: " name

if test -f ${name}; then
    echo "Regular Files listings"
    ls -l ${name}
elif test -d ${name}; then
    echo "Director Files listings."
    ls -ld ${name}
else
    echo "Other Files Types listings"
    ls -ls ${name}
fi