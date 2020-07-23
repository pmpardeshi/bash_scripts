#!/usr/bin/env bash

#script makes local args to cmd args and iterate over them using shift

arr=(`echo {1..6}` )

set -- ${arr[@]} #set array to cmd args

echo cmd line args are $@  #verify all the cmd args

while [[ $# -gt 0 ]]; do 
#on every shift left most element is overwritten by subsequent element unsetting the last element 
	echo $1
	shift
done

