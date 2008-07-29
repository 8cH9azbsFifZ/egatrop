#!/bin/zsh
# (C)opyleft Gerolf Ziegenhain <gerolf@ziegenhain.com> 2008

EBUILD=$0
. /opt/egatrop/lib/egatrop
ESRC_URI="http://downloads.sourceforge.net/$ENAME/$ENAME-$EVERS.tar.gz"
EMD5="bf176b9857c4c588a63e414df84a1826  numpy-1.1.0.tar.gz"
EDEP="umfpack lapack"
MIRROR=http://mirror.corvix.eu

export PYTHON_LIB=$EBIN_DIR/lib/python2.5/site-packages 
export PYTHONPATH=$EBIN_DIR/lib/python2.5/site-packages
export LD_LIBRARY_PATH="$EBIN_DIR/lib"
export LD_RUN_PATH=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH LD_RUN_PATH
export LAPACK=$EBIN_DIR/lib/libfblas.a
export MKL=None
export BLAS=$EBIN_DIR/lib/libfblas.a
export INCPATH=$EBIN_DIR/include

_emerge
_epython setup.py config --compiler=unix --fcompiler=gnu95 build
_einstall
