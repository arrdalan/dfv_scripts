#!/bin/sh
echo -n /dev/snd/pcmC0D0p > /sys/module/dfvserver/parameters/device_file_pathname
cat /sys/module/dfvserver/control/remove_device_file

echo -n /dev/snd/pcmC0D3p > /sys/module/dfvserver/parameters/device_file_pathname
cat /sys/module/dfvserver/control/remove_device_file

echo -n /dev/snd/pcmC0D1c > /sys/module/dfvserver/parameters/device_file_pathname
cat /sys/module/dfvserver/control/remove_device_file

echo -n /dev/snd/controlC0 > /sys/module/dfvserver/parameters/device_file_pathname
cat /sys/module/dfvserver/control/remove_device_file
