#!/bin/bash

NAMES=("kenan" "enes" "eren")

for NAME in ${NAMES[@]}
do
    echo "Name is $NAME"
done

# or

for NAME in ${NAMES[@]};do
    echo "Name is $NAME"
done

# or

for NAME in "kenan" "enes" "eren"
do
    echo "Name is $NAME"
done

# or

for NAME in "kenan" "enes" "eren"; do
    echo "Name is $NAME"
done

# or

for YEAR in 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010; do
    echo "Year is $YEAR"
done
