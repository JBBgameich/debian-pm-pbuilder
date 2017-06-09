#!/bin/bash

export packages_path=`pwd`

cd recipies

for i in *
do
    if test -f "$i" 
    then
        # Set defaults
        export packaging_branch=master
        export source_branch=master
        
        echo "Creating source package of $i"
        export $(<$i)
        cd ../source

        echo "Cleaning"
        rm $name -rf

        git clone $source $name -b $source_branch --depth 1
        rm -rf $name/.git
        rm $name/.* # FIXME Add proper option to add .files to the tarball
        tar -cJf $name\_$version+git`date +%Y%m%d`.orig.tar.xz $name/*
        git clone $packaging $name-packaging -b $packaging_branch
        cp -r $name-packaging/* $name
        rm -rf $name-packaging
        cd $name

        dch -b "Automated CI build" -v $version+git`date +%Y%m%d`-1 --distribution testing
        dpkg-buildpackage -S -d
        cd $packages_path/recipies
    fi
done
