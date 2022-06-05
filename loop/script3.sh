#!/bin/bash

MESSAGE="hello"
while [ "$MESSAGE" != "bye" ]
do
    echo "Please type something in (bye to quit)"
    read MESSAGE
    echo "You typed: $MESSAGE"
done