#! /bin/bash

for image in $1/*.jpg;
do
    convert "$image" -resize 128x128 "$1/$(basename $image .jpg).png";
done