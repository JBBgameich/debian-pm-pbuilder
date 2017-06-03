# Pbuilder environment for Plasma Mobile packages on Debian Stretch
The scripts in this repository can create a Debian Stretch / Netrunner pbuilder tgz and download and build Plasma Mobile packages inside it. The created packages can be installed on debian stretch, and in the future on Halium based Debian rootfs.
This is easily modifiable for other usecases.

## Usage
All scripts you can use are located in `pbuilder/`. Before you can build or download packages, you should create the pbuilder tgz using `build-pbuilder.sh` script. For using the download script, you need to have deb-src sources for (in this case Plasma Mobile) in your sources.list.

To add or remove packages to download and build, just edit `packages/packages.list`.

## Dependencies
* apt
* bash
* devscripts
* pbuilder

`sudo apt install devscripts pbuilder`
