#!/bin/bash
#######################
# Purpose  : To understand file test
# Owner    : Support<info@tejoyasha.com>
# Version  : 1.0
# Input    : No
# Output   : Result of file test
# Copyright: Tejoyasha IT Solutions Pvt. Ltd.
#######################

clear

# Check the availability of /etc/passwd file
echo " "

if [ -f "/etc/passwd" ]; then
 echo "Yes, the file /etc/passwd exists"
else
 echo "No, the file /etc/passwd does not exists"
fi

echo " "
if [ -r "/etc/shadow" ]; then
 echo "Yes, you have read permission on /etc/shadow file"
else
 echo "No, you do not have read permisson on /etc/shadow file"
fi
echo " "

if [ -d "/tmp/dir_that_doesnot_exists" ]; then
  echo "Yes, the dir  /tmp/dir_that_doesnot_exists already exists"
else 
  echo "The dir /tmp/dir_that_doesnot_exists is not available, creating it"
  mkdir  "/tmp/dir_that_doesnot_exists"
fi
echo " "




