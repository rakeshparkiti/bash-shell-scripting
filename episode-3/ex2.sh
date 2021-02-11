#!/bin/bash

: <<'DETAILS'
*********************************************************
           Author:  Rakesh Parkiti
            Topic:  Function with ARGUMENTS
Date of Code Born:  04-Feb-2021
      Description:  Functions Concepts
*********************************************************
DETAILS

: <<'TASK'
Modify the script from the previous exercise. Make the "file_count" function accept a directory
as an argument. Next have the function display the name of the directory followed by a colon.
Finally, display the number of files to the screen on the next line. Call the function three times.
First, on the "/etc" directory, next on the "/var" directory and finally on the "/usr/bin" directory.
Example output:
    /etc:
    85
TASK

# GLOBAL VARIABLES
#-----------------

# FUNCTIONS DECLARATIONS
#-----------------------
function file_count() {
    
    RESULT=$(ls "$1" | wc -l)
    if [ "$?" -eq "0" || "$?" -ne "0" ]
    then
        echo "$1 directory has combinations of $RESULT files and directories"
        exit 0
    else
        echo "Failed Script"
        exit 1
    fi
}
# MAIN CODE
#----------
#read -p "Enter the any directory name: " name

file_count "$1"

