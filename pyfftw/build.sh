#!/bin/bash

if [ -n "$OSX_ARCH" ]
    then
        export DYLD_LIBRARY_PATH="$PREFIX/lib"
        export LD_FLAGS="-L$PREFIX/lib"
        export CFLAGS="-I$PREFIX/include"

fi

$PYTHON setup.py install
