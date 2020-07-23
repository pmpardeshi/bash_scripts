#!/usr/bin/env bash

VALID=0

while [ $VALID -eq 0 ]
do
	read -p "please enter your name and age " NAME AGE
	if [[ ( -z $NAME ) || ( -z $AGE ) ]]
	then
		echo "not enough parameters"
		continue
	elif [[ ! $NAME =~ ^[A-Za-z]+$ ]]
	 #^indicates begining of string
	 # #[] indicates aplhabets, 
	 # + indicates there should be atleast one
	 # $ indicates that string should end there
	then
		echo "name must all aplhabets not $NAME"
		continue

	elif [[ ! $AGE =~ ^[0-9]+$ ]]
	then
		echo "Age must be digit not $AGE"
		continue
	fi
	VALID=1
done

echo Name=$NAME, AGE=$AGE


# output
# :~/pypractice/bash/shell scripting$ ./user.sh
# please enter your name and age pramod pramod
# Age must be digit not pramod
# please enter your name and age 21 21
# name must all aplhabets not 21
# please enter your name and age 21 pramod
# name must all aplhabets not 21
# please enter your name and age pramod 21
# Name=pramod, AGE=21
# :~/pypractice/bash/shell scripting$ 
