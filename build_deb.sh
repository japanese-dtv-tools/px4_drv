#!/bin/bash

# requirements:
# sudo apt-get install -y debhelper devscripts dh-exec dkms dpkg fakeroot

set -xe

version="0.5.4"
cd $(dirname $0)

set -CEuo pipefail

WORKDIR=./work
SRCDIR=${WORKDIR}/usr/src/px4_drv-${version}
SHAREDIR=${WORKDIR}/usr/share/px4_drv-dkms

[ -d ${WORKDIR} ] && rm -rf ${WORKDIR} && mkdir -p ${WORKDIR} && mkdir -p ${SRCDIR} && mkdir -p ${SHAREDIR}

# prepare files
cp -af ./dkms/DEBIAN ${WORKDIR}/
cp -af ./driver ./etc ./fwtool ./include dkms.conf README.md LICENSE ${SRCDIR}
cp -f ./dkms/postinst ${SHAREDIR}

# Build dkms deb
fakeroot dpkg-deb --build ${WORKDIR} .
