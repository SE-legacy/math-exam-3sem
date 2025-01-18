#!/bin/bash
for ((i = 1; i <= 67; i++)); do
	magick convert -resize 40% cheats/pdf2png/$i.png cheats/png40/$i.png
done
