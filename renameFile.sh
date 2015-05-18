#!/usr/bin/env bash    
echo "File to rename"
read org 
echo "Rename to..."
read new
dir=$(dirname $(find . -name $org))
mv $dir/$org $dir/$new
for use in $(grep -r --exclude-dir=.git -l "$org" .)
do
    echo $use
    sed 's/$org/$new/g' $use > $use
done
