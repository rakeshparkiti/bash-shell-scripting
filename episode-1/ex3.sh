#!/bin/bash

: <<'DETAILS'
*********************************************************
           Author:  Rakesh Parkiti
            Topic:  VARIABLE
Date of Code Born:  04-Feb-2021
      Description:  Shell Scripting Succinctly
*********************************************************
DETAILS

: <<'TASK'
Store the output of the command "hostname" in a variable. Display "This script is running on
_______." where "_______" is the output of the "hostname" command.
Hint:
It's a best practice to use the ${VARIABLE} syntax if there is text or characters that directly
precede or follow the variable.
TASK

# GLOBAL VARIABLES
#-----------------
VARIABLE=$HOSTNAME

# FUNCTIONS DECLARATIONS
#-----------------------

# MAIN CODE
#----------

echo "This script is running on ${HOSTNAME}. where ${HOSTNAME} is the output of the ${VARIABLE} command."

