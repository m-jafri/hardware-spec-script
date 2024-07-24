#!/bin/bash

# Create or clear the hardware-spec.txt file
echo "Hardware Specifications" > hardware-spec.txt

# Append CPU information
echo -e "\n### CPU Information ###\n" >> hardware-spec.txt
cat /proc/cpuinfo >> hardware-spec.txt

# Append Total RAM information
echo -e "\n### Total RAM ###\n" >> hardware-spec.txt
cat /proc/meminfo >> hardware-spec.txt
echo -e "\nConcise RAM Information:\n" >> hardware-spec.txt
grep MemTotal /proc/meminfo >> hardware-spec.txt

# Append Total Disk Space information
echo -e "\n### Total Disk Space ###\n" >> hardware-spec.txt
df -h >> hardware-spec.txt

# Append GPU information (if any)
echo -e "\n### GPU Information ###\n" >> hardware-spec.txt
nvidia-smi >> hardware-spec.txt 2>/dev/null

echo "Hardware specifications saved to hardware-spec.txt"
