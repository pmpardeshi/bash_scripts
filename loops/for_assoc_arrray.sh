#!/usr/bin/env bash

#for loop on associative array
declare -A DATA

DATA["name"]="Pramod"
DATA["Age"]="21"
DATA["Education"]="B.E. computer"

printf "\nvalues of array:\n"

for value in "${DATA[@]}"
do
	echo $value
done

#above code loops through values 
# mostly associative array does not make any sense without keys
#so to acess keys we use !arr[@]

printf "\nkey value pairs of array:\n"

for key in "${!DATA[@]}"
do
	echo "$key" : "${DATA[$key]}"
done

exit 0


# output
# $ ./for_assoc_arrray.sh

# values of array:
# 21
# Pramod
# B.E. computer

# key value pairs of array:
# Age : 21
# name : Pramod
# Education : B.E. computer
# $ 


