#!/bin/sh
rm /dev/rpmsg-omx12
echo -n /dev/rpmsg-omx12 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 69 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/remove_device_file

rm /dev/rproc_user2
echo -n /dev/rproc_user2 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 70 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/remove_device_file

rm /dev/dfvclient_pvr
