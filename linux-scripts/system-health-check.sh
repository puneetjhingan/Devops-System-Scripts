#!/bin/bash
# System Health Check Script monitors CPU, Memory, Disk usage and Network connectivity

#Checking Memory usage
echo "################################################################################"
echo "Checking Memory Usage"
read total used free <<< $(free -m |awk 'NR==2 {print $2, $3, $4}')
echo "memory usage is: total=$total used=$used, free=$free"
memory_usage=$((used*100/total))
if [ $memory_usage -gt 80 ]; then 
echo "Memory usage is above 80%. Current usage is $memory_usage%"
else
echo "Memory usage is within limits. Current usage is $memory_usage%"
fi

echo "################################################################################"
#Checking CPU usage
echo "Checking CPU Usage"
cpu_idle=$(top -bn1 | grep Cpu | awk '{print $8}')
cpu_usage=$(echo "100 - $cpu_idle" | bc)
echo "CPU usage is: $cpu_usage%"
if (( $(echo "$cpu_usage > 80" | bc -l) )); then
  echo "CPU usage is above 80%. Current usage is $cpu_usage%"
else
  echo "CPU usage is within limits. Current usage is $cpu_usage%"
fi

echo "################################################################################"

#Checking Disk usage
echo "Checking Disk Usage"
usage_percent=$(df /home/ubuntu | awk 'NR==2 {print $5}' | tr -d '%')
read size used available <<< $(df -h /home/ubuntu | awk 'NR==2 {print $2,$3, $4}')
echo " disk usage is : size=$size used=$used, available=$available"
if [ $(echo "$usage_percent > 80" | tr -d '%') ]; then
  echo "Disk usage is above 80%. Current usage is $usage_percent%"
else
  echo "Disk usage is within limits. Current usage is $usage_percent%"
fi