#!/usr/bin/env bash

echo environment var x is $x
./setx.sh #this script is not sourced, its x variable will end with the setx.sh
. ./source.sh #source script its x var will exist till this script is running
echo x from sourced script is $x

# output
# $ echo $x //env variable not set

# $ ./chkenv.sh 
# environment var x is //env var x is not set
# x from sourced script is 22
# $ export x=10$ //set env var
# $ ./chkenv.sh  
# environment var x is 10
# x from sourced script is 22 //this value exist till the script ends
# $ echo $x
# 10 //env value restored
# $ 
