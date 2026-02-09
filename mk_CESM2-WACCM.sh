#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Nitrate/raw/CESM2-WACCM/no3_Omon_CESM2-WACCM_historical*.nc ipath/Nitrate/clean/no3_CESM2-WACCM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ipath/Nitrate/clean/no3_CESM2-WACCM_hist_1950-2014_1deg.nc ipath/Nitrate/clean/no3_CESM2-WACCM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ipath/Nitrate/clean/no3_CESM2-WACCM_hist_1950-2014_1deg.nc ipath/Nitrate/clean/no3_CESM2-WACCM_hist_1950-2014_0-200.nc
rm ipath/Nitrate/clean/no3_CESM2-WACCM_hist_1950-2014_1deg.nc
