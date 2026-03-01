#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"

#chl clean file alread present

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/thetao/raw/CMCC-ESM2/thetao_Omon_CMCC-ESM2_historical*.nc $ipath/thetao/clean/thetao_CMCC-ESM2_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/thetao/clean/thetao_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_CMCC-ESM2_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/thetao/clean/thetao_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_CMCC-ESM2_hist_1950-2014_0-200.nc
rm $ipath/thetao/clean/thetao_CMCC-ESM2_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/sal/raw/CMCC-ESM2/so_Omon_CMCC-ESM2_historical*.nc $ipath/sal/clean/so_CMCC-ESM2_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/sal/clean/so_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/sal/clean/so_CMCC-ESM2_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/sal/clean/so_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/sal/clean/so_CMCC-ESM2_hist_1950-2014_0-200.nc
rm $ipath/sal/clean/so_CMCC-ESM2_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/mlotst/raw/CMCC-ESM2/mlotst_Omon_CMCC-ESM2_historical*.nc $ipath/mlotst/clean/mlotst_CMCC-ESM2_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/mlotst/clean/mlotst_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/mlotst/clean/mlotst_CMCC-ESM2_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/mlotst/clean/mlotst_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/mlotst/clean/mlotst_CMCC-ESM2_hist_1950-2014_0-200.nc
rm $ipath/mlotst/clean/mlotst_CMCC-ESM2_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/spco2/raw/CMCC-ESM2/spco2_Omon_CMCC-ESM2_historical*.nc $ipath/spco2/clean/spco2_CMCC-ESM2_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/spco2/clean/spco2_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_CMCC-ESM2_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/spco2/clean/spco2_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_CMCC-ESM2_hist_1950-2014_0-200.nc
rm $ipath/spco2/clean/spco2_CMCC-ESM2_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Nitrate/raw/CMCC-ESM2/no3_Omon_CMCC-ESM2_historical*.nc $ipath/Nitrate/clean/no3_CMCC-ESM2_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Nitrate/clean/no3_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_CMCC-ESM2_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Nitrate/clean/no3_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_CMCC-ESM2_hist_1950-2014_0-200.nc
rm $ipath/Nitrate/clean/no3_CMCC-ESM2_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Phosphate/raw/CMCC-ESM2/po4_Omon_CMCC-ESM2_historical*.nc $ipath/Phosphate/clean/po4_CMCC-ESM2_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Phosphate/clean/po4_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4_CMCC-ESM2_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Phosphate/clean/po4_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4_CMCC-ESM2_hist_1950-2014_0-200.nc
rm $ipath/Phosphate/clean/po4_CMCC-ESM2_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Si/raw/CMCC-ESM2/si_Omon_CMCC-ESM2_historical*.nc $ipath/Si/clean/si_CMCC-ESM2_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Si/clean/si_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/Si/clean/si_CMCC-ESM2_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Si/clean/si_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/Si/clean/si_CMCC-ESM2_hist_1950-2014_0-200.nc
rm $ipath/Si/clean/si_CMCC-ESM2_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Fe/raw/CMCC-ESM2/dfe_Omon_CMCC-ESM2_historical*.nc $ipath/Fe/clean/dfe_CMCC-ESM2_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Fe/clean/dfe_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfe_CMCC-ESM2_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Fe/clean/dfe_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfe_CMCC-ESM2_hist_1950-2014_0-200.nc
rm $ipath/Fe/clean/dfe_CMCC-ESM2_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/DO/raw/CMCC-ESM2/o2_Omon_CMCC-ESM2_historical*.nc $ipath/DO/clean/o2_CMCC-ESM2_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/DO/clean/o2_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/DO/clean/o2_CMCC-ESM2_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/DO/clean/o2_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/DO/clean/o2_CMCC-ESM2_hist_1950-2014_0-200.nc
rm $ipath/DO/clean/o2_CMCC-ESM2_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/pH/raw/CMCC-ESM2/ph_Omon_CMCC-ESM2_historical*.nc $ipath/pH/clean/ph_CMCC-ESM2_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/pH/clean/ph_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/pH/clean/ph_CMCC-ESM2_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/pH/clean/ph_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/pH/clean/ph_CMCC-ESM2_hist_1950-2014_0-200.nc
rm $ipath/pH/clean/ph_CMCC-ESM2_hist_1950-2014_1deg.nc
