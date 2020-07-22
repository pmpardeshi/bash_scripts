#!/usr/bin/env bash

for arg in $@ ; do
	echo Hello $arg
done

exit 0 

# output
# $ ./for_cl_args.sh "pramod" "shubham" "navin"
# Hello pramod
# Hello shubham
# Hello navin
# $ 




