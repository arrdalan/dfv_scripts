#!/bin/bash

sed -n '1p' $1 | xargs echo -n > /sys/module/dfv_input/parameters/name
sed -n '2p' $1 | xargs echo -n > /sys/module/dfv_input/parameters/bustype
sed -n '3p' $1 | xargs echo -n > /sys/module/dfv_input/parameters/vendor
sed -n '4p' $1 | xargs echo -n > /sys/module/dfv_input/parameters/product
sed -n '5p' $1 | xargs echo -n > /sys/module/dfv_input/parameters/version
sed -n '6p' $1 | xargs echo -n > /sys/module/dfv_input/parameters/absbit
sed -n '7p' $1 | xargs echo -n > /sys/module/dfv_input/parameters/evbit
sed -n '8p' $1 | xargs echo -n > /sys/module/dfv_input/parameters/ffbit
sed -n '9p' $1 | xargs echo -n > /sys/module/dfv_input/parameters/keybit
sed -n '10p' $1 | xargs echo -n > /sys/module/dfv_input/parameters/ledbit
sed -n '11p' $1 | xargs echo -n > /sys/module/dfv_input/parameters/mscbit
sed -n '12p' $1 | xargs echo -n > /sys/module/dfv_input/parameters/relbit
sed -n '13p' $1 | xargs echo -n > /sys/module/dfv_input/parameters/sndbit
sed -n '14p' $1 | xargs echo -n > /sys/module/dfv_input/parameters/swbit
cat /sys/module/dfv_input/control/register_device
