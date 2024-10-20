#!/bin/bash



awk '{ 
    for (i=1;i<=NF;i++) {
        word=tolower($i)
        count[word]++
    }
}
    END {
        for ( w in count ) {
            print w,count[w]
        }
}' $1 | sort -k2,2n