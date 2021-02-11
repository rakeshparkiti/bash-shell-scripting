#!/bin/bash

: <<'DETAILS'
*********************************************************
           Author:  Rakesh Parkiti
            Topic:  Single ARGUMENTS
Date of Code Born:  04-Feb-2021
      Description:  Shell Scripting Succinctly
*********************************************************
DETAILS

: <<'TASK'
Modify the previous script so that it accepts the file or directory name as an argument instead of
prompting the user to enter it.
TASK

# GLOBAL VARIABLES
#-----------------

# FUNCTIONS DECLARATIONS
#-----------------------

# MAIN CODE
#----------
if test -f "$1"; then
    echo "Regular Files listings"
    ls -l "$1"
elif test -d "$1"; then
    echo "Director Files listings."
    ls -ld "$1" 
else
    echo "Other Files Types listings"
    ls -ls "$1"
fi