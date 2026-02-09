#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Fe/raw/ACCESS-ESM1-5/dfeos_Omon_ACCESS-ESM1-5_historical*.nc $ipath/Fe/clean/dfeos_ACCESS-ESM1-5_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Fe/clean/dfeos_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfeos_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Fe/clean/dfeos_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfeos_ACCESS-ESM1-5_hist_1950-2014_0-200.nc
rm $ipath/Fe/clean/dfeos_ACCESS-ESM1-5_hist_1950-2014_1deg.nc
