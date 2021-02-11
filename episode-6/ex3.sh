#!/bin/bash

: <<'DETAILS'
*********************************************************
           Author:  Rakesh Parkiti
            Topic:  While Loops
Date of Code Born:  09-Feb-2021
      Description:  While Loop with case statements
*********************************************************
DETAILS

: <<'TASK'
Write a shell script that allows a user to select an action from the menu. The actions are to
show the disk usage, show the uptime on the system, and show the users that are logged into
the system. Tell the user to enter q to quit. Display "Goodbye!" just before the script exits.

If the user enters anything other than 1,2,3, or ​q, tell them that it is an "Invalid option."

You can show the disk usage by using the df​ command. To show the uptime, use the uptime command. 
To show the users logged into the system, use the who ​command. Print a blank line after the output of each command.

Example output:

1. Show disk usage.
2. Show system uptime.
3. Show the users logged into the system.
      What would you like to do? (Enter q to quit.) 2
      14:59:08 up 3 days, 7:36, 7 users, load average: 0.13, 0.22, 0.33

1. Show disk usage.
2. Show system uptime.
3. Show the users logged into the system.
      What would you like to do? (Enter q to quit.) 4
      Invalid option.

1. Show disk usage.
2. Show system uptime.
3. Show the users logged into the system.
      What would you like to do? (Enter q to quit.) q
      Goodbye!
TASK

# GLOBAL VARIABLES
#-----------------


# FUNCTIONS DECLARATIONS
#-----------------------

# MAIN CODE
#----------

while true
do    
      echo "-------------------------------------------------------------------------------------"
      read -p "1: show disk usage. 
2: show system uptime.
3: Show the users logged into the system.
What would you like to do? (Enter q to quit.) : " CHOICE
      echo "-------------------------------------------------------------------------------------"
      case "${CHOICE}" in
            1) 
                  df -h
                  ;;
            2)
                  uptime
                  ;;
            3)
                  who
                  ;;
            q)
                  echo "Goodbye..!"
                  break
                  ;;
            *)
                  echo "invalid command"
                  ;;
      esac
done
