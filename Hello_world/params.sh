#!/usr/bin/env bash

USER_NAME=$1
echo hello $USER_NAME
echo $(date)
echo $(pwd)

exit 0 

#exit same as return, 0 means sucess everything other is error
#exit code range is 0-255

#output
#$ ./params.sh Pramod
#hello Pramod
#Sun Jul 19 09:49:20 IST 2020
#/home/pmpardeshi/pypractice/bash/shell scripting
#$