#!/bin/bash


awk '{
    for (i=1;i <=NF;i++){
        arr[i] = (NR ==1 ? $i : arr[i] " " $i)
    }   
}
END{ 
        for (i=1;i<=NF;i++){
            print arr[i] 
        }
}' newcoder.txt