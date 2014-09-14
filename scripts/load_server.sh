#!bin/bash

insmod ./dfv_drm.ko
insmod ./dfvserver.ko
insmod ./dfvserver_xen.ko

echo -n /dev/dri/card0 > /sys/module/dfvserver/parameters/device_file_pathname
echo -n 0 > /sys/module/dfvserver/parameters/device_type
cat /sys/module/dfvserver/control/add_device_file

num=$(source scripts/find_input_dev.sh info_files/keyboard_info.txt;)
echo -n /dev/input/event$num > /sys/module/dfvserver/parameters/device_file_pathname
echo -n 1 > /sys/module/dfvserver/parameters/device_type
cat /sys/module/dfvserver/control/add_device_file

num=$(source scripts/find_input_dev.sh info_files/mouse_info.txt;)
echo -n /dev/input/event$num > /sys/module/dfvserver/parameters/device_file_pathname
echo -n 2 > /sys/module/dfvserver/parameters/device_type
cat /sys/module/dfvserver/control/add_device_file
