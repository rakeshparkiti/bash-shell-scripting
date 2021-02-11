#!/bin/bash

: <<'DETAILS'
*********************************************************
           Author:  Rakesh Parkiti
            Topic:  Wild Cards
Date of Code Born:  05-Feb-2021
      Description:  Wild Cards Concepts scenario-2
*********************************************************
DETAILS

: <<'TASK'
Write a script that renames files based on the file extension. The script should prompt the user
for a file extension. Next, it should ask the user what prefix to prepend to the file name(s). By
default the prefix should be the current date in YYYY­MM­DD format. So, if the user simply presses enter 
the date will be used. Otherwise, whatever the user entered will be used as the prefix. Next, it should
display the original file name and the new name of the file. Finally, it should rename the file.

Example output 1:
Please enter a file extension: jpg
Please enter a file prefix: (Press ENTER for 2015­08­10). vacation
Renaming mycat.jpg to vacation­mycat.jpg.

Example output 2:
Please enter a file extension: jpg
Please enter a file prefix: (Press ENTER for 2015­08­10).
Renaming mycat.jpg to 2015­08­10­mycat.jpg.
TASK

# GLOBAL VARIABLES
#-----------------
DATE=$(date +%Y%m%d)
arrayList=("Aligator" "Bear" "Camel" "Dinasor" "Elephant")

# FUNCTIONS DECLARATIONS
#-----------------------

function create_files() {
      for file in "${arrayList[@]}"
      do    
            touch "${file}.jpg" "${file}.txt" "${file}.tf"    
      done
}
# MAIN CODE
#----------

# Cleaning existing files
rm -rf *.jpg *.txt *.tf

# calling the function
create_files

# Example-1
read -p "Please enter a file extension: " extension
read -p "please enter a file prefix: (Press ENTER for 20210205). vacation: " prefix

for item in *.$extension
do 
      if [ ${prefix} ]
      then
            echo "Renaming ${item} to ${prefix}${item}"
            mv -- "$item" "${prefix}${$item%.${prefix}}"
      else
            echo "Renaming ${item} to ${DATE}${item}"
            mv -- "$item" "${DATE}${$item%.${prefix}"
      fi            
done