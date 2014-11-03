#!/bin/sh
echo -n /dev/mpu > /sys/module/dfvserver/parameters/device_file_pathname
echo -n 0 > /sys/module/dfvserver/parameters/device_type
cat /sys/module/dfvserver/control/add_device_file

echo -n /dev/mpuirq > /sys/module/dfvserver/parameters/device_file_pathname
echo -n 1 > /sys/module/dfvserver/parameters/device_type
cat /sys/module/dfvserver/control/add_device_file

echo -n /dev/accelirq > /sys/module/dfvserver/parameters/device_file_pathname
echo -n 2 > /sys/module/dfvserver/parameters/device_type
cat /sys/module/dfvserver/control/add_device_file

echo -n /dev/timerirq > /sys/module/dfvserver/parameters/device_file_pathname
echo -n 3 > /sys/module/dfvserver/parameters/device_type
cat /sys/module/dfvserver/control/add_device_file
