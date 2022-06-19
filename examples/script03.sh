#!/bin/bash

MAILS="mail1@gmail.com;mail2@hotmail.com"

# MAIL_ARRAY=$()

date

# Command Substitution
echo $(date)

NOW=$(date)
echo $NOW




# Process Substitution
# Process Substitution write output in a file and returns that file name.
# cat command reads file content so when Process Substitution returns a file name, 
# cat shows that file content.
cat < <(date)

# Process Substitution executes date command and write output of date command in a file then
# that file name is returned back. Echo command will write in terminal that file name :)
echo <(date)

echo >(date)





# ls /bin > bindir
# ls /usr/bin > usrbindir
# diff bindir usrbindir

# Process Substitution could do above code as well.
# diff <(ls /bin) <(ls /usr/bin)

# It is possible to combine process substitution (which generates a file) and input redirection (which connects a file to STDIN):
cat < <(date)

# Process Substitution
cat <(date)

date > dateout

# input redirection
cat < dateout

date > >(cat)