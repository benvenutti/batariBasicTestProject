#!/bin/bash

echo "### 1. getting batari  basic"
echo "# 1.1 downloading"
wget http://bataribasic.com/batari_Basic_version_1.0.zip

if [ "$TRAVIS_OS_NAME" == "linux" ]; then
  wget http://bataribasic.com/bB_Linux_binaries_version_1.0.zip
else 
  wget http://bataribasic.com/bB_OSX_binaries_version_1.0.zip
fi

echo "# 1.1 unzipping"
unzip -o batari_Basic_version_1.0.zip

if [ "$TRAVIS_OS_NAME" == "linux" ]; then
  unzip -o bB_Linux_binaries_version_1.0.zip
else
  unzip -o bB_OSX_binaries_version_1.0.zip
fi
