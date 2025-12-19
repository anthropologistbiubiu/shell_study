#!/bin/bash


awk '
BEGIN {
    VSZ_SUM=0
    RSS_SUM=0
}
NR > 1 {
    VSZ_SUM+=$5
    RSS_SUM+=$6
}
END {
    printf("MEM TOTAL\nVSZ_SUM:%.1fM,RSS_SUM:%.3fM\n", VSZ_SUM/1024, RSS_SUM/1024);
}
' $1