#!/bin/bash

#This script displays various info to the screen


#Display 'Hello'


echo 'Hello'


#Assign a value to a variable
WORD='script'


#Display that value using the variable
echo "$WORD"

#Demonstrate using single quotes 
echo '$WORD'

#combine teh variable with hard-coded text.
echo "This is a shell $WORD"

#Display teh contents of variable using {} syntax
echo "This is a shell ${WORD}"

#Append text to the variable
echo "${WORD}ing is fun!"

#Show how NOT to append text to a variable 
echo "$WORDing is fun!"

# Create a new vaiable
ENDING='ed'

#combine teh 2 variable
echo "this is ${WORD}${ENDING}."

#Change the value
ENDING='ing'

echo "${WORD}${ENDING} is fun"

ENDING='s'
echo "You are going to write many ${WORD}${ENDING} in this class!"


