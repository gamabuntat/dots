#!/bin/sh

files="*\.png"
for f in $files
do 
  cwebp $f -o ${f/\.png/\.webp} -resize 400 0
done
