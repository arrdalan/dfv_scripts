#!bin/bash

echo $1 > $5
echo $2 >> $5
echo $3 >> $5
echo $4 >> $5
cat /sys/bus/pci/devices/$1\:$2\:$3.$4/vendor >> $5
cat /sys/bus/pci/devices/$1\:$2\:$3.$4/device >> $5
cat /sys/bus/pci/devices/$1\:$2\:$3.$4/subsystem_vendor >> $5
cat /sys/bus/pci/devices/$1\:$2\:$3.$4/subsystem_device >> $5
cat /sys/bus/pci/devices/$1\:$2\:$3.$4/class >> $5
# The tr command replaces new lines with space.
# source: http://stackoverflow.com/questions/1251999/sed-how-can-i-replace-a-newline-n
cat /sys/bus/pci/devices/$1\:$2\:$3.$4/resource | tr '\n' ' ' | sed 's/ *$//' | sed 's/ /,/g' >> $5
echo '' >> $5
echo -n '0x' >> $5
# The first awk gets rid of the first column
# inspired by http://stackoverflow.com/questions/13446255/how-to-remove-the-first-two-columns-in-a-file-using-shell-awk-sed-whatever
#
# The next sed removes blank lines
# source: http://soft.zoneo.net/Linux/remove_empty_lines.php
#
# The head commands only keep enough lines to fully populate the buffer in dfv_gpu module.
#
# The next sed left-trims the stream
# source: http://stackoverflow.com/questions/8562782/remove-empty-lines-from-txtfiles-remove-spaces-from-start-and-end-of-line   
#
# The second awk adds space between every other character
# inspired by http://stackoverflow.com/questions/12746906/how-to-insert-whitespace-between-characters-of-words-in-a-specific-field-in-a-fi
#
# The next sed right-trims the stream
# source: http://stackoverflow.com/questions/8562782/remove-empty-lines-from-txtfiles-remove-spaces-from-start-and-end-of-line   
od -x /sys/bus/pci/devices/$1\:$2\:$3.$4/config | awk '{$1=""; sub("  ", " "); print}' | sed '/^$/d' | head -n 16 | sed 's/^ *//' | sed 's/ //g' | awk '{gsub(/../,"& ",$0);print}' | sed 's/ *$//' | tr '\n' ' ' | sed 's/ *$//' | sed 's/ /,0x/g' | sed 's/,0x,/,/g' | sed 's/0x,//g' | sed 's/,0x$//g' >> $5
echo '' >> $5
