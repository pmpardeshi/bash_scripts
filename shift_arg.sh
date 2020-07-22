#!/usr/bin/env bash

#print command line arguments 

while [[ $# -gt 0 ]]; do
	echo $1
	shift
done


# output
# $ ./shift_arg.sh "pramod" "shubham" "navin"
# pramod
# shubham
# navin
# $