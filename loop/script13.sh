#!/bin/bash

MONTHS=("January" "February" "March" "April" "May" "June" "July" "August" "September" "October" "December")

loop() {

    echo ${*}

}

loop ${MONTHS[*]}
