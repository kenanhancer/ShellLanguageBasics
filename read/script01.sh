#!/bin/bash

# PIPING
# Standard output of echo command is passed to standard input of read command
echo "Hello, World!" | (read var1 var2; echo "First word is $var1 and Second word is $var2")

# When no argument is provided to the read command, the entire line is assigned to the REPLY variable
echo "Hello, World!" | (read; echo $REPLY)

# If the number of arguments supplied to read is bigger than the number of words read from the input, the remaining words are assigned to the last name
echo "Linux is awesome." | (read var1 var2; echo "First word is $var1 and Second word is $var2")

# if the number of arguments is less than the number of names, an empty value is assigned to the remaining names
echo "Hello, World!" | (read var1 var2 var3; echo "Var1: $var1 \nVar2: $var2 \nVar3: $var3")

# Here-string
read var1 var2 <<< "Hello, World!"

echo "First word is $var1 and Second word is $var2"

