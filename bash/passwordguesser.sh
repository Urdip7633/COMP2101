#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command

myString="TestString"
referenceString="password"

#[ $myString = $referenceString ] && echo "You guessed the password!" || echo "The password eludes you..."
for try in {1..3}
do
  read -p "Try ($try): Enter  the guessed password :" myString
  if [ $myString = $referenceString ]
  then
    echo "Yeay You guessed it right. Goodjob!!"
    break
  else
    echo "The password eludes you again, you fool..."
  fi
done
