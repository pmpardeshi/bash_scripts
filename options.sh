#!/usr/bin/env bash



#setting option flags
#there are two types of options with arguments 'printf -v var' and without argument ls -l
#both can handled using getopts, options followed by : need arguments, to handle incorrect flags use : at begining
# arguments of options are stored in OPTARG 

usage(){
	printf "Invalid usage of script \n'options.sh usrename(-n) Password(-p) [get current dir(-d)]'\n"
}

printdir(){

	echo current dir is $1
}

while getopts :u:p:d option; do
	case $option in
		u) user=$OPTARG ;;
		p) pass=$OPTARG ;;
		d) dir=$PWD ;;
		?) usage
			exit 1
			;;

	esac
done

if [ -z $user ] || [ -z $pass ]
then
	usage 
	exit 1
fi

if [[ ! -z "$dir" ]]
then
	printdir "$dir"
fi

echo "User: $user / Pass: $pass " 

exit 0


# output

# $ ./options.sh -p admin -u admin -d
# current dir is /home/pmpardeshi/pypractice/bash/shell scripting
# User: admin / Pass: admin 
# $ ./options.sh -p admin 
# Invalid usage of script 
# options.sh usrename(-n) Password(-p) [get current dir(-d)]
# $ ./options.sh -p admin -u admin
# User: admin / Pass: admin 
# $ ./options.sh 
# Invalid usage of script 
# options.sh usrename(-n) Password(-p) [get current dir(-d)]
# $ ./options.sh 
# 'Invalid usage of script 
# options.sh usrename(-n) Password(-p) [get current dir(-d)]'
# $ ./options.sh 
# Invalid usage of script 
# 'options.sh usrename(-n) Password(-p) [get current dir(-d)]'
# $ ./options.sh -p admin -u admin -d -x
# Invalid usage of script 
# 'options.sh usrename(-n) Password(-p) [get current dir(-d)]'
 

