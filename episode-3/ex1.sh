#!/bin/bash

: <<'DETAILS'
*********************************************************
           Author:  Rakesh Parkiti
            Topic:  Function
Date of Code Born:  04-Feb-2021
      Description:  Functions Concepts
*********************************************************
DETAILS

: <<'TASK'
Write a shell script that consists of a function that display the number of files in the present
working directory. Name this function "file_count" and call it in your script. If you use a variable
in your function, remember to make it a local variable.
Hint: The wc utility is used to count the number of lines, words, and bytes.
TASK

# GLOBAL VARIABLES
#-----------------

# FUNCTIONS DECLARATIONS
#-----------------------
function file_count() {
    local VAR=$PWD
    ls $VAR | wc -l
}
# MAIN CODE
#----------
#read -p "Enter the any directory name: " name

file_count

