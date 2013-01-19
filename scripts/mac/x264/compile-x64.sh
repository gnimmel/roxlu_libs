#!/bin/sh
# Compiling x264
# -----------------
# - i686-apple-darwin11-llvm-g++-4.2
# - i686-apple-darwin11-llvm-gcc-4.2:
#
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export PATH=${bd}/bin:${PATH}

cd ${sd}/x264
./configure --prefix=${bd} \
    --enable-static \
    --enable-shared

make clean 
make 
make install


