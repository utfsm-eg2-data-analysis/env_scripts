#!/bin/bash

hst=${HOSTNAME:0:3}

echo ""
echo ">>> Setting OS_NAME"
echo "==================="

export ARCH="64bit"
export ARCHT="64bit"
export OS_NAME="Linux64RHEL7"
export OSNAME=${OS_NAME}

echo ">>> ARCH                = ${ARCH}"
echo ">>> ARCHT               = ${ARCHT}"
echo ">>> OS_NAME             = ${OS_NAME}"
echo ">>> OSNAME              = ${OSNAME}"

echo ""
echo ">>> Setting clas_software"
echo "========================="

export CLAS_ROOT=${SOFT_DIR}/clas_software # important
export TOPDIR=${CLAS_ROOT}
export TOP_DIR=${CLAS_ROOT}
export CLAS_PACK=${CLAS_ROOT}/packages
export CLAS_CMS=${CLAS_PACK}/cms
export CLAS_LIB=${CLAS_ROOT}/lib/${OS_NAME}
export CLAS_BIN=${CLAS_ROOT}/bin/${OS_NAME}
export CLAS_SLIB=${CLAS_ROOT}/slib/${OS_NAME}
export PATH=${CLAS_BIN}:${PATH}
export LD_LIBRARY_PATH=${CLAS_LIB}:${CLAS_SLIB}:${LD_LIBRARY_PATH}

echo ">>> CLAS_ROOT           = ${CLAS_ROOT}"
echo ">>> TOPDIR              = ${TOPDIR}"
echo ">>> TOP_DIR             = ${TOP_DIR}"
echo ">>> CLAS_PACK           = ${CLAS_PACK}"
echo ">>> CLAS_CMS            = ${CLAS_CMS}"
echo ">>> CLAS_LIB            = ${CLAS_LIB}"
echo ">>> CLAS_BIN            = ${CLAS_BIN}"
echo ">>> CLAS_SLIB           = ${CLAS_SLIB}"
echo ">>> PATH                = ${PATH}"
echo ">>> LD_LIBRARY_PATH     = ${LD_LIBRARY_PATH}"

echo ""
echo ">>> Setting ClasTool"
echo "===================="

export CLASTOOL=${CLAS_PACK}/ClasTool
export CLAS_TOOL=${CLASTOOL}
export ROOT_INCLUDE_PATH=${CLASTOOL}/include:${ROOT_INCLUDE_PATH}

echo ">>> CLASTOOL            = ${CLASTOOL}"
echo ">>> CLAS_TOOL           = ${CLAS_TOOL}"
echo ">>> ROOT_INCLUDE_PATH   = ${ROOT_INCLUDE_PATH}"

echo ""
echo ">>> Setting recsis"
echo "=================="

if [ "$hst" == "ui0" ]; then # USM cluster
    export CLAS_PARMS=${SOFT_DIR}/simulations/parms # important
    export CLAS_CALDB_HOST=atlasusr.fis.utfsm.cl
    export CLAS_CALDB_USER=alaoui
    export CLAS_CALDB_DBNAME=clas_calib
    export CLAS_CALDB_RUNINDEX="clas_calib.RunIndex"
    export RECSIS_RUNTIME=${SOFT_DIR}/simulations/clsrc/recsis/runtime # important
    export RECSIS=${CLAS_PACK}
elif [ "$hst" == "ifa" ]; then # JLAB cluster
    export CLAS_PARMS=/group/clas/parms # important
    export CLAS_CALDB_HOST=clasdb.jlab.org
    export CLAS_CALDB_USER=clasuser
    export CLAS_CALDB_DBNAME=calib
    export CLAS_CALDB_RUNINDEX="calib.RunIndex"
    export RECSIS_RUNTIME=/group/clas/clsrc/recsis/runtime # important
    export RECSIS=${CLAS_PACK}
fi

echo ">>> CLAS_PARMS          = ${CLAS_PARMS}"
echo ">>> CLAS_CALDB_HOST     = ${CLAS_CALDB_HOST}"
echo ">>> CLAS_CALDB_USER     = ${CLAS_CALDB_USER}"
echo ">>> CLAS_CALDB_DBNAME   = ${CLAS_CALDB_DBNAME}"
echo ">>> CLAS_CALDB_RUNINDEX = ${CLAS_CALDB_RUNINDEX}"
echo ">>> RECSIS_RUNTIME      = ${RECSIS_RUNTIME}"
echo ">>> RECSIS              = ${RECSIS}"
