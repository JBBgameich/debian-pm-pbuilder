#!/bin/bash

mkdir ../result

for i in ../packages/source/*.dsc
do
    if test -f "$i" 
    then
       echo "Building source file $i in pbuilder"
       sudo pbuilder build --basetgz stretch.tgz --buildresult ../result $i
    fi
done
