#!/bin/bash

: <<'DETAILS'
*********************************************************
           Author:  Rakesh Parkiti
            Topic:  Unlimited ARGUMENTS via Special Char
Date of Code Born:  04-Feb-2021
      Description:  Shell Scripting Succinctly
*********************************************************
DETAILS

: <<'TASK'
Modify the previous script to accept an unlimited number of files and directories as arguments.
Hint: You'll want to use a special variable.
TASK

# GLOBAL VARIABLES
#-----------------

# FUNCTIONS DECLARATIONS
#-----------------------

# MAIN CODE
#----------

for item in "$@"
do 
    if test -f "$item"; then
        echo "Regular Files listings"
        ls -l "$item"
    elif test -d "$item"; then
        echo "Director Files listings."
        ls -ld "$item" 
    else
        echo "Other Files Types listings"
        ls -ls "$item"
    fi
done