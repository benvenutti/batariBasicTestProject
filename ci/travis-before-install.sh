#!/bin/bash

echo "### 1. creating build folder"

mkdir build
cd build

echo "### 2. getting batari basic"
echo "# 2.1 downloading"

if [ "$TRAVIS_OS_NAME" == "linux" ]; then 
  wget http://bataribasic.com/batari_Basic_version_1.0.zip 
  wget http://bataribasic.com/bB_Linux_binaries_version_1.0.zip 
else 
  wget http://7800.8bitdev.org/images/1/18/BB.1.1d.reveng40.zip 
fi

echo "# 2.2 unzipping"

if [ "$TRAVIS_OS_NAME" == "linux" ]; then 
  unzip -o batari_Basic_version_1.0.zip 
  unzip -o bB_Linux_binaries_version_1.0.zip 
else 
  unzip -o BB.1.1d.reveng40.zip 
  mv bB.1.1d.reveng40/* . 
  make  
fi

echo "### 3. copying source code to build folder"

cp ../src/sample.bas .
