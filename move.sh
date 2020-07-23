#!/usr/bin/env bash

#move only files and not the dirs to dir (create dir if not exist)

declare -a files

usage(){
	printf "Invalid usage of script:\nusage: move.sh 'source' 'destination' \n"
}


if [[ $# -lt 2 ]]; then
	
	usage
	exit 1
fi

files=($@) 

#put ()around @ or else all args are assigned as first element of array 
#echo "${files[0]}"

dest="${files[-1]}"

unset files[-1]

#echo "${files[@]}"
#echo $dest

count=0

mkdir -p "${dest}"


# for file in "${files[@]}" ; do
# 	if `cp "${file}" "${dest}"` ; then
# 	rm "${file}"
# 	(( count++ ))
# 	fi
	
# done

for file in "${files[@]}" ; do
	if [[ ! -d "${file}" ]]; then
		
		if [[ -f "${file}" ]] ; then
			mv "${file}" "${dest}"
			(( count++ ))
		else
		>&2 echo error:  no file named "${file}" found 
		fi
	fi
done

echo moved "${count}" files in "$dest"
