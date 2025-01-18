#!/bin/bash
for ((i = 1; i <= 30; i++)); do
	magick convert -resize 40% cheats/kr1crop/$i.png cheats/kr1-40/$i.png
done
