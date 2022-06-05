#!/bin/bash

while read line; do
    echo "Item is $line"
done < <(ls)
