#!/bin/bash

: <<'DETAILS'
*********************************************************
           Author:  Rakesh Parkiti
            Topic:  If Condition
Date of Code Born:  04-Feb-2021
      Description:  Shell Scripting Succinctly
*********************************************************
DETAILS

: <<'TASK'
Write a shell script to check to see if the file "/etc/shadow" exists. If it does exist, display
"Shadow passwords are enabled." Next, check to see if you can write to the file. If you can,
display "You have permissions to edit /etc/shadow." If you cannot, display "You do NOT have
permissions to edit /etc/shadow."
TASK

# GLOBAL VARIABLES
#-----------------
FILE="/etc/shadow"

# FUNCTIONS DECLARATIONS
#-----------------------

# MAIN CODE
#----------
if test -f ${FILE}
then
    echo "Shadow passwords are enabled"
elif test -w ${FILE}
then
    ls -lart ${FILE}
    echo "You have permissions to edit /etc/shadow."
else
    echo "You do NOT have permissions to edit /etc/shadow."
fi
