#!/bin/bash

echo "=========================================="
echo "        LINUX SYSTEM HEALTH CHECK"
echo "=========================================="

echo ""
echo "Hostname      : $(hostname)"
echo "Date & Time    : $(date)"
echo "System Uptime : $(uptime -p)"

echo "------------------------------------------"
echo "Disk Usage"
echo "------------------------------------------"
df -h /

echo "------------------------------------------"
echo "Memory Usage"
echo "------------------------------------------"
free -h

echo "------------------------------------------"
echo "CPU Load"
echo "------------------------------------------"
uptime

echo "------------------------------------------"

DISK=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$DISK" -gt 80 ]; then
    echo "WARNING: Disk usage is above 80%"
else
    echo "System health looks good!"
fi

echo "=========================================="
echo "        HEALTH CHECK COMPLETED"
echo "=========================================="
