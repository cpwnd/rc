#!/bin/bash
# 
# Converts pattern of file extension to another pattern of file extension

P=$1
EXT1=$2
EXT2=$3

newpath="$P*.$EXT1"

# Different file extensions
#
# wav out
ARGS="-b:a 1411k"

# mp3 out
ARGS="-b:a 320k"


for filename in $newpath; do
	#echo "ffmpeg -i $filename "$ARGS" $P"$(basename "$filename" .$EXT1)".$EXT2"
	ffmpeg -i $filename $ARGS $P"$(basename "$filename" .$EXT1)".$EXT2
done
