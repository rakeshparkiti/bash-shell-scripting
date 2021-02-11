#!/bin/bash

: <<'DETAILS'
*********************************************************
           Author:  Rakesh Parkiti
            Topic:  Wild Cards
Date of Code Born:  05-Feb-2021
      Description:  Wild Cards Concepts scenario-1
*********************************************************
DETAILS

: <<'TASK'
Prequisite:
- create/place few .jpg extension files in current directory (Generate few files with script itself)

Write a shell script that renames all files in the current directory that end in ".jpg" to begin with
today's date in the following format: YYYY­MM­DD. For example, if a picture of my cat was in
the current directory and today was October 31, 2016 it would change name from "mycat.jpg" to
"2016­10­31­mycat.jpg".

Hint: Look at the format options to the date command.

For "extra credit" make sure to gracefully handle instances where there are no ".jpg" files in the
current directory. (Hint: Man bash and read the section on the nullglob option.)
TASK

# GLOBAL VARIABLES
#-----------------
DATE=$(date +%Y%m%d)
arrayList=("Aligator" "Bear" "camel" "Dinasor" "Elephant")

# FUNCTIONS DECLARATIONS
#-----------------------
function create_files() {
    for file in "${arrayList[@]}"
    do
        touch "${file}.jpg"
    done
}                                                                                                                                                                                                                                                
# MAIN CODE
#----------
create_files

itemsList=$(ls *.jpg)
echo $itemsList

for f in ${itemsList}
do
    mv -- "$f" "${DATE}${f%.jpg}.jpg"
done


# Need some investigation, why below logic have issues?
# ------------------
# for item in "${itemsList}"
# do 
#     if test -f $item
#     then
#         echo $item
#         if [ $(mv ${item} "${DATE}${item}") ]
#         then   
#             echo "The file is renamed"
#         fi
#     fi 
# done


# ------------------------
# if test -f ${item}
#     then
#         mv ${item} "$DATE${item}.jpg"
#         echo $item   
#     else
#         echo "Doesn't Exists/Already Renamed"
#     fi


# if [ -f $original ]; then
#      # Check the rename filename exists or not
#      if [ $(mv -i $original $rename) ]; then
#         echo "The file is renamed."
#      fi
# fi