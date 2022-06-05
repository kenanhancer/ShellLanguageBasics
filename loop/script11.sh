#!/bin/bash

MONTHS=("January" "February" "March" "April" "May" "June" "July" "August" "September" "October" "December")

loop() {

    MONTHS=${1}

    echo ${MONTHS[@]}

}

loop ${MONTHS[*]}
