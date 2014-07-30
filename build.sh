#!/bin/bash -ex

echo "#############################################"
echo " Building QtTest"
echo "#############################################"

export PATH=/home/dayanand/MySDK/Qt/5.0.2/gcc/bin:$PATH
export BUILD=RELEASE
export PLATFORM=linuxX86

export workspace=$(pwd)
cd $workspace

qmake -r test1.pro CONFIG+=" qt5 release " &&
make clean &&
make 2>&1 | tee compile.log

if [ $? -ne 0 ]; then
    echo "Build failed due to error!"
    exit 1
fi

cd $workspace
