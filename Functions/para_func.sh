#!/usr/bin/env bash

function Hello(){
	local NAME=$1 #assign local var

	echo hello $NAME 

}

function Bye(){
	
	echo Bye $1 

}

echo calling hello
Hello pramod

echo calling Bye
Bye Shubham


# output

# :~/pypractice/bash/shell scripting$ ./para_func.shcalling hello
# hello pramod
# calling Bye
# Bye Shubham
# :~/pypractice/bash/shell scripting$ 


