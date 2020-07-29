#!/usr/bin/env bash

#read names_data.txt having results of students 
#print id of students who failed in only one subject
#passing marks are 60 , there may be multiple entries


declare -A studs

while 
	read id name sub result || [ -n "$id" ] 
do
	if [[ $result -lt 60 && $id != "ID" ]] ;then
		(( studs[$id]+=1 ))
	fi
done <$1

for word in "${!studs[@]}"; do
	if [ "${studs[$word]}" -eq 1 ];then
		echo $word
	fi
done

# output
# $ ./non_repeating.sh names_data.txt 
# 103
# 104
# $