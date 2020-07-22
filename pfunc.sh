#!/usr/bin/env bash

#read file from one funct and write from other

ShowFiles(){
	#FILES2=$@

	for FILE in $@  #$FILES2
	do
		echo $FILE
	done
}


GetFiles(){

local FILES=`ls -1 | sort | head -10`


echo calling show files

ShowFiles $FILES
}

echo calling get files
GetFiles


# output
# :~/pypractice/bash/shell scripting$ ./pfunc.sh
# calling get files
# calling show files
# counter.sh
# env.sh
# for.sh
# func.sh
# greet.sh
# hello.sh
# if.sh
# notes.txt
# para_func.sh
# params.sh
# :~/pypractice/bash/shell scripting$ 

