#!/bin/bash



if [[ ! -f "$1" ]];then
    echo "文件不存在"
    exit 1
fi

awk -F ":" '{
    line=""
    for (i=NF;i>1;i--){
        line = line $i ":"
    }
    line=line $1
    print line
}' "$1"

