#!/bin/bash

MONTHS=("January" "February" "March" "April" "May" "June" "July" "August" "September" "October" "December")

loop() {

    for ITEM in "${@}"; do
        echo $ITEM
    done

    # or

    for ITEM in ${@}; do
        echo $ITEM
    done

    # or

    for ITEM in $@; do
        echo $ITEM
    done

    # or

    for ITEM in ${*}; do
        echo $ITEM
    done

    # or

    for ITEM in $*; do
        echo $ITEM
    done

}

loop ${MONTHS[*]}
