#!/bin/bash
set -xe

RAW_DIR="../../raw/dfe/UKESM1-0-LL"
CLEAN_DIR="../../clean/dfe/UKESM1-0-LL"

CDO="cdo -O -P 8 -f nc"

$CDO -remapbil,r360x180 -mergetime ${RAW_DIR}/dfe_Omon_UKESM1-0-LL_historical*.nc ${CLEAN_DIR}/dfe_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ${CLEAN_DIR}/dfe_UKESM1-0-LL_hist_1950-2014_1deg.nc ${CLEAN_DIR}/dfe_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ${CLEAN_DIR}/dfe_UKESM1-0-LL_hist_1950-2014_1deg.nc ${CLEAN_DIR}/dfe_UKESM1-0-LL_hist_1950-2014_0-200.nc

rm ${CLEAN_DIR}/dfe_UKESM1-0-LL_hist_1950-2014_1deg.nc
