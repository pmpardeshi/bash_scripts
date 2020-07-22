#!/usr/bin/env bash
trap "echo; echo got int ; exit" INT #ctrl+c
trap "echo; echo got quit but wont quit" QUIT #ctrl+\

while [[ 1 -eq 1 ]]; do
	((1+1))
done

# output

# $ ./trapdemo.sh
# ^\
# got quit but wont quit
# ^\
# got quit but wont quit
# ^\
# got quit but wont quit
# ^C
# got int
# $ 
