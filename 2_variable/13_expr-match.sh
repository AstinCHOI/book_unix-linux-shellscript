#!/bin/sh

# Use: expr

#1
string="This is a pen."
expr "$string" : "This is a \(.*\)."

#2
quote="[\"']"
match="[^\"']*"

while read line
do
    href=$(expr "$line" : ".*href=${quote}\(${match}\)${quote}.*")
    if [ $? -eq 0 ]; then
        echo $href
    fi
done < example/index.html

# better sed and awk than expr for a large text handling