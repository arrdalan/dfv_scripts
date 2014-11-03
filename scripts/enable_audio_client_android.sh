#!/bin/sh
mknod /dev/snd/pcmC0D0p2 c 65 0 -m 777
echo -n /dev/snd/pcmC0D0p2 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 4 > /sys/module/dfvclient/parameters/device_type
echo -n 1 > /sys/module/dfvclient/parameters/ioctl_info_type
echo -n 65 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/add_device_file

mknod /dev/snd/pcmC0D3p2 c 66 0 -m 777
echo -n /dev/snd/pcmC0D3p2 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 5 > /sys/module/dfvclient/parameters/device_type
echo -n 1 > /sys/module/dfvclient/parameters/ioctl_info_type
echo -n 66 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/add_device_file

mknod /dev/snd/pcmC0D1c2 c 67 0 -m 777
echo -n /dev/snd/pcmC0D1c2 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 6 > /sys/module/dfvclient/parameters/device_type
echo -n 1 > /sys/module/dfvclient/parameters/ioctl_info_type
echo -n 67 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/add_device_file

mknod /dev/snd/controlC02 c 68 0 -m 777
echo -n /dev/snd/controlC02 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 7 > /sys/module/dfvclient/parameters/device_type
echo -n 1 > /sys/module/dfvclient/parameters/ioctl_info_type
echo -n 68 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/add_device_file
