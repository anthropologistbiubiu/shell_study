#!/bin/bash



total_link=$(grep -i "ESTABLISHED" net.txt | grep "3306"| awk  '{ print $5 }' | awk -F ":" '$2=3306 {print $1}' | wc -l | awk '{print $1}')  

total_ip=$(grep -i "ESTABLISHED" net.txt | grep "3306" | awk  '{ print $5 }' | awk -F ":" '$2=3306 {print $1}' | sort | uniq -c  | wc -l | awk '{ print $1}')


echo "TOTAL_IP $total_ip"
echo "ESTABLISHED $total_link"
echo "TOTAL_LINK $total_link"
