#!/bin/bash
set -e
for i in {1..10} 
do
date +%T
ps -ef | tail +2 | wc -l 
sleep 1
done
cat /proc/cpuinfo > /root/hw17mai.txt
cat /etc/os-release | head -1 >> /root/hw17mai.txt 
cat /etc/os-release | head -1 | grep -o Alpine >> /root/hw17mai.txt   
for i in {50..100} 
do 
touch /root/$i.txt
done
