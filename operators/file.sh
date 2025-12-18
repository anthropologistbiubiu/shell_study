#!/usr/bin/env 

filename="logic.sh"
if [ -e  $filename ] && [ -w $filename ] && [ -r $filename ] && [ -x $filename ]
then 
    echo "exist"
else 
    echo "not exist"
fi


dirname="operator"
if [ -d $dirname ]
then 
    echo "yes"
else 
    echo "no"
fi






