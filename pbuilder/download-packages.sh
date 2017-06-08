#!/bin/bash

for i in "$@"
do
case $i in
    -g|--git)
    cd ../packages/; bash download-git.sh
    ;;
    -a|--apt)
    cd ../packages/; bash download-apt.sh
    ;;
    *)
    echo "Use either --git or --apt"
    ;;
esac
done
