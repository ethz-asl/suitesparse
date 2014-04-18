#!/bin/bash

LIB_DIR=$1
cd $LIB_DIR
top=$LIB_DIR
set -o verbose
echo "*** Creating .so files from the suitesparse .a files"

for f in libamd.2.3.1.a libamd.a libbtf.1.2.0.a libbtf.a libcamd.2.3.1.a libcamd.a libccolamd.2.8.0.a libccolamd.a libcholmod.2.1.2.a libcholmod.a libcolamd.2.8.0.a libcolamd.a libcxsparse.3.1.2.a libcxsparse.a libklu.1.2.1.a libklu.a libldl.2.1.0.a libldl.a librbio.2.1.1.a librbio.a libspqr.1.3.1.a libspqr.a libsuitesparseconfig.4.2.1.a libsuitesparseconfig.a libumfpack.5.6.2.a libumfpack.a
do
  mkdir tmp
  cd tmp
  ar vx ../$f
  gcc -shared -o ../${f%%.a}.so *.o
  cd $top
  rm -rf tmp
done
