#!/bin/bash
source /apps/GPP/BSCTOOLS/extrae/4.1.2/openmpi_4_1_5/etc/extrae.sh

export EXTRAE_CONFIG_FILE=./extrae.xml
export EXTRAE_HOME=/apps/GPP/BSCTOOLS/extrae/4.1.2/impi_2021_10_0
export LD_PRELOAD=${EXTRAE_HOME}/lib/libmpitrace.so # For C apps
# export LD_PRELOAD=${EXTRAE_HOME}/lib/libmpitracef.so # For Fortran apps

## Run the desired program
$*
