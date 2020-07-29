#!/usr/bin/env bash

#Display the 2nd and 7th character from each line of text. 

while 
	read line || [ -n "${line}" ]
do
	echo "${line}" | cut -c 2,7
done <$1


# output

# $ ./string_manipulation/cut2.sh string_manipulation/cut_samp.txt 
# e
# o
# oe
# $ 
