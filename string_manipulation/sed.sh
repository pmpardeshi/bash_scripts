#!/usr/bin/env bash

while read -r line ; do
 	echo $line | sed 's/flag/banner/g' 
done <$1 



# output

# $ ./string_manipulation/sed.sh string_manipulation/flag.txt 
# the first banner was red and the second banner was blue.
# But, the third banner and fourth banner were purple.
# Such banners were colorful banners.
# $ 
