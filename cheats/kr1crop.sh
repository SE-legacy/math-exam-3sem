#/bin/bash
for ((i = 1; i <= 31; i++)); do
	convert cheats/kr1/$i.jpg -set option:distort:viewport "%[fx:0.8*w]x%[fx:0.8*h]+%[fx:0.1*w]+%[fx:0.1*h]" -filter point -distort SRT 0 cheats/kr1crop/$i.png
done
