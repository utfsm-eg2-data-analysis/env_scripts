#!/bin/bash

echo ""
echo ">>> Setting cernlib"
echo "==================="

hst=${HOSTNAME:0:3}

if [ "$hst" == "ifa" ]; then # JLAB cluster
    export CERN=/apps/cernlib/x86_64_rhel8
    export CERN_LEVEL=2005
    export CERN_ROOT=${CERN}/${CERN_LEVEL}
    export CERN_LIB=${CERN_ROOT}/lib
    export CERNLIBDIR=${CERN_LIB}
    export CERN_BIN=${CERN_ROOT}/bin
    export CERN_INC=${CERN_ROOT}/include
    export CERN_INCLUDEDIR=${CERN_INC}
    export PATH=${CERN_BIN}:${PATH}
    export LD_LIBRARY_PATH=${CERN_LIB}:${LD_LIBRARY_PATH}
if else # USM cluster
    export CERN=${SOFT_DIR}/cernlib
    export CERN_LEVEL=2005
    export CERN_ROOT=${CERN}/${CERN_LEVEL}
    export CERN_LIB=${CERN_ROOT}/lib
    export CERNLIBDIR=${CERN_LIB}
    export CERN_BIN=${CERN_ROOT}/bin
    export CVSCOSRC=${CERN_ROOT}/src # extra
    export CERN_INC=${CVSCOSRC}/include
    export CERN_INCLUDEDIR=${CVSCOSRC}/include
    export PATH=${CERN_BIN}:${PATH}
    export LD_LIBRARY_PATH=${CERN_LIB}:${LD_LIBRARY_PATH}
fi

echo ">>> CERN                = ${CERN}"
echo ">>> CERN_LEVEL          = ${CERN_LEVEL}"
echo ">>> CERN_ROOT           = ${CERN_ROOT}"
echo ">>> CERN_LIB            = ${CERN_LIB}"
echo ">>> CERNLIBDIR          = ${CERNLIBDIR}"
echo ">>> CERN_BIN            = ${CERN_BIN}"
echo ">>> CVSCOSRC            = ${CVSCOSRC}"
echo ">>> CERN_INC            = ${CERN_INC}"
echo ">>> CERN_INCLUDEDIR     = ${CERN_INCLUDEDIR}"
echo ">>> PATH                = ${PATH}"
echo ">>> LD_LIBRARY_PATH     = ${LD_LIBRARY_PATH}"
