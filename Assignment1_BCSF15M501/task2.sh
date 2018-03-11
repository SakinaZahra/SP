#!/bin/bash

file=$1

line_count=(`wc -l $file`)	
	
while read line
do
		new=`echo $line`
		content+=( "$new" )
done < $file

declare -i count=1
declare -i line_count2=0
declare -i rem=0

while [ $count -le $line_count ]
do 

	rem=" count % 2"
	if [ $rem -eq 0 ]
	then
		echo ${content[$line_count2]} 1>>evenfile
		count="$count + 1"
		line_count2="$line_count2 + 1"
	else
		echo ${content[$line_count2]} 1>>oddfile
		count="$count + 1"
		line_count2="$line_count2 + 1"
	fi
done
