#!/bin/sh
mknod /dev/rpmsg-omx12 c 69 0 -m 777
echo -n /dev/rpmsg-omx12 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 8 > /sys/module/dfvclient/parameters/device_type
echo -n 69 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/add_device_file

mknod /dev/rproc_user2 c 70 0 -m 777
echo -n /dev/rproc_user2 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 9 > /sys/module/dfvclient/parameters/device_type
echo -n 70 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/add_device_file

mknod /dev/dfvclient_pvr c 80 0 -m 777
