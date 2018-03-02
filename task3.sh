#!/bin/bash
UNIX=( "Debian" 'Red Hat' "Ubuntu" "Suse" "Fedora" )
echo "The whole array is :" ${UNIX[*]}
echo "The length of array  is :" ${#UNIX[@]}
echo "The length of index 2  is :" ${#UNIX[2]}
echo "The length of index 2  is :" ${#UNIX[2]}
echo "Extracting two elements : " ${UNIX[@]:2:2 }
echo "After Searching and Replacing : " ${UNIX[@]/Ubuntu/"SCO unix" }

UNIX=( ${UNIX[@]} "AIX" "HP-UX" )
echo "After Appending elements : " ${UNIX[@]}
unset UNIX[3]
echo "After Removing third element  : " ${UNIX[@]}
LINUX=( ${UNIX[@]} )
echo "Displaying LInux array : " ${LINUX[@]}
BASH=( ${UNIX[@]} ${LINUX[@]} )
echo "Displaying BASH array : " ${BASH[@]}
unset UNIX[*]
unset LINUX[*]
echo "Displaying UNIX and LInux Empty arrays after removal : " ${UNIX[@]} ${LINUX[@]}

