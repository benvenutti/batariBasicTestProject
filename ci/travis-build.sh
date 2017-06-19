#!/bin/bash

cd build

if [ "$TRAVIS_OS_NAME" == "linux" ]; then 
  ../ci/travis-build-linux.sh sample.bas 
else 
  ../ci/travis-build-osx.sh sample.bas 
fi