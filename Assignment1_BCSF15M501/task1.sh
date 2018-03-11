#!/bin/bash
array=`ls`
file_names=( $array )
Extensions=()
declare -i E_index=0

Files=()
declare -i i=0
declare -i till=`echo ${#file_names[@]}`
echo $till
while [ $i -lt  $till ]
do

	
	Ext=`echo ${file_names[$i]}| cut -d'.' -f2`
	

		
	dir=`echo ${Extensions[@]}|grep "$Ext"`
	echo "${file_names[$i]}"
	if [[ -z $dir ]]
	then

		newDir="${Ext^}"

		Extensions+=("$Ext")
		mkdir "$newDir"
		fil="${file_names[$i]}"
		mv "$fil" ./"$newDir"
		
	
	else
		
		newDir="${Ext^}"		
		fil="${file_names[$i]}"
		mv "$fil" ./"$newDir"
		
				

	fi
i=$i+1
done
echo ${Extensions[@]}
#0echo ${Extensions[@]}|grep "$
#echo ${#file_names[@]}







#echo $array

#Extension=`echo ${names[0]}| cut -d'.' -f2`


#echo $Extension
#echo ${names[5]}
