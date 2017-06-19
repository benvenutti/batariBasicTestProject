#!/bin/bash

echo "### 1. creating build folder"

mkdir build
cd build

echo "### 2. getting batari basic"
echo "# 2.1 downloading"

wget http://7800.8bitdev.org/images/1/18/BB.1.1d.reveng40.zip

echo "# 2.2 unzipping"

unzip -o BB.1.1d.reveng40.zip

echo "# 2.3 making bb"

mv bB.1.1d.reveng40/* .
make

echo "### 3. copying source code to build folder"

cp ../sample.bas .
