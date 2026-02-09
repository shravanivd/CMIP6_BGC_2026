#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/MIROC-ES2L/chl_Omon_MIROC-ES2L_historical*.nc $ipath/chl/clean/chl_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/chl/clean/chl_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_MIROC-ES2L_hist_1950-2014_0-200.nc
rm $ipath/chl/clean/chl_MIROC-ES2L_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/thetao/raw/MIROC-ES2L/thetao_Omon_MIROC-ES2L_historical*.nc $ipath/thetao/clean/thetao_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/thetao/clean/thetao_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/thetao/clean/thetao_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_MIROC-ES2L_hist_1950-2014_0-200.nc
rm $ipath/thetao/clean/thetao_MIROC-ES2L_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/sal/raw/MIROC-ES2L/so_Omon_MIROC-ES2L_historical*.nc $ipath/sal/clean/so_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/sal/clean/so_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/sal/clean/so_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/sal/clean/so_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/sal/clean/so_MIROC-ES2L_hist_1950-2014_0-200.nc
rm $ipath/sal/clean/so_MIROC-ES2L_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/spco2/raw/MIROC-ES2L/spco2_Omon_MIROC-ES2L_historical*.nc $ipath/spco2/clean/spco2_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/spco2/clean/spco2_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/spco2/clean/spco2_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_MIROC-ES2L_hist_1950-2014_0-200.nc
rm $ipath/spco2/clean/spco2_MIROC-ES2L_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Nitrate/raw/MIROC-ES2L/no3_Omon_MIROC-ES2L_historical*.nc $ipath/Nitrate/clean/no3_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Nitrate/clean/no3_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Nitrate/clean/no3_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_MIROC-ES2L_hist_1950-2014_0-200.nc
rm $ipath/Nitrate/clean/no3_MIROC-ES2L_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Phosphate/raw/MIROC-ES2L/po4_Omon_MIROC-ES2L_historical*.nc $ipath/Phosphate/clean/po4_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Phosphate/clean/po4_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Phosphate/clean/po4_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4_MIROC-ES2L_hist_1950-2014_0-200.nc
rm $ipath/Phosphate/clean/po4_MIROC-ES2L_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Fe/raw/MIROC-ES2L/dfe_Omon_MIROC-ES2L_historical*.nc $ipath/Fe/clean/dfe_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Fe/clean/dfe_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfe_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Fe/clean/dfe_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfe_MIROC-ES2L_hist_1950-2014_0-200.nc
rm $ipath/Fe/clean/dfe_MIROC-ES2L_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/DO/raw/MIROC-ES2L/o2_Omon_MIROC-ES2L_historical*.nc $ipath/DO/clean/o2_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/DO/clean/o2_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/DO/clean/o2_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/DO/clean/o2_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/DO/clean/o2_MIROC-ES2L_hist_1950-2014_0-200.nc
rm $ipath/DO/clean/o2_MIROC-ES2L_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/pH/raw/MIROC-ES2L/ph_Omon_MIROC-ES2L_historical*.nc $ipath/pH/clean/ph_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/pH/clean/ph_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/pH/clean/ph_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/pH/clean/ph_MIROC-ES2L_hist_1950-2014_1deg.nc $ipath/pH/clean/ph_MIROC-ES2L_hist_1950-2014_0-200.nc
rm $ipath/pH/clean/ph_MIROC-ES2L_hist_1950-2014_1deg.nc

