#!/opt/local/bin/bash    
echo "File to rename"
read org 
echo "Rename to..."
read new
dir=$(dirname $(find . -name $org))
mv $dir/$org $dir/$new
for use in $(grep -r --exclude-dir=.git -l "$org" .)
do
    file=$(echo $use | cut -c 3-)
    sedstring="s/\/$org/\/$new/g"
    echo $file 
    sed -i '' $sedstring $file
done
