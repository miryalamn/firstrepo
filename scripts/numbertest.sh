#!/bin/bash
#######################
# Purpose  : To learn number test
# Owner    : Support<info@tejoyasha.com>
# Version  : 1.0
# Input    : No input
# Output   : Student Result Status
# Copyright: Tejoyasha IT Solutions Pvt. Ltd.
#######################

clear
echo  " "

#MARKS=68
echo "Please enter student marks"
read MARKS


# Method I
#if [ $MARKS -gt 65 ]; then
#  echo "Student Result: First Class"
#  exit
#fi


#if [ $MARKS -gt 55 ]; then
#  echo "Student Result: Second Class"
#  exit
#fi


# Method II

if [ $MARKS -gt 65 ]; then
  echo "Student Result: First Class"
elif [ $MARKS -gt 55 ]; then
  echo "Student Result: Second Class"
elif [ $MARKS -gt 45 ]; then
  echo "Student Result: Third Class"
else
  echo "Student Result: Failed !!!!"
fi


