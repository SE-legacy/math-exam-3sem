#!/bin/bash
for ((i = 22; i <= 35; i++)); do
	fname=$i
	if [ $i -lt 10 ]; then
		fname=0$i
	fi
	touch tickets/$fname.typ
done
