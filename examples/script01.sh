#!/bin/bash

date

# Process Substitution
cat < <(date)

# Process Substitution
cat < <(date | cat)

# Process Substitution
cat < <(cat < <(date))

# Here-string from command
cat <<< $(date)

# Here-string from command and Piping together used
cat <<< $(date | cat)

# Here-string, Command Substitution and Process substitution together used
cat <<< $(date > >(cat))

cat < <(ls -l)



# Piping
ls | grep script

echo "Hello World" | grep Hello

echo "Hello World" > >(wc)

wc < <(echo Hello World)

ls > >(grep script)

echo "Hello World" > >(grep Hello)

echo "Hello World" > >(cat)

date > >(cat)

echo "Hello World" > >(read str; echo $str)

echo "Hello World" > >(read; echo $REPLY)

echo "YES"> >(read str; echo "1:${str}:first";)> >(read sstr; echo "2:$sstr:two")> >(read ssstr; echo "3:$ssstr:three")



# Command Substitution
echo $(seq 1..5)

# Arithmetic Expansion
echo "42 - 10 is $(( 42 - 10))"

echo $((3+3))


for n in 1 2 3 4 5 6; do echo $n; done | \
while read item; do
    echo "Item is $item"
done

while read; do
  ((b++))
  echo "b is $b"
done < <(printf %s\\n {0..5})


while read item; do
    echo "Item is $item"
done < <( for n in 1 2 3 4 5 6; do echo $n; done )

 
while IFS= read item; do
    echo "Item is $item"
done < <(echo "Monday"; echo "Tuesday"; echo "Wednesday"; echo "Thursday"; echo "Friday"; echo "Saturday"; echo "Sunday")


while read item; do
    echo "Item is $item"
done <<< $(tr ' ' '\n' <<< "Monday Tuesday Wednesday Thursday Friday Saturday Sunday")


while read item; do
    echo "Item is $item"
done < <(tr ' ' '\n' <<< "Monday Tuesday Wednesday Thursday Friday Saturday Sunday")


while read item; do
    echo "Item is $item"
done < <(echo "Monday Tuesday Wednesday Thursday Friday Saturday Sunday" | tr ' ' '\n')


for item in $(echo "Monday Tuesday Wednesday Thursday Friday Saturday Sunday" | tr ' ' '\n'); do
    echo "Day is $item"
done


for item in $(cat < <(echo "Monday Tuesday Wednesday Thursday Friday Saturday Sunday") | tr ' ' '\n' ); do
    echo "Day is $item"
done


for item in $(tr ' ' '\n' < <(echo "Monday Tuesday Wednesday Thursday Friday Saturday Sunday")); do
    echo "Day is $item"
done

for item in $(seq 1 10); do
  echo "Counting $item..."
done


for x in $(seq 1 3); do
   for y in A B C; do
     echo "$x:$y"
   done
done


echo "hello world my name is Kenan" | tr '[:lower:]' '[:upper:]' | tr ' ' '\n'

for word in hello world i am here; do
  echo $word | tr '[:lower:]' '[:upper:]'  
done


for item in {1..5}
do
    echo "Item is $item"
done

for item in $(seq 1 5); do
  echo "Item is $item"
done