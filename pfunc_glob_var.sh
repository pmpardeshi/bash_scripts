#!/usr/bin/env bash

ShowFiles(){
	#FILES2=$@

	for FILE in $@  #$FILES2
	do
		echo $FILE
	done
}


GetFiles(){

FILES=`ls -1 | sort | head -10`

}

echo calling get files
GetFiles
echo calling show files
ShowFiles $FILES

# output
# :~/pypractice/bash/shell scripting$ ./pfunc_glob_var.sh 
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

