#!/bin/bash

: <<'DETAILS'
*********************************************************
           Author:  Rakesh Parkiti
            Topic:  Case Statement
Date of Code Born:  05-Feb-2021
      Description:  Case Statements Examples
*********************************************************
DETAILS

: <<'TASK'
Create a startup script for an application called sleepwalkingserver, which is provided below.
The script should be named sleepwalking and accept "start" and "stop" as arguments. 
If anything other than "start" or "stop" is provided as an argument, display a usage statement:
"Usage sleepwalking start|stop" and terminate the script with an exit status of 1.

To start sleepwalkingserver,use this command: "/tmp/sleepwalkingserver &"
To stop sleepwalkingserver, use this command: "kill $(cat /tmp/sleepwalkingserver.pid)"

Here is the contents of "sleepwalkingserver". Be sure to put this file in /tmp and run chmod 755 /tmp/sleepwalkingserver

#!/bin/bash
PID_FILE="/tmp/sleepwalkingserver.
pid"
trap "rm $PID_FILE; exit" SIGHUP SIGINT SIGTERM
echo "$$" > $PID_FILE

while true
do
    :
done
TASK

# GLOBAL VARIABLES
#-----------------
FILE="sleepwalkingserver.pid"

# FUNCTIONS DECLARATIONS
#-----------------------
function sleepwalkingserver() {
    cat << 'EOF' >>/tmp/sleepwalkingserver.pid
#!/bin/bash
PID_FILE="/tmp/sleepwalkingserver.pid"
trap "rm $PID_FILE; exit" SIGHUP SIGINT SIGTERM
echo "$$" > $PID_FILE

while true
do
    :
done
EOF
    chmod 755 /tmp/${FILE}
}

# MAIN CODE
#----------

# remove the existing file
if [ -f /tmp/${FILE} ]
then
    rm -rf /tmp/${FILE}
fi

# Calling the Function
sleepwalkingserver

case "$1" in
    start)
        /tmp/${FILE} &
        ;;
    stop)
        kill -9 $(pgrep sleepwalking*)
        ;;
    restart)
        kill -9 $(pgrep sleepwalking*)
        /tmp/${FILE} &
        ;;
    status)
        pid=$(pgrep sleepwalkingser*)
        if [ -n "$pid" ]
        then
           echo "${FILE} is running with pid: $pid"
        else
           echo "${FILE} is not running"
        fi
        ;;
esac

