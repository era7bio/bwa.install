#!/bin/sh
set -e -x

# installer for bwa
#
# create your base folder
mkdir -p /opt/bwa
cd /opt/bwa

wget $bwa-url -O bwa.tar.bz2
tar -xjf bwa.tar.bz2
rm bwa.tar.bz2
cd bwa*
make
ln -sf $PWD/bwa /usr/bin/