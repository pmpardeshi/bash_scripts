#!/usr/bin/env bash

#pipe cmd to while to read name of file

echo files sorted by date
ls -lh | sort -k 7,7 -k 8,8 | while #column nums start from 1 and array from 0
#sort -k start[end] -k start[end] to sort on multiple keys start and end is must
	IFS=" " read -r -a line 
	do
		echo  ${line[-1]}
	done


