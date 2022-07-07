#! /bin/bash

mkdir "./Afbeelding"

(find -iname "*.jpg" ; find -iname "*.png") | xargs -I '{}' mv {} ./Afbeelding