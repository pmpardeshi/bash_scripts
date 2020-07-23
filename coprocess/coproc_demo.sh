#!/usr/bin/env bash

#code to write as coprocess

declare -l line

while  read line
do
	echo $line
done

exit 0




# output

# 1>&2 / >&2 redirect stdout output to stderr , 2 can be replaced to streams you 


#unnamed coprocess
# $ echo "LOWER CasE StriNG" >&"${COPROC[1]}" //use COPROC in capital 
# $ cat  <&"${COPROC[0]}"
# lower case string
# ^C //manualy terminate input stream as it continues to wait for input to show output
# $ jobs -l
# [2]+ 11667 Running                 coproc COPROC ./coproc_demo.sh &
# $ pkill 11667
# $ jobs -l
# [2]+ 11667 Running                 coproc COPROC ./coproc_demo.sh &
# $ kill 11667
# $ jobs -l
# [2]+ 11667 Terminated              coproc COPROC ./coproc_demo.sh
# $ 

#Named coprocess
# $ coproc smcase { ./coproc_demo.sh ; }
# [1] 11874
# $ echo "MAKE it SmaLl" <&"${smcase[1]}"
# MAKE it SmaLl
# $ echo "MAKE it SmaLl" >&"${smcase[1]}"
# $ cat <&"${smcase[0]}"
# make it small
# ^C
# $ jobs
# [1]+  Running                 coproc smcase { ./coproc_demo.sh; } &
# $ kill %1 //to kill a job use kill %jobid
# [1]+  Terminated              coproc smcase { ./coproc_demo.sh; }
# $ 




