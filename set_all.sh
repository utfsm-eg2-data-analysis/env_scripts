#!/bin/bash

echo ">>> Setting software"
echo "===================="

export SOFT_DIR=${HOME}/software
export ENV_DIR=${SOFT_DIR}/env_scripts

echo ">>> SOFT_DIR            = ${SOFT_DIR}"
echo ">>> ENV_DIR             = ${ENV_DIR}"

array_of_programs=("root cernlib clas mysql")

for program in ${array_of_programs[@]}; do
    source ${ENV_DIR}/set_${program}.sh
done
