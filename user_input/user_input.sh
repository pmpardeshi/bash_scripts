#!/usr/bin/env bash

#code to write as coprocess

declare -l line
i=1
echo this code takes input 3 times
while ((i<4))  ; do
	read -p "give input :" line
	echo tanslated to lower case $line
	((i++))
done


# output
# $ ./user_input.sh 
# give input :PRAMod
# tanslated to lower case pramod
# give input :shuBHAM
# tanslated to lower case shubham
# give input :NaVIn
# tanslated to lower case navin
# $ 



