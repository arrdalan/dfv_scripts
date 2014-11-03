#!/bin/sh
echo -n /dev/mpu > /sys/module/dfvserver/parameters/device_file_pathname
cat /sys/module/dfvserver/control/remove_device_file

echo -n /dev/mpuirq > /sys/module/dfvserver/parameters/device_file_pathname
cat /sys/module/dfvserver/control/remove_device_file

echo -n /dev/accelirq > /sys/module/dfvserver/parameters/device_file_pathname
cat /sys/module/dfvserver/control/remove_device_file

echo -n /dev/timerirq > /sys/module/dfvserver/parameters/device_file_pathname
cat /sys/module/dfvserver/control/remove_device_file
