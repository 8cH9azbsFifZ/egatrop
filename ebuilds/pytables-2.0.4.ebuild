#!/bin/zsh
# (C)opyleft Gerolf Ziegenhain <gerolf@ziegenhain.com> 2008

EBUILD=$0
. /opt/egatrop/lib/egatrop
ESRC_URI="http://www.pytables.org/download/stable/pytables-2.0.4.tar.gz"
EMD5="e9892962256d28c898ea0c985e60c09e  pytables-2.0.4.tar.gz"
EDEP="umfpack lapack"
MIRROR=

export PYTHON_LIB=$EBIN_DIR/lib/python2.5/site-packages 
export PYTHONPATH=$EBIN_DIR/lib/python2.5/site-packages
export LD_LIBRARY_PATH="$EBIN_DIR/lib"
export LD_RUN_PATH=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH LD_RUN_PATH

_emerge
_epython setup.py config build
_einstall
