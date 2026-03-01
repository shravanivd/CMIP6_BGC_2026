#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"

#chl clean file already present

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/mlotst/raw/CanESM5-1/mlotst_Omon_CanESM5-1_historical*.nc $ipath/mlotst/clean/mlotst_CanESM5-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/mlotst/clean/mlotst_CanESM5-1_hist_1950-2014_1deg.nc $ipath/mlotst/clean/mlotst_CanESM5-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/mlotst/clean/mlotst_CanESM5-1_hist_1950-2014_1deg.nc $ipath/mlotst/clean/mlotst_CanESM5-1_hist_1950-2014_0-200.nc
rm $ipath/mlotst/clean/mlotst_CanESM5-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/spco2/raw/CanESM5-1/spco2_Omon_CanESM5-1_historical*.nc $ipath/spco2/clean/spco2_CanESM5-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/spco2/clean/spco2_CanESM5-1_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_CanESM5-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/spco2/clean/spco2_CanESM5-1_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_CanESM5-1_hist_1950-2014_0-200.nc
rm $ipath/spco2/clean/spco2_CanESM5-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Nitrate/raw/CanESM5-1/no3_Omon_CanESM5-1_historical*.nc $ipath/Nitrate/clean/no3_CanESM5-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Nitrate/clean/no3_CanESM5-1_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_CanESM5-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Nitrate/clean/no3_CanESM5-1_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_CanESM5-1_hist_1950-2014_0-200.nc
rm $ipath/Nitrate/clean/no3_CanESM5-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/DO/raw/CanESM5-1/o2_Omon_CanESM5-1_historical*.nc $ipath/DO/clean/o2_CanESM5-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/DO/clean/o2_CanESM5-1_hist_1950-2014_1deg.nc $ipath/DO/clean/o2_CanESM5-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/DO/clean/o2_CanESM5-1_hist_1950-2014_1deg.nc $ipath/DO/clean/o2_CanESM5-1_hist_1950-2014_0-200.nc
rm $ipath/DO/clean/o2_CanESM5-1_hist_1950-2014_1deg.nc

