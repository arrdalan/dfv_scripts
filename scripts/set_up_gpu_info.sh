#/bin/bash

(echo $1; echo $2; echo $3; cat $4;) | xargs -n 14 sh -c 'insmod ./dfv_gpu.ko device_file_name=$0 ctl_dev_file_name=$1 driver_name=$2 domainnr=$3 busnr=$4 devnr=$5 funcnr=$6 vendor=$7 device=$8 subsystem_vendor=$9 subsystem_device=$10 class=$11 resource=$12 config=$13'
