#!/usr/bin/env bash

#Array - 
#declare -a EMPTY #same as EMPTY=()

EMPTY=()
NAMES=("Pramod" "Shubham" "Navin") 
#put spaces instead of commas in between elements

echo Third name is ${NAMES[2]}

NAMES[3]="Sumeet"

echo Just added ${NAMES[3]}

echo Names before append :  ${NAMES[@]}

NAMES+=("Swapnil") #append at end of array

NAMES+="_Pardeshi" #without() it appends at end of first element

echo Names after append :  ${NAMES[@]}

unset NAMES[-1] #remove element

echo Names after unset :  ${NAMES[@]}

if [[ -z $EMPTY ]]; then
	echo empty array
fi

if [[ ! -z $NAMES ]]; then
	echo not an empty array
fi



# output-
# $ ./array.sh
# Third name is Navin
# Just added Sumeet
# Names before append : Pramod Shubham Navin Sumeet
# Names after append : Pramod_Pardeshi Shubham Navin Sumeet Swapnil
# Names after unset : Pramod_Pardeshi Shubham Navin Sumeet
# empty array
# not an empty array
# $ 
