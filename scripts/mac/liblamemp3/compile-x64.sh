#!/bin/sh
# Compiling liblamemp3
# -----------------
# - i686-apple-darwin11-llvm-g++-4.2
# - i686-apple-darwin11-llvm-gcc-4.2:
#
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

cd ${sd}/liblamemp3
./configure --prefix=${bd} --enable-static
make clean && make && make install


