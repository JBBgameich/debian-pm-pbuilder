#!/bin/bash

mkdir -p cache
mkdir -p source
cd cache
apt source --download-only $(<../packages.list) --download
cd ..
cp cache/*.dsc cache/*.xz cache/*.gz source
rm -r cache
