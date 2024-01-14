#!/usr/bin/env bash


# declare -A fruits

# fruits["name1"]="apple"  
# fruits=([name0]="kiwi"  [name2]="pear")
# 
# for item in "${fruits[@]}"
# do
#     echo $item
# done
declare -A fruits

fruits["name0"]="kiwi"
fruits["name2"]="pear"

for key in "${!fruits[@]}"
do
    echo "Key: $key, Value: ${fruits[$key]}"
done







