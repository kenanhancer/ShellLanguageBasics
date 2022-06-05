#!/bin/bash

while read INPUT_STRING
do
    
    case $INPUT_STRING in
        hello)          echo "English" ;;
        howdy)          echo "American" ;;
        gday)           echo "Autralian" ;;
        bonjour)        echo "French" ;;
        "guten tag")    echo "German" ;;
        *)              echo "Unknown Language: $INPUT_STRING"
            # ← put your command here
        ;;
    esac
    
done < myfile.txt