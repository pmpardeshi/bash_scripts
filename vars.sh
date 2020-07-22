#!/usr/bin/env bash

echo "the path is $PATH"
echo "the TERMINAL is $TERM"
echo "the editor is $EDITOR"

if [ -z $EDITOR ] #-Z FOR EMPTY STRING
then
	echo "EDITOR not set"
fi

PATH=/pramid

echo path is $PATH

#  envronment variables are system variables 
#Here are a few environment variables.
#  HOME is your user's home directory.
#  PATH - directories searched for command to run
#  HOSTNAME is the name of the computer.
#  EDITOR is the name of the computer's default editor.
# SHELL - shell that is being used
# USER - username of person using session
# TERM - type of command line termiinal being used

# we can acess them like a normal variables
# we can also change them but change only lasts till script runs
# later system envronment values are restored


# output

# :~/pypractice/bash/shell scripting$ ./vars.sh
# the path is /home/pmpardeshi/anaconda3/bin:/home/pmpardeshi/anaconda3/condabin:/home/pmpardeshi/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
# the TERMINAL is xterm-256color
# the editor is 
# EDITOR not set
# path is /pramid

# :~/pypractice/bash/shell scripting$ echo $PATH //restored path after script execution
# /home/pmpardeshi/anaconda3/bin:/home/pmpardeshi/anaconda3/condabin:/home/pmpardeshi/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
# :~/pypractice/bash/shell scripting$ 

