#!/bin/sh
echo -n /dev/snd/pcmC0D0p > /sys/module/dfvserver/parameters/device_file_pathname
echo -n 4 > /sys/module/dfvserver/parameters/device_type
cat /sys/module/dfvserver/control/add_device_file

echo -n /dev/snd/pcmC0D3p > /sys/module/dfvserver/parameters/device_file_pathname
echo -n 5 > /sys/module/dfvserver/parameters/device_type
cat /sys/module/dfvserver/control/add_device_file

echo -n /dev/snd/pcmC0D1c > /sys/module/dfvserver/parameters/device_file_pathname
echo -n 6 > /sys/module/dfvserver/parameters/device_type
cat /sys/module/dfvserver/control/add_device_file

echo -n /dev/snd/controlC0 > /sys/module/dfvserver/parameters/device_file_pathname
echo -n 7 > /sys/module/dfvserver/parameters/device_type
cat /sys/module/dfvserver/control/add_device_file
