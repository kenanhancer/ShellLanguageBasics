#!/bin/bash

# Cat command reads input from Here-document and Redict output to file stream.
cat > languages.txt <<EOF
tr Turkish
en English
EOF


# LANGUAGES=$(echo \
# "tr Turkish
# en English")

# or

# Cat command reads input from Here-document and Redirect to stdout stream and 
# Command substitution $() replace output instead of it.
LANGUAGES=$(cat <<EOF
tr Turkish
en English
EOF
)

# Here-document
while read code lang;
do
    echo "language is $lang, and code is $code"
done <<EOF
tr Turkish
en English
EOF

# Here-string from variable
while read code lang;
do
    echo "language is $lang, and code is $code"
done <<<$LANGUAGES

# Here-string from Command Substitution
while read code lang;
do
    echo "language is $lang, and code is $code"
done <<<$(echo $LANGUAGES)

# Redirect input and Process Substitution
while read code lang;
do
    echo "language is $lang, and code is $code"
done < <(echo $LANGUAGES)

# Redirect input from Process Substitution
while read item; do echo $item; done < <(cat languages.txt)

# Redirect input from file
while read item; do echo $item; done < languages.txt

# Piping
echo $LANGUAGES | while read code lang;
do
    echo "language is $lang, and code is $code"
done

# Piping
(
cat <<EOF
tr Turkish
en English
EOF
) | while read code lang;
do
    echo "language is $lang, and code is $code"
done

# Write multi-line string to file stream
cat <<EOF > multiline.txt
kenan
enes
EOF

# Pass multi-line string to pipe
cat <<EOF | while read code lang; do echo "language is $lang, and code is $code"; done
tr Turkish
en English
EOF

# Pass multi-line string to pipe
cat <<EOF | grep 'A' | tee fruits.txt
Apple
Orange
Apricot
Banana
EOF

# Pass multi-line string to pipe and redirect output
cat <<EOF | grep 'A' > fruits2.txt
Apple
Orange
Apricot
Banana
EOF

# Redirect multi-line string to file stream
cat <<EOF > fruits3.txt
Apple
Orange
Apricot
Banana
EOF

# Redirect multi-line string to file stream
cat <<EOF > script001.sh
#!/bin/bash
echo "Hello World!"
EOF

read platform <<EOF && echo $platform
$(uname -a)
EOF

uname -a | read kernel_version && echo $kernel_version

read kernel_version <<<$(uname -a) && echo $kernel_version

read kernel_version < <(uname -a) && echo $kernel_version

# Piping stdout of cat to stdin of while
cat fruits.txt | while read fruit;
do
    echo $fruit
done

# Piping stdout of cat to stdin of while
cat fruits.txt | while read fruit; do echo $fruit; done

# Redirect file stream to stdin of while
while read fruit;
do
    echo $fruit
done < fruits.txt

# Redirect file stream to stdin of while
while read fruit; do echo $fruit; done < fruits.txt

read fruits < <(cat fruits3.txt) && echo $fruits

# Heredoc ignoring leading tabs on each line
cat <<- EOF
    string
EOF

# Heredoc literal - ignores interpolation and evaluation
cat << 'EOF'
$string
EOF

cat <<- 'EOF'
The current working directory is: $PWD
You are logged in as: $(whoami)
EOF

# Heredoc accept command substitution
cat << EOF
$(echo Hello)
$(whoami)
EOF

# Heredoc and piping
cat <<EOF | base64 -d
SGVsbG8KV29ybGQK
EOF

cat <<EOF
The current working directory is: $PWD
You are logged in as: $(whoami)
EOF

wc <<EOF
one two three
four five
EOF

wc < <(echo kenan hancer)

wc < <(cat <<EOF
one two three
four five
EOF
)

wc <<< $(cat <<EOF
one two three
four five
EOF
)
