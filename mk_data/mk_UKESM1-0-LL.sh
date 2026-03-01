#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/UKESM1-0-LL/chl_Omon_UKESM1-0-LL_historical*.nc $ipath/chl/clean/chl_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/chl/clean/chl_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm $ipath/chl/clean/chl_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/thetao/raw/UKESM1-0-LL/thetao_Omon_UKESM1-0-LL_historical*.nc $ipath/thetao/clean/thetao_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/thetao/clean/thetao_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/thetao/clean/thetao_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm $ipath/thetao/clean/thetao_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/sal/raw/UKESM1-0-LL/so_Omon_UKESM1-0-LL_historical*.nc $ipath/sal/clean/so_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/sal/clean/so_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/sal/clean/so_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/sal/clean/so_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/sal/clean/so_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm $ipath/sal/clean/so_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/mlotst/raw/UKESM1-0-LL/mlotst_Omon_UKESM1-0-LL_historical*.nc $ipath/mlotst/clean/mlotst_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/mlotst/clean/mlotst_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/mlotst/clean/mlotst_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/mlotst/clean/mlotst_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/mlotst/clean/mlotst_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm $ipath/mlotst/clean/mlotst_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/spco2/raw/UKESM1-0-LL/spco2_Omon_UKESM1-0-LL_historical*.nc $ipath/spco2/clean/spco2_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/spco2/clean/spco2_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/spco2/clean/spco2_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm $ipath/spco2/clean/spco2_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Nitrate/raw/UKESM1-0-LL/no3_Omon_UKESM1-0-LL_historical*.nc $ipath/Nitrate/clean/no3_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Nitrate/clean/no3_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Nitrate/clean/no3_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm $ipath/Nitrate/clean/no3_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Phosphate/raw/UKESM1-0-LL/po4_Omon_UKESM1-0-LL_historical*.nc $ipath/Phosphate/clean/po4_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Phosphate/clean/po4_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Phosphate/clean/po4_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm $ipath/Phosphate/clean/po4_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Si/raw/UKESM1-0-LL/si_Omon_UKESM1-0-LL_historical*.nc $ipath/Si/clean/si_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Si/clean/si_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/Si/clean/si_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Si/clean/si_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/Si/clean/si_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm $ipath/Si/clean/si_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Fe/raw/UKESM1-0-LL/dfe_Omon_UKESM1-0-LL_historical*.nc $ipath/Fe/clean/dfe_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Fe/clean/dfe_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfe_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Fe/clean/dfe_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfe_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm $ipath/Fe/clean/dfe_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/DO/raw/UKESM1-0-LL/o2_Omon_UKESM1-0-LL_historical*.nc $ipath/DO/clean/o2_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/DO/clean/o2_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/DO/clean/o2_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/DO/clean/o2_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/DO/clean/o2_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm $ipath/DO/clean/o2_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/pH/raw/UKESM1-0-LL/ph_Omon_UKESM1-0-LL_historical*.nc $ipath/pH/clean/ph_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/pH/clean/ph_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/pH/clean/ph_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/pH/clean/ph_UKESM1-0-LL_hist_1950-2014_1deg.nc $ipath/pH/clean/ph_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm $ipath/pH/clean/ph_UKESM1-0-LL_hist_1950-2014_1deg.nc

