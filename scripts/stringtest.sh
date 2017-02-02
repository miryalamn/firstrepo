#!/bin/bash
#######################
# Purpose  : To study string comparision
# Owner    : Support<info@tejoyasha.com>
# Version  : 1.0
# Input    : Nothing
# Output   : Check the user is root or not
# Copyright: Tejoyasha IT Solutions Pvt. Ltd.
#######################

clear
echo " "

# Get the running user name

#WHOAMI=`/usr/bin/whoami`
WHOAMI=$(/usr/bin/whoami)

if [ "$WHOAMI" != "root" ]; then
  echo "You MUST be a root user to execute this command"
  exit # To come out of the script safely
fi

echo "Congratulations ! you are the root user"




