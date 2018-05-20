#! /bin/bash

# Echo command
echo Hello World!

# Variables
# Uppercase by convention
# Letters, numbers, underscores
NAME="DAMIAN"

echo "My name is $NAME"
echo "My name is ${NAME}"

# User Input
read -p "Enter your name: " YOURNAME
echo "Hello $YOURNAME, nice to meet you!"

# Conditionals
# IF
if [ "$NAME" == "DAMIAN" ]
then
	echo "Your name is Damian my guy"
fi

# IF ELSE
if [ "$NAME" == "DAMIAN" ]
then
	echo "Your name is Damian"
else
	echo "Your name is not Damian"
fi

# ELSE-IF
if [ "$NAME" == "DAMIAN" ]
then
	echo "Your name is Damian"
elif [ "$NAME" == "DAMO" ]
then
	echo "Your name is DAMO"
else
	echo "Your name is not DAMO or DAMIAN"
fi

# COMPARISON

########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########


