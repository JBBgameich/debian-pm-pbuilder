#!/bin/bash

sudo pbuilder create --distribution stretch --mirror http://deb.debian.org/debian --basetgz stretch.tgz
sudo pbuilder execute --basetgz stretch.tgz --save-after-exec --save-after-login -- hooks/00-configure-apt.sh
