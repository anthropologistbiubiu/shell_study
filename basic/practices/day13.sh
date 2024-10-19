#!/bin/bash
# 统计所有进程占用的内存和


ps -e -o pid,user,%mem --sort=-%mem