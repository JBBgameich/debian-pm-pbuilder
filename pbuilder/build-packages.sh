#!/bin/bash

sudo rm /var/cache/pbuilder/result/*

for i in ../packages/source/*.dsc
do
    if test -f "$i" 
    then
       echo "Building source file $i in pbuilder"
       sudo pbuilder build --basetgz stretch.tgz $i
    fi
done 

mkdir ../result
cp /var/cache/pbuilder/result/* ../result
