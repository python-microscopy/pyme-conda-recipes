#!/bin/bash


if [ -n "$OSX_ARCH" ]
    then
        $PYTHON setup.py build
        $PREFIX/python.app/Contents/MacOS/python setup.py install
else
    $PYTHON setup.py install
fi

$PYTHON install_plugin.py dist
#$PYTHON pymecompress/setup.py install

# Add more build steps here, if they are necessary.



#echo "Attempting to build and install go components"
#
#curdir=`pwd`
#
#PYMEGOdir="$GOPATH/src/github.com/mrd0ll4r/pyme"
#if [ -d "$PYMEGOdir" ]
#    then
#        echo "installing pyme go components"
#
#        cd $PYMEGOdir/cmd/distributor
#        go install .
#
#        cd $PYMEGOdir/cmd/nodeserver
#        go install .
#
#        cd $curdir
#
#        cp $GOBIN/distributor $PREFIX/bin
#        cp $GOBIN/nodeserver $PREFIX/bin
#fi


# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
