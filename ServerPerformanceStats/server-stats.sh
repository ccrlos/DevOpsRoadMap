#!/bin/sh

#1.Total CPU usage
echo "\e[31m Total CPU usage ==> \e[0m" "\e[32m $(top -bn1 | awk '/Cpu/ {print}') \e[0m"
