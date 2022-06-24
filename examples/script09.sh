#!/bin/bash

echo '0,1,2,3,4,5' | while read -d, i; do echo $i; done

IFS=, read -rA fields <<<  # | while read item; do echo $item; done

while read -r item; do
    echo $item
done <<<$(IFS=, read -rA array <<<"1,2,3,4,5"; echo "${array[@]}")

IFS=, read -rA array <<<"1,2,3,4,5"; echo $array | while read i; do echo $i; done

while read -d " " item; do
    echo -e $item
done <<<"1 2 3 4 5"

IFS=, read -A fields <<< "1,2,3,4,5"
for i in "${fields[@]}"; do echo "$i"; done

echo '0,1,2,3,4,5' | while read -d, i; do echo $i; done

while read i; do echo $i; done <<<$(tr "," "\n" <<<"0,1,2,3,4,5")

tr "," "\n" <<<"0,1,2,3,4,5" | while read i; do echo $i; done

IFS="," read -rA arr <<<"0,1,2,3,4,5";echo ${#arr[@]}