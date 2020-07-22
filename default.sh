#!/usr/bin/env bash

#default value demo if user does not give input 
#dafault value is used

read -p "enter file name: " THEFILE
File=${THEFILE:-"/tmp/data.file"}
echo the file is $File 


# output

# $ ./default.sh
# enter file name: samp.txt
# the file is samp.txt
# $ ./default.sh
# enter file name: 
# the file is /tmp/data.file
# $ 



