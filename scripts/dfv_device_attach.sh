#!/bin/bash

backend_name=${1}
frontend_name=${2}

# get domids
all_ids=$(xenstore-list /local/domain)
for key in ${all_ids}; do 
	name=$(xenstore-read /local/domain/${key}/name)
	if [ "${name}" == "${backend_name}" ]; then
		backend_id=${key}
	fi
	if [ "${name}" == "${frontend_name}" ]; then
		frontend_id=${key}
	fi
done

# pass domids to python script
python dfv_device_attach.py ${backend_id} ${frontend_id}
