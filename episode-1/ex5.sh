#!/bin/bash

: <<'DETAILS'
*********************************************************
           Author:  Rakesh Parkiti
            Topic:  For Loop 
Date of Code Born:  04-Feb-2021
      Description:  Shell Scripting Succinctly
*********************************************************
DETAILS

: <<'TASK'
Write a shell script that displays "man", "bear", "pig", "dog", "cat", and "sheep" to the screen with
each appearing on a separate line. Try to do this in as few lines as possible.
Hint: Loops can be used to perform repetitive tasks.
TASK

# GLOBAL VARIABLES
#-----------------

# FUNCTIONS DECLARATIONS
#-----------------------

# MAIN CODE
#----------
for item in "man" "bear" "pig" "dog" "cat" "sheep"
do
    echo "${item}"

done

