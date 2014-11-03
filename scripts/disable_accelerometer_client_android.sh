#!/bin/sh
rm /dev/mpu2
echo -n /dev/mpu2 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 61 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/remove_device_file

rm /dev/mpuirq2
echo -n /dev/mpuirq2 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 62 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/remove_device_file

rm /dev/accelirq2
echo -n /dev/accelirq2 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 63 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/remove_device_file

rm /dev/timerirq2
echo -n /dev/timerirq2 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 64 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/remove_device_file
