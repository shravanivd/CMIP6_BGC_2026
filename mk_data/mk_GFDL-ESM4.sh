#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"

#chl clean file already present

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/thetao/raw/GFDL-ESM4/thetao_Omon_GFDL-ESM4_historical*.nc $ipath/thetao/clean/thetao_GFDL-ESM4_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/thetao/clean/thetao_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_GFDL-ESM4_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/thetao/clean/thetao_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_GFDL-ESM4_hist_1950-2014_0-200.nc
rm $ipath/thetao/clean/thetao_GFDL-ESM4_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/sal/raw/GFDL-ESM4/so_Omon_GFDL-ESM4_historical*.nc $ipath/sal/clean/so_GFDL-ESM4_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/sal/clean/so_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/sal/clean/so_GFDL-ESM4_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/sal/clean/so_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/sal/clean/so_GFDL-ESM4_hist_1950-2014_0-200.nc
rm $ipath/sal/clean/so_GFDL-ESM4_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/mlotst/raw/GFDL-ESM4/mlotst_Omon_GFDL-ESM4_historical*.nc $ipath/mlotst/clean/mlotst_GFDL-ESM4_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/mlotst/clean/mlotst_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/mlotst/clean/mlotst_GFDL-ESM4_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/mlotst/clean/mlotst_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/mlotst/clean/mlotst_GFDL-ESM4_hist_1950-2014_0-200.nc
rm $ipath/mlotst/clean/mlotst_GFDL-ESM4_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/spco2/raw/GFDL-ESM4/spco2_Omon_GFDL-ESM4_historical*.nc $ipath/spco2/clean/spco2_GFDL-ESM4_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/spco2/clean/spco2_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_GFDL-ESM4_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/spco2/clean/spco2_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_GFDL-ESM4_hist_1950-2014_0-200.nc
rm $ipath/spco2/clean/spco2_GFDL-ESM4_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Nitrate/raw/GFDL-ESM4/no3_Omon_GFDL-ESM4_historical*.nc $ipath/Nitrate/clean/no3_GFDL-ESM4_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Nitrate/clean/no3_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_GFDL-ESM4_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Nitrate/clean/no3_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_GFDL-ESM4_hist_1950-2014_0-200.nc
rm $ipath/Nitrate/clean/no3_GFDL-ESM4_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Phosphate/raw/GFDL-ESM4/po4_Omon_GFDL-ESM4_historical*.nc $ipath/Phosphate/clean/po4_GFDL-ESM4_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Phosphate/clean/po4_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4_GFDL-ESM4_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Phosphate/clean/po4_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4_GFDL-ESM4_hist_1950-2014_0-200.nc
rm $ipath/Phosphate/clean/po4_GFDL-ESM4_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Si/raw/GFDL-ESM4/si_Omon_GFDL-ESM4_historical*.nc $ipath/Si/clean/si_GFDL-ESM4_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Si/clean/si_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/Si/clean/si_GFDL-ESM4_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Si/clean/si_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/Si/clean/si_GFDL-ESM4_hist_1950-2014_0-200.nc
rm $ipath/Si/clean/si_GFDL-ESM4_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Fe/raw/GFDL-ESM4/dfe_Omon_GFDL-ESM4_historical*.nc $ipath/Fe/clean/dfe_GFDL-ESM4_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Fe/clean/dfe_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfe_GFDL-ESM4_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Fe/clean/dfe_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfe_GFDL-ESM4_hist_1950-2014_0-200.nc
rm $ipath/Fe/clean/dfe_GFDL-ESM4_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/DO/raw/GFDL-ESM4/o2_Omon_GFDL-ESM4_historical*.nc $ipath/DO/clean/o2_GFDL-ESM4_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/DO/clean/o2_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/DO/clean/o2_GFDL-ESM4_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/DO/clean/o2_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/DO/clean/o2_GFDL-ESM4_hist_1950-2014_0-200.nc
rm $ipath/DO/clean/o2_GFDL-ESM4_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/pH/raw/GFDL-ESM4/ph_Omon_GFDL-ESM4_historical*.nc $ipath/pH/clean/ph_GFDL-ESM4_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/pH/clean/ph_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/pH/clean/ph_GFDL-ESM4_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/pH/clean/ph_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/pH/clean/ph_GFDL-ESM4_hist_1950-2014_0-200.nc
rm $ipath/pH/clean/ph_GFDL-ESM4_hist_1950-2014_1deg.nc
