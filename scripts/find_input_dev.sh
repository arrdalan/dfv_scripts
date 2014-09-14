#!/bin/bash

for num in {1..20} #Won't work if you have more than 20 input devices :)
do
	if [ -d "/sys/class/input/input"$num ]; then

		source scripts/extract_input_info.sh $num /tmp/dfv_input_info.tmp

		diff --brief <(sort $1) <(sort /tmp/dfv_input_info.tmp) >/dev/null
		comp_value=$?

		if [ $comp_value -eq 0 ]; then
			echo $num
		fi

		rm /tmp/dfv_input_info.tmp
	fi
done
