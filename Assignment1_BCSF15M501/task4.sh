#!/bin/bash

echo -en "ENTER FILE NAME : "
read file

declare -i check=0
declare -i lines_count=0

if [ -e $file ]
then 

	lines_count=(`wc -l $file`)	
	lines_count="$lines_count-1"

	while read line
	do
		new=`echo $line`
		content+=( "$new" )
	done < $file
	rm $file
	for i in `seq 0 $lines_count `
	do
		check=0
		ii=` expr $i + 1 `
		for j in `seq $ii $lines_count`
		do
		store1=${content[$i]}
		store2=${content[$j]}
		echo $i
		echo $store1 
		echo $j
		echo $store2
			if [ "$store1" = "$store2" ]
			then
				check=1
				break
			fi
		done
		
		if [ $check -eq 0 ]
		then
			echo ${content[$i]} 1>>$file
		fi
	
	done  
	
else
	echo "File does not exsist"
fi
