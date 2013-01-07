#!/bin/sh
set -e -x

# installer for bwa
bwaUrl="http://resources.ohnosequences.com/bwa/bwa-0.6.2.tar.bz2"

# create your base folder
mkdir -p /opt/bwa
cd /opt/bwa

# prereqs
yum -y install zlib zlib-devel

wget ${bwaUrl} -O bwa.tar.bz2
tar -xjf bwa.tar.bz2
rm bwa.tar.bz2
cd bwa*
make
ln -sf $PWD/bwa /usr/bin/