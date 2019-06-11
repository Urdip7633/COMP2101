#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

#Varaiables and data
#=======================
#firstnum=5
#secondnum=2
read -p "Tell me a number: " firstnum
read -p "Tell me another number: " secondnum
#========================

#arithmetic
#============
sum=$((firstnum + secondnum))
diff=$((firstnum - secondnum))
multi=$((firstnum * secondnum))
dividend=$((firstnum / secondnum))
modul=$((firstnum % secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")
power=$((firstnum ** secondnum))
#===============

#Report
#=============
cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum minus $secondnum is $diff
$firstnum multiplication $secondnum is $multi
$firstnum divided by $secondnum is $dividend with a remainder of $modul
  - More precisely, it is $fpdividend
$firstnum raised by $secondnum is $power
EOF
#=========================
