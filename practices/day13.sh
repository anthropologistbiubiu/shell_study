#!/bin/bash
# 统计所有进程占用的内存百分比的和
ps -e -o %mem | awk '{sum+=$1} END {print sum}'
# 统计所有进程占用的内存的和
ps -e -o rss | awk '{sum+=$1} END {print sum/1024}'