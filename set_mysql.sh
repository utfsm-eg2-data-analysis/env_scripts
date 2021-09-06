#!/bin/bash

echo ""
echo ">>> Setting MySQL"
echo "================="

export MYSQL=/usr/bin
export MYSQL_LIB_PATH=/usr/lib64/mysql
export MYSQL_INCLUDE_PATH=/usr/include/mysql
export MYSQLLIB=${MYSQL_LIB_PATH}
export MYSQLBIN=${MYSQL}
export MYSQLINC=${MYSQL_INCLUDE_PATH}
export MYSQL_LIB=${MYSQL_LIB_PATH}
export MYSQL_BIN=${MYSQL}
export MYSQL_INC=${MYSQL_INCLUDE_PATH}
export MYSQL_INCLUDE=${MYSQL_INCLUDE_PATH}

export PATH=${MYSQL_BIN}:${PATH}
export LD_LIBRARY_PATH=${MYSQL_LIB}:${LD_LIBRARY_PATH}

echo ">>> MYSQL               = ${MYSQL}"
echo ">>> MYSQL_LIB_PATH      = ${MYSQL_LIB_PATH}"
echo ">>> MYSQL_INCLUDE_PATH  = ${MYSQL_INCLUDE_PATH}"
echo ">>> MYSQLLIB            = ${MYSQLLIB}"
echo ">>> MYSQLBIN            = ${MYSQLBIN}"
echo ">>> MYSQLINC            = ${MYSQLINC}"
echo ">>> MYSQL_LIB           = ${MYSQL_LIB}"
echo ">>> MYSQL_BIN           = ${MYSQL_BIN}"
echo ">>> MYSQL_INC           = ${MYSQL_INC}"
echo ">>> MYSQL_INCLUDE       = ${MYSQL_INCLUDE}"
echo ">>> PATH                = ${PATH}"
echo ">>> LD_LIBRARY_PATH     = ${LD_LIBRARY_PATH}"
