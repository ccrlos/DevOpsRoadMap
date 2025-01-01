#!/bin/sh

#1.Total CPU usage
echo "\e[31m Total CPU usage ==> \e[0m" "\e[32m $(top -bn1 | awk '/Cpu/ {print}') \e[0m"

#2.Total memory usage (Free vs Used including percentage)
echo "Total Memory (Usage) ==> " $(free -g | awk '/Mem/ {printf "%.2f%%\n", $3 / $2 * 100}') "Total Memory (Free) ==> " $(free -g | awk '/Mem/ {printf "%.2f%%\n", $4 / $2 * 100}')

