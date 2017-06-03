#!/bin/bash

mkdir -p cache
mkdir -p source
apt-src install $(<packages.list) -l cache
cp cache/*.deb cache/*.dsc cache/*.xz cache/*.gz source
rm -r cache
