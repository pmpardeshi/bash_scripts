#!/usr/bin/env bash

#this script reads the file given as cl args

while IFS='' read -r LINE || [ -n "$LINE" ]
do
	echo $LINE
done <$1

exit 0

#note 

#if the line does not have new line char, read cmd fails even though the line as read
# thus || is added it will check if line has a value, after read fails so that it wont 
# skip last line

# output

#without [ -n line ]

# $ ./filereader_while.sh names.txt
# roshan
# pramod
# shubham
# navin
# summet
# $ 

#with [ -n line ]

# $ ./filereader_while.sh names.txt 
# roshan
# pramod
# shubham
# navin
# summet
# swapnil
# $


