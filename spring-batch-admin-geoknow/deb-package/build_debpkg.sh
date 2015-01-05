#!/bin/sh
 
MODULE_NAME=spring-batch-admin-geoknow_0.0.1
echo "Building Debian package for ${MODULE_NAME}"
echo
rm -rf ../target/debian

# add the Debian control files
cp -r debian ../target/

# build the package and sign it
cd ../target
debuild --check-dirname-level 0 -b
