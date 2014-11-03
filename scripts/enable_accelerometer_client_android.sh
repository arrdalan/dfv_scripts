#!/bin/sh
mknod /dev/mpu2 c 61 0 -m 777
echo -n /dev/mpu2 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 0 > /sys/module/dfvclient/parameters/device_type
echo -n 61 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/add_device_file

mknod /dev/mpuirq2 c 62 0 -m 777
echo -n /dev/mpuirq2 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 1 > /sys/module/dfvclient/parameters/device_type
echo -n 62 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/add_device_file

mknod /dev/accelirq2 c 63 0 -m 777
echo -n /dev/accelirq2 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 2 > /sys/module/dfvclient/parameters/device_type
echo -n 63 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/add_device_file

mknod /dev/timerirq2 c 64 0 -m 777
echo -n /dev/timerirq2 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 3 > /sys/module/dfvclient/parameters/device_type
echo -n 64 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/add_device_file
