#!/bin/bash

# Fetch CPU temperature (assuming it's in millidegrees Celsius)
cpu_temp=$(cat /sys/class/hwmon/hwmon3/temp1_input)
cpu_temp_celsius=$(echo "scale=0; $cpu_temp / 1000" | bc)

# Fetch GPU temperature using nvidia-smi
gpu_temp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader)

# Output both temperatures
echo "${cpu_temp_celsius}°C/${gpu_temp}°C"
