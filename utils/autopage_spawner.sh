#!/bin/bash
for ((i = 7; i <= 35; i++)); do
	fname=$i
	if [ $i -lt 10 ]; then
		fname=0$i
	fi
	fname=tickets/$fname.typ
	sed -i '2d' $fname
	sed -i '1i биба' $fname
	#sed -i '1i #set page(height: auto)' $fname
done
