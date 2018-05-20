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

NUM1=31
NUM2=5
if [ "$NUM1" -gt "$NUM2" ]
then
  echo "$NUM1 is greater than $NUM2"
else
  echo "$NUM1 is less than $NUM2"
fi

# FILE CONDITIONS

########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

FILE="test.txt"
if [ -e "$FILE" ]
then
  echo "$FILE exists"
else
  echo "$FILE does NOT exist"
fi

# CASE STATEMENT
read -p "Are you 18 or over? Y/N " ANSWER
case "$ANSWER" in 
  [yY] | [yY][eE][sS])
    echo "You can have a beer :)"
    ;;
  [nN] | [nN][oO])
     echo "Sorry, no drinking"
     ;;
  *)
    echo "Please enter y/yes or n/no"
     ;;
 esac

 # SIMPLE FOR LOOP
NAMES="Brad Kevin Alice Mark"
for NAME in $NAMES
  do
    echo "Hello $NAME"
 done

# FOR LOOP TO RENAME FILES
FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES  
  do
    echo "Renaming $FILE to new-$FILE"
    mv $FILE $NEW-$FILE
done

