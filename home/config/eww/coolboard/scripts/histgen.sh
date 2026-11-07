#!/bin/bash

#------------------------------------#
#--- Clipboard history generation ---#
#------------------------------------#

output="$HOME/.config/eww/coolboard/scripts/list.txt"
> $output
echo "(box :orientation 'vertical' :halign 'fill' :space-evenly false" \
	>> $output
for ((i = 1; i <= $(cliphist list | wc -l); i++)); do
	number="$(cliphist list | awk "NR == ${i}" | cut -f-1)"
	echo -n "    (button :height 50 :onclick '" \
		>> $output
	echo "cliphist decode ${number} | wl-copy'" \
		>> $output
	echo -n "        (label :text '" \
		>> $output
	echo -n "$(cliphist -preview-width 25 list \
		| awk "NR == ${i}" \
		| cut -f2- \
		| awk '{ gsub(/\\/, "\\\\\\\\\\\\"); \
				 gsub(/"/, "\\\""); \
				 gsub(/\//, "/"); \
				 gsub(/\047/, "\\\\\\'\''"); \
				 gsub(/\${/, "\\${"); \
				 print }')" \
		>> $output
	echo "')" >> $output
	echo "    )" >> $output
done
echo ")" >> $output
