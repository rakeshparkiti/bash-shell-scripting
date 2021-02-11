#!/bin/bash

: <<'DETAILS'
*********************************************************
           Author:  Rakesh Parkiti
            Topic:  While Loops
Date of Code Born:  09-Feb-2021
      Description:  While Loop with user inputs
*********************************************************
DETAILS

: <<'TASK'
Write a shell script that asks the user for the number of lines 
they would like to display from the /etc/passwd file and display those lines.

Example output:
How many lines of /etc/passwd would you like to see? 3
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
TASK

# GLOBAL VARIABLES
#-----------------
LINE_NUM=1

# FUNCTIONS DECLARATIONS
#-----------------------

# MAIN CODE
#----------
read -p "How many lines of /etc/passwd would you like to see? " N_LINES
while [ ${LINE_NUM} -le $N_LINES ]
do     
      read LINE
      echo "${LINE_NUM} : ${LINE}"
      ((LINE_NUM++))
done < /etc/passwd



