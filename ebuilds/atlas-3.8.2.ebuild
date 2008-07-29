#!/bin/zsh
# (C)opyleft Gerolf Ziegenhain <gerolf@ziegenhain.com> 2008

EBUILD=$0
. /opt/egatrop/lib/egatrop
ESRC_URI="http://downloads.sourceforge.net/math-atlas/$ENAME$EVERS.tar.gz"
EDOC_URI=
EDEP="lapack"
EMD5="c0281a899f3f1b6ac4620b9ce838fac9  $ENAME$EVERS.tar.gz"
EWORK_DIR=ATLAS
MIRROR=

_emerge
DDD=ATLAS_fucking_stupid_build
[[ -d $DDD ]] || mkdir $DDD
cd $DDD
export LAPACK=$EBIN_DIR/lib/libfblas.a
_ ../configure -Fa alg -fPIC --with-netlib-lapack=$LAPACK --prefix=$EBIN_DIR
_ make -j 4
#_ make ptshared -j 4
#_eautomake
#_einstall
