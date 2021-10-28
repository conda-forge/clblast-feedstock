#!/bin/bash

mkdir build_release
cd build_release

cmake \
    ${CMAKE_ARGS} \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH="${PREFIX}" \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
    -DCMAKE_INSTALL_LIBDIR="lib" \
    -DOPENCL_ROOT="${PREFIX}" \
    ..

make -j${CPU_COUNT}
make install
