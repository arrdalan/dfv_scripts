#!/bin/bash

insmod ./dfvclient.ko
insmod ./dfvclient_kvm.ko

modprobe drm
insmod ./dfv_pci.ko
source scripts/set_up_gpu_info.sh card0 controlD64 radeon info_files/gpu_info.txt
echo -n /dev/dri/card0 > /sys/module/dfvclient/parameters/device_file_pathname
echo -n 0 > /sys/module/dfvclient/parameters/device_type
cat /sys/module/dfvclient/control/add_device_file

insmod ./dfv_input.ko
source scripts/set_up_input_info.sh info_files/keyboard_info.txt
num=$(source scripts/find_input_dev.sh info_files/keyboard_info.txt;)
echo -n /dev/input/event$num > /sys/module/dfvclient/parameters/device_file_pathname
rm /dev/input/event$num
(cat /sys/module/dfv_input/parameters/major_number; echo $num;) | xargs -n 2 sh -c 'mknod /dev/input/event$1 c $0 0'
echo -n 1 > /sys/module/dfvclient/parameters/device_type
cat /sys/module/dfvclient/control/add_device_file

source scripts/set_up_input_info.sh info_files/mouse_info.txt
num=$(source scripts/find_input_dev.sh info_files/mouse_info.txt;)
echo -n /dev/input/event$num > /sys/module/dfvclient/parameters/device_file_pathname
rm /dev/input/event$num
(cat /sys/module/dfv_input/parameters/major_number; echo $num) | xargs -n 2 sh -c 'mknod /dev/input/event$1 c $0 0'
echo -n 2 > /sys/module/dfvclient/parameters/device_type
cat /sys/module/dfvclient/control/add_device_file
