#!/bin/bash

read <<< "Hello,\tWorld!"
echo $REPLY

read -r <<< "Hello,\tWorld!"
echo $REPLY

echo "Linux:is:awesome." | (IFS=":" read -r var1 var2 var3; echo "Var1: $var1 \nVar2: $var2 \nVar3: $var3")

echo "Linux::is:awesome." | \
(IFS=":" read -r var1 var2 var3 var4; echo "Var1: $var1 \nVar2: $var2 \nVar3: $var3\nVar4: $var4")

echo "Linux_is-awesome." | (IFS="-_" read -r var1 var2 var3; echo "Var1: $var1 \nVar2: $var2 \nVar3: $var3")