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

#Example of direct method
COMP_NAME="tejoyasha"

echo "The company name is : $COMP_NAME"

#Example of indirect method
echo "What is your new company name ? "

read COMP_NAME

echo "Your new COMP_NAME is : $COMP_NAME"


echo "What is your new emp_id ?"

read EMP_ID

echo "Your ew EMP_ID is : $EMP_ID"




