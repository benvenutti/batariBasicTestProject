#!/bin/bash

echo "### 1. getting batari  basic"
echo "# 1.1 downloading"
wget http://bataribasic.com/batari_Basic_version_1.0.zip
wget http://bataribasic.com/bB_Linux_binaries_version_1.0.zip

echo "# 1.1 unzipping"
unzip -o batari_Basic_version_1.0.zip
unzip -o bB_Linux_binaries_version_1.0.zip

echo "### 2. setting environment"
export bB=`pwd`
export PATH=$PATH:$bB

echo "### 3. compiling"
./2600basic.sh source/sample.bas
