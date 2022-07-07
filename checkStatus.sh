#! /bin/bash

for file in $1/*;
do
 if $2 $file > /dev/null 2> /dev/null; then
    echo $file werkt >> $3 
 else
    echo $file werkt niet >> $3; 
 fi
done