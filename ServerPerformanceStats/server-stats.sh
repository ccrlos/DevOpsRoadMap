#!/bin/sh

#1.Total CPU usage
echo "\e[31m Total CPU usage ==> \e[0m" "\e[32m $(top -bn1 | awk '/Cpu/ {print}') \e[0m"

#2.Total memory usage (Free vs Used including percentage)
echo "Total Memory (Usage) ==> " $(free -g | awk '/Mem/ {printf "%.2f%%\n", $3 / $2 * 100}') "Total Memory (Free) ==> " $(free -g | awk '/Mem/ {printf "%.2f%%\n", $4 / $2 * 100}')

#3.Total disk usage (Free vs Used including percentage)
echo "Total disk usage (Usage) ==> " $(df -h --total | awk '/total/ {printf "%.2f%%\n", $3 / $2 * 100}') "Total disk usage (Free) ==> " $(df -h --total | awk '/total/ {printf "%.2f%%\n", $4 / $2 >

#4.Top 5 processes by CPU usage
echo "Top 5 processes by CPU usage ==> " $(ps -Ao user,uid,comm,pid,pmem,tty --sort=-pcpu | head -n 6)

#5.Top 5 processes by Memory usage
echo "Top 5 processes by Memory usage ==> " $(ps -Ao user,uid,comm,pid,pmem,tty --sort=-pmem | head -n 6)
