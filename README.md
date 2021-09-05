env_scripts
===========

This repository contains all the necessary scripts for compiling and executing most of the EG2 CLAS software.

## Step 1

Edit `set_all.sh` to decide the environment variables `${SOFT_DIR}` and `${ENV_DIR}`.

The `${SOFT_DIR}` variable consists in the directory where you will install all the wanted packages. **By default**, `${SOFT_DIR}` is set to `${HOME}/software/`.

The `${ENV_DIR}` variable consist in the clone directory of this repository. **By default**, `${ENV_DIR}` is set to `${SOFT_DIR}/env_scripts/`.

## Step 2

Download the wanted repositories into `${SOFT_DIR}`, e.g.,

```
cd ${SOFT_DIR}
git clone http://github.com/utfsm-eg2-data-analysis/cernlib
git clone http://github.com/utfsm-eg2-data-analysis/clas_software
git clone http://github.com/utfsm-eg2-data-analysis/Lepto64Sim
git clone http://github.com/utfsm-eg2-data-analysis/simulations
```

## Step 3

Use this repository to set all the required environment variables

```
source set_all.sh
```
