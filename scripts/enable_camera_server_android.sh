#!/bin/sh
echo -n /dev/rpmsg-omx1 > /sys/module/dfvserver/parameters/device_file_pathname
echo -n 8 > /sys/module/dfvserver/parameters/device_type
cat /sys/module/dfvserver/control/add_device_file

echo -n /dev/rproc_user > /sys/module/dfvserver/parameters/device_file_pathname
echo -n 9 > /sys/module/dfvserver/parameters/device_type
cat /sys/module/dfvserver/control/add_device_file
