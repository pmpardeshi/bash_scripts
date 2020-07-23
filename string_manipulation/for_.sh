#!/usr/bin/env bash

#read all the files in /usr/bin to check for given string



# for file in `ls /usr/bin`

# do 
# 	#echo file is $file
# 	if [[ -f  "${file} ]]
# 	then
# 		echo checking $file
# 		if 	strings -a $file | grep -q "unable to fork" ; then
# 			echo $file has string \" unable to fork \"
# 		fi
	
# 	fi
# done
# in above code ls got the list of files but string or the if condition does not find the file 
#as files do not exist in same dir as the script thus we would have to provide path every time with variable having file name
#it would be easier to just cd into dir

cd /usr/bin

for file in *

do 
	#echo file is $file
	if [[ -f  "${file}" ]]
	then
		#echo checking $file
		if 	cat  $file | grep -q "unable to fork" ; then
			echo $file has string \" unable to fork \"
		fi
	
	fi
done

exit 0

# time taken by using cat $file 
# 3 runs on i3/12GB DDR3

# real	0m6.109s
# user	0m6.690s
# sys	0m2.377s

# real	0m6.082s
# user	0m6.604s
# sys	0m2.404s

# real	0m6.109s
# user	0m6.535s
# sys	0m2.503s


# time taken by using strings $file
# 3 runs on i3/12GB DDR3

# real	0m21.394s
# user	0m22.194s
# sys	0m2.789s

# real	0m21.344s
# user	0m21.868s
# sys	0m2.962s

# real	0m21.746s
# user	0m22.477s
# sys	0m2.852s


# output
# $ ./for_.sh
# devdump has string " unable to fork "
# eject has string " unable to fork "
# genisoimage has string " unable to fork "
# git has string " unable to fork "
# git-receive-pack has string " unable to fork "
# git-shell has string " unable to fork "
# git-upload-archive has string " unable to fork "
# git-upload-pack has string " unable to fork "
# isodump has string " unable to fork "
# isoinfo has string " unable to fork "
# isovfy has string " unable to fork "
# lckdo has string " unable to fork "
# mkisofs has string " unable to fork "
# mongo has string " unable to fork "
# parallel has string " unable to fork "
# sudo has string " unable to fork "
# sudoedit has string " unable to fork "
# watch has string " unable to fork "
# $ 


