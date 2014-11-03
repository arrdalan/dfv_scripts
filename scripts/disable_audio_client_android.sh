#!/bin/sh
rm /dev/snd/pcmC0D0p2
echo -n /dev/snd/pcmC0D0p2 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 65 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/remove_device_file

rm /dev/snd/pcmC0D3p2
echo -n /dev/snd/pcmC0D3p2 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 66 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/remove_device_file

rm /dev/snd/pcmC0D1c2
echo -n /dev/snd/pcmC0D1c2 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 67 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/remove_device_file

rm /dev/snd/controlC02
echo -n /dev/snd/controlC02 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 68 > /sys/module/dfvclient/parameters/major_number
cat /sys/module/dfvclient/control/remove_device_file
