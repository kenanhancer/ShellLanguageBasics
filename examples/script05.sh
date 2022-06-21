#!/bin/bash

IFS="|" read -r name department birthDate <<<"John Smith|Accounting|January" && echo "$name works in the ${department} department, and was born in $birthDate."

IFS='|' read -r name department birthDate <<<"Erica Meyers|IT|December" && echo "$name works in the ${department} department, and was born in $birthDate."

# Not working without single quotes or double quotes in IFS
# IFS=| read -r name department birthDate <<<"John Smith|Accounting|January"

# Here-document usage with while loop
while IFS="|" read -r name department birthDate
do
    echo "$name works in the ${department} department, and was born in $birthDate."
done <<EOF
John Smith|Accounting|January
Erica Meyers|IT|December
EOF


# Process substitution and input redirection usage with while loop
while IFS="|" read -r name department birthDate
do
    echo "$name works in the ${department} department, and was born in $birthDate."
done < <(cat <<EOF
John Smith|Accounting|January
Erica Meyers|IT|December
EOF
)


while IFS="|" read -r name department birthDate
do
    echo "$name works in the ${department} department, and was born in $birthDate."
done < <(echo "John Smith|Accounting|January;Erica Meyers|IT|December" | tr ";" "\n")


while IFS="|" read -r name department birthDate
do
    echo "$name works in the ${department} department, and was born in $birthDate."
done < <(tr ";" "\n" < <(echo "John Smith|Accounting|January;Erica Meyers|IT|December"))


while IFS="|" read -r name department birthDate
do
    echo "$name works in the ${department} department, and was born in $birthDate."
done < <(tr ";" "\n" <<<$(echo "John Smith|Accounting|January;Erica Meyers|IT|December"))


while IFS="|" read -r name department birthDate
do
    echo "$name works in the ${department} department, and was born in $birthDate."
done < <(tr ";" "\n" <<<"John Smith|Accounting|January;Erica Meyers|IT|December")


while IFS="|" read -r name department birthDate
do
    echo "$name works in the ${department} department, and was born in $birthDate."
done <<<$(echo "John Smith|Accounting|January;Erica Meyers|IT|December" | tr ";" "\n")


# Process substitution and input redirection usage
while IFS="|" read -r -d "; " name department birthDate
do
    echo "$name works in the ${department} department, and was born in $birthDate."
done <<<"John Smith|Accounting|January;Erica Meyers|IT|December;" # we should put ; character end of string so that delimeter works properly


echo "John Smith|Accounting|January;Erica Meyers|IT|December" | tr ";" "\n" | while IFS="|" read -r name department birthDate
do
    echo "$name works in the ${department} department, and was born in $birthDate."
done


tr ";" "\n" <<<$(echo "John Smith|Accounting|January;Erica Meyers|IT|December") | while IFS="|" read -r name department birthDate
do
    echo "$name works in the ${department} department, and was born in $birthDate."
done

tr ";" "\n" <<<"John Smith|Accounting|January;Erica Meyers|IT|December" | while IFS="|" read -r name department birthDate
do
    echo "$name works in the ${department} department, and was born in $birthDate."
done


tr ";" "\n" < <(echo "John Smith|Accounting|January;Erica Meyers|IT|December") | while IFS="|" read -r name department birthDate
do
    echo "$name works in the ${department} department, and was born in $birthDate."
done


