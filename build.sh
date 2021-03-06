#!/bin/bash -ex

echo "#############################################"
echo " Building QtTest"
echo "#############################################"

export PLATFORM=linuxX86

if [ $PLATFORM == 'linuxX86' ]; then
    if [ -d '/opt/qt5-vmwx86' ]; then
        export PATH=/opt/qt5-vmwx86/bin:$PATH
    else
        export PATH=/home/dayanand/MySDK/Qt/5.1.1/gcc/bin:$PATH
    fi
else
    export PATH=/opt/qt5-arm/bin:$PATH
fi

export BUILD=RELEASE

export workspace=$(pwd)
cd $workspace

qmake -r test1.pro CONFIG+=" qt5 release " QT+=" widgets " &&
make clean &&
make -j4
