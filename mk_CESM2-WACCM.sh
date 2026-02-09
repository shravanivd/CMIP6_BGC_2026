#!/bin/bash
set -xe

#RAW_DIR="../../raw/o2/UKESM1-0-LL"
#CLEAN_DIR="../../clean/o2/UKESM1-0-LL"

CDO="cdo -O -P 8 -f nc"

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/Nitrate/CESM2-WACCM/no3_Omon_CESM2-WACCM_historical*.nc ../../clean/Nitrate/no3_CESM2-WACCM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/Nitrate/no3_CESM2-WACCM_hist_1950-2014_1deg.nc ../../clean/Nitrate/no3_CESM2-WACCM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/Nitrate/no3_CESM2-WACCM_hist_1950-2014_1deg.nc ../../clean/Nitrate/no3_CESM2-WACCM_hist_1950-2014_0-200.nc
rm ../../clean/Nitrate/no3_CESM2-WACCM_hist_1950-2014_1deg.nc
