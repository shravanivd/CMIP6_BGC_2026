#!/bin/bash
set -xe

#RAW_DIR="../../raw/no3/UKESM1-0-LL"
#CLEAN_DIR="../../clean/no3/UKESM1-0-LL"

CDO="cdo -O -P 8 -f nc"

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/dfe/ACCESS-ESM1-5/dfeos_Omon_ACCESS-ESM1-5_historical*.nc ../../clean/dfe/dfeos_ACCESS-ESM1-5_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/dfe/dfeos_ACCESS-ESM1-5_hist_1950-2014_1deg.nc ../../clean/dfe/dfeos_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/dfe/dfeos_ACCESS-ESM1-5_hist_1950-2014_1deg.nc ../../clean/dfe/dfeos_ACCESS-ESM1-5_hist_1950-2014_0-200.nc
rm ../../clean/dfe/dfeos_ACCESS-ESM1-5_hist_1950-2014_1deg.nc
