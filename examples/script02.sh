#!/bin/bash

str="Learn to Split a String in Bash Scripting"


IFS=" " read -rA array <<< $str

echo ${array[1]}
echo "${array[2]}"


 
IFS=" " # space is set as delimiter
read -rA array2 <<< "$str"   # str is read into an array as tokens separated by IFS
for item in "${array2[@]}"; do   # access each element of array
    echo "$item"
done



while IFS= read -r -d " " item || [ -n "$item" ]; do
  echo $item
done <<<"Learn to Split a String in Bash Scripting"



