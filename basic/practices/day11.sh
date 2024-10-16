#!/bin/bash

read -p "请输入数字" NUM

echo "$RANDOM" | cksum | cut -c 1-$NUM


echo "name,age,location" | cut -d ',' -f 2