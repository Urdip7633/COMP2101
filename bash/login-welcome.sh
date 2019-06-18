#!/bin/bash
#
# This script produces the dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Improve this script by using the value in the automatic variable $USER for the name
# Improve this script by adding some time and day of the week information to the welcome message
#   Use a format like this:
#   It is HH:MM AM on weekday.

###############
# Variables   #
###############
titles=("Overlord" "Almighty" "Smartguy" "Sneakyguy" "Starboy" "Thor" "Batman")
My_index=$((RANDOM % ${#titles[@]}))
title=${titles[$My_index]}
USER="URDIP"
hostname=$(hostname)
time=$(date +'%H:%M %p on %A')
Var=$(cat <<EOF
Welcome to planet $hostname, "$title $USER!"

It is $time
EOF
)

###############
# Main        #
###############

cat <<EOF
$(cowsay "$Var")
EOF
