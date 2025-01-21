#!/bin/bash

set -e

version=${TAGPR_NEXT_VERSION//v/}

cd $(dirname $0)

# Update version in dkms.conf
sed -i -e "s/^PACKAGE_VERSION=.*/PACKAGE_VERSION=\"$version\"/" dkms.conf

# Update version in driver/driver_module.h
sed -i -e "s/^#define\s\s*PX4_DRV_VERSION\s\s*.*/#define	PX4_DRV_VERSION	\"$version\"/" driver/driver_module.h

# Update version in DEBIAN/control
sed -i -e "s/^Version:.*/Version: $version/" dkms/DEBIAN/control
sed -i -e "Provides: px4-drv-modules .*/Provides: px4-drv-modules (= $version)/" dkms/DEBIAN/control

# Update version in DEBIAN/prerm
sed -i -e "VERSION=.*/VERSION=\"$version\"/" dkms/DEBIAN/prerm

# Update version in build_deb.sh
sed -i -e "s/^version=.*/version=\"$version\"/" build_deb.sh

# Update version in winusb/src/BonDriver_PX4/resource.h
sed -i -e "s/^#define\s\s*VER_FILE\s\s*.*/#define VER_FILE	${version//./,},0/" winusb/src/BonDriver_PX4/resource.h
sed -i -e "s/^#define\s\s*VER_FILE_STR\s\s*.*/#define	VER_FILE_STR	\"$version\"/" winusb/src/BonDriver_PX4/resource.h
sed -i -e "s/^#define\s\s*VER_PRODUCT\s\s*.*/#define VER_PRODUCT	${version//./,},0/" winusb/src/BonDriver_PX4/resource.h
sed -i -e "s/^#define\s\s*VER_PRODUCT_STR\s\s*.*/#define	VER_PRODUCT_STR	\"$version\"/" winusb/src/BonDriver_PX4/resource.h

# Update version in winusb/src/DriverHost_PX4/resource.h
sed -i -e "s/^#define\s\s*VER_FILE\s\s*.*/#define VER_FILE	${version//./,},0/" winusb/src/DriverHost_PX4/resource.h
sed -i -e "s/^#define\s\s*VER_FILE_STR\s\s*.*/#define	VER_FILE_STR	\"$version\"/" winusb/src/DriverHost_PX4/resource.h
sed -i -e "s/^#define\s\s*VER_PRODUCT\s\s*.*/#define VER_PRODUCT	${version//./,},0/" winusb/src/DriverHost_PX4/resource.h
sed -i -e "s/^#define\s\s*VER_PRODUCT_STR\s\s*.*/#define	VER_PRODUCT_STR	\"$version\"/" winusb/src/DriverHost_PX4/resource.h

