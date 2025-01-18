#!/bin/bash
for ((i = 1; i <= 30; i++)); do
	magick convert -resize 50% cheats/kr1crop/$i.png cheats/kr1-50/$i.png
done
