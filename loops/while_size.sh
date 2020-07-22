#!/usr/bin/env bash

#this script reads from ps -ly 
#and gives total of rss and sz

# $ ps -ly
# S   UID   PID  PPID  C PRI  NI   RSS    SZ WCHAN  TTY          TIME CMD
# S  1000  2243  2225  0  80   0  5552  5737 wait   pts/0    00:00:02 bash
# R  1000 22777  2243  0  80   0  1600  7228 -      pts/0    00:00:00 ps
# rss and sz in kB

n=1

ps -ly | while 
read c1 c2 c3 c4 c5 c6 c7 c8 c9 c10
do
	if ((n>1)); then
		((sum=c8+c9))
		echo pid $c3 uses $sum KB 
	fi
	((n++))
done

exit 0

# output
# $ ./while_size.sh
# pid 2243 uses 11289 KB
# pid 23071 uses 6357 KB
# pid 23072 uses 8824 KB
# pid 23073 uses 3481 KB
# $ 
