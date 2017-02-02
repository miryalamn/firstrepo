#!/bin/bash
#######################
# Purpose  : To demonstrate the variable
# Owner    : Support<info@tejoyasha.com>
# Version  : 1.0
# Input    : Take input form user
# Output   : Show it as output
# Copyright: Tejoyasha IT Solutions Pvt. Ltd.
#######################

clear

# Method I
#COMMAND=/usr/bin/whoami
#WHOAMI=`$COMMAND`

# Method II
#WHOAMI=`/usr/bin/whoami`

# Method III
WHOAMI=$(/usr/bin/whoami)

echo "You are running this script as : $WHOAMI"


