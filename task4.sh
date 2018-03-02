#!/bin/bash
arr=( `cat "file"` )
echo ${arr[@]}
echo ${#arr[@]} 
echo ${#arr[3]}
echo ${arr[3]}
