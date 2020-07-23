#!/usr/bin/env bash

#function showing returning value 

function add(){

(( x=$1+$2 ))
echo $x
return #not necessory
}

total=`add 10 12`

echo returned from function $total


# output
# $ ./func_cmd.sh 
# returned from function 22
# $ 
