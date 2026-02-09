#!/bin/bash
set -xe

#RAW_DIR="../../raw/chl/UKESM1-0-LL"
#CLEAN_DIR="../../clean/chl/UKESM1-0-LL"

CDO="cdo -O -P 8 -f nc"

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/chl/UKESM1-0-LL/chl_Omon_UKESM1-0-LL_historical*.nc ../../clean/chl/chl_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/chl/chl_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/chl/chl_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/chl/chl_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/chl/chl_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm ../../clean/chl/chl_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/thetao/UKESM1-0-LL/thetao_Omon_UKESM1-0-LL_historical*.nc ../../clean/thetao/thetao_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/thetao/thetao_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/thetao/thetao_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/thetao/thetao_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/thetao/thetao_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm ../../clean/thetao/thetao_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/so/UKESM1-0-LL/so_Omon_UKESM1-0-LL_historical*.nc ../../clean/so/so_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/so/so_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/so/so_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/so/so_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/so/so_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm ../../clean/so/so_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/mlotst/UKESM1-0-LL/mlotst_Omon_UKESM1-0-LL_historical*.nc ../../clean/mlotst/mlotst_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/mlotst/mlotst_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/mlotst/mlotst_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/mlotst/mlotst_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/mlotst/mlotst_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm ../../clean/mlotst/mlotst_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/spco2/UKESM1-0-LL/spco2_Omon_UKESM1-0-LL_historical*.nc ../../clean/spco2/spco2_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/spco2/spco2_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/spco2/spco2_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/spco2/spco2_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/spco2/spco2_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm ../../clean/spco2/spco2_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/Nitrate/UKESM1-0-LL/no3_Omon_UKESM1-0-LL_historical*.nc ../../clean/Nitrate/no3_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/Nitrate/no3_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/Nitrate/no3_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/Nitrate/no3_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/Nitrate/no3_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm ../../clean/Nitrate/no3_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/Phosphate/UKESM1-0-LL/po4_Omon_UKESM1-0-LL_historical*.nc ../../clean/Phosphate/po4_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/Phosphate/po4_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/Phosphate/po4_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/Phosphate/po4_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/Phosphate/po4_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm ../../clean/Phosphate/po4_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/si/UKESM1-0-LL/si_Omon_UKESM1-0-LL_historical*.nc ../../clean/si/si_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/si/si_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/si/si_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/si/si_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/si/si_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm ../../clean/si/si_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/dfe/UKESM1-0-LL/dfe_Omon_UKESM1-0-LL_historical*.nc ../../clean/dfe/dfe_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/dfe/dfe_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/dfe/dfe_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/dfe/dfe_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/dfe/dfe_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm ../../clean/dfe/dfe_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/DO/UKESM1-0-LL/o2_Omon_UKESM1-0-LL_historical*.nc ../../clean/DO/o2_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/DO/o2_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/DO/o2_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/DO/o2_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/DO/o2_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm ../../clean/DO/o2_UKESM1-0-LL_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/pH/UKESM1-0-LL/ph_Omon_UKESM1-0-LL_historical*.nc ../../clean/pH/ph_UKESM1-0-LL_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/pH/ph_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/pH/ph_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/pH/ph_UKESM1-0-LL_hist_1950-2014_1deg.nc ../../clean/pH/ph_UKESM1-0-LL_hist_1950-2014_0-200.nc
rm ../../clean/pH/ph_UKESM1-0-LL_hist_1950-2014_1deg.nc

