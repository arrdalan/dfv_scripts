#!/bin/bash

cat /sys/class/input/input$1/name > $2
echo -n 0x >> $2
cat /sys/class/input/input$1/id/bustype >> $2
echo -n 0x >> $2
cat /sys/class/input/input$1/id/vendor >> $2
echo -n 0x >> $2
cat /sys/class/input/input$1/id/product >> $2
echo -n 0x >> $2
cat /sys/class/input/input$1/id/version >> $2
echo -n 0x >> $2
# The awk command reverses the order of columns.
# source: http://unix.stackexchange.com/questions/46275/swapping-an-unlimited-number-of-columns
# The first sed right trims the stream
# source: http://stackoverflow.com/questions/8562782/remove-empty-lines-from-txtfiles-remove-spaces-from-start-and-end-of-line   
cat /sys/class/input/input$1/capabilities/abs | awk '{for(i = NF; i > 0; i--) printf "%s ", $i; print ""}' | sed 's/ *$//' | sed 's/ /,0x/g' >> $2
echo -n 0x >> $2
cat /sys/class/input/input$1/capabilities/ev | awk '{for(i = NF; i > 0; i--) printf "%s ", $i; print ""}' | sed 's/ *$//' | sed 's/ /,0x/g' >> $2
echo -n 0x >> $2
cat /sys/class/input/input$1/capabilities/ff | awk '{for(i = NF; i > 0; i--) printf "%s ", $i; print ""}' | sed 's/ *$//' | sed 's/ /,0x/g' >> $2
echo -n 0x >> $2
cat /sys/class/input/input$1/capabilities/key | awk '{for(i = NF; i > 0; i--) printf "%s ", $i; print ""}' | sed 's/ *$//' | sed 's/ /,0x/g' >> $2
echo -n 0x >> $2
cat /sys/class/input/input$1/capabilities/led | awk '{for(i = NF; i > 0; i--) printf "%s ", $i; print ""}' | sed 's/ *$//' | sed 's/ /,0x/g' >> $2
echo -n 0x >> $2
cat /sys/class/input/input$1/capabilities/msc | awk '{for(i = NF; i > 0; i--) printf "%s ", $i; print ""}' | sed 's/ *$//' | sed 's/ /,0x/g' >> $2
echo -n 0x >> $2
cat /sys/class/input/input$1/capabilities/rel | awk '{for(i = NF; i > 0; i--) printf "%s ", $i; print ""}' | sed 's/ *$//' | sed 's/ /,0x/g' >> $2
echo -n 0x >> $2
cat /sys/class/input/input$1/capabilities/snd | awk '{for(i = NF; i > 0; i--) printf "%s ", $i; print ""}' | sed 's/ *$//' | sed 's/ /,0x/g' >> $2
echo -n 0x >> $2
cat /sys/class/input/input$1/capabilities/sw | awk '{for(i = NF; i > 0; i--) printf "%s ", $i; print ""}' | sed 's/ *$//' | sed 's/ /,0x/g' >> $2
