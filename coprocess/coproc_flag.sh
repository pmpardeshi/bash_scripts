#!/usr/bin/env bash

#script to substitute flag with banner in given input

while read line
do
	sed 's/flag/banner/g'<<<$line 
	#g for global means sub every occurance instead of just first
done

# output

# $ coproc subf { ./coproc_flag.sh ; }
# [1] 14166
# $ echo ${subf[1]}
# 58 // file scripter to redirect output to
# $ echo ${subf[0]}
# 62 //  // file scripter to read input from
# $ cat flag.txt >&58
# $ cat <&62
# the first banner was red and the second banner was blue.
# But, the third banner and fourth banner were purple.
# Such banners were colorful banners.
# ^C
# $ 

