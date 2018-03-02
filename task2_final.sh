#!/bin/bash
if [ $1 = -c ]
then 
echo "wow"
data1=( `ls -l $2` )
data2=( `ls -l $4` )
echo "File Name : " $2
echo "Permissions : " ${data1[0]}
echo "Owner : " ${data1[2]}
echo "Group : " ${data1[3]}

echo " "
echo "File Name : " $4
echo "Permissions : " ${data1[0]}
echo "Owner : " ${data1[2]}
echo "Group : " ${data1[3]}
echo " "

if [ $3 = $5 ]
then
	echo "username matches Cheating : 1"
else

	difference=(`diff $2 $4`)
	if [ ${#difference} -ge 1 ]
	then
		echo  "Cheating :0 "
	else
		echo  "Cheating :1 "
  	fi

fi
else

arr=( `ls -l $1` )
echo "Permissions=" ${arr[0]}
echo "owner =" ${arr[2]}
echo "Group =" ${arr[3]}
echo "FileName =" $1
#echo ${arr[@]}
	if [ ${arr[2]} = $2 ]
	then 
		echo " Cheating :0 "
	else
		echo " Cheating :1 "
	fi	

fi
	

