#!/bin/sh
echo -n /dev/rpmsg-omx1 > /sys/module/dfvserver/parameters/device_file_pathname
cat /sys/module/dfvserver/control/remove_device_file

echo -n /dev/rproc_user > /sys/module/dfvserver/parameters/device_file_pathname
cat /sys/module/dfvserver/control/remove_device_file
