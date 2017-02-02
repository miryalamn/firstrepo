#!/bin/bash
#######################
# Purpose  : To learn number test
# Owner    : Support<info@tejoyasha.com>
# Version  : 1.0
# Input    : Marks on Command line or it will ask user to enter the mark
# Output   : Student Result Status
# Copyright: Tejoyasha IT Solutions Pvt. Ltd.
#######################

clear
echo  " "

MARKS=$1

if [ ! $MARKS ]; then
 echo "Please use this script in below way"
 echo "Usage:  $0 <marks>"
 echo " "
 echo "Please enter student marks"
 read MARKS
fi

if [ $MARKS -gt 100 ]; then
  echo "Please enter the marks in the range from 0 to 100"
  read MARKS
fi
  

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

if [ $MARKS -le 100 -a $MARKS -gt 64 ]; then
  echo "Student Result: First Class"
elif [ $MARKS -le 64 -a $MARKS -gt 54 ]; then
  echo "Student Result: Second Class"
elif [ $MARKS -le 54 -a $MARKS -gt 44 ]; then
  echo "Student Result: Third Class"
else
  echo "Student Result: Failed !!!!"
fi


