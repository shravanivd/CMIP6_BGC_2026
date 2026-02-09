#!/bin/bash
set -xe

#RAW_DIR="../../raw/dfe/UKESM1-0-LL"
#CLEAN_DIR="../../clean/dfe/UKESM1-0-LL"

CDO="cdo -O -P 8 -f nc"

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/chl/MIROC-ES2L/chl_Omon_MIROC-ES2L_historical*.nc ../../clean/chl/chl_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/chl/chl_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/chl/chl_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/chl/chl_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/chl/chl_MIROC-ES2L_hist_1950-2014_0-200.nc
rm ../../clean/chl/chl_MIROC-ES2L_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/thetao/MIROC-ES2L/thetao_Omon_MIROC-ES2L_historical*.nc ../../clean/thetao/thetao_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/thetao/thetao_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/thetao/thetao_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/thetao/thetao_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/thetao/thetao_MIROC-ES2L_hist_1950-2014_0-200.nc
rm ../../clean/thetao/thetao_MIROC-ES2L_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/so/MIROC-ES2L/so_Omon_MIROC-ES2L_historical*.nc ../../clean/so/so_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/so/so_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/so/so_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/so/so_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/so/so_MIROC-ES2L_hist_1950-2014_0-200.nc
rm ../../clean/so/so_MIROC-ES2L_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/spco2/MIROC-ES2L/spco2_Omon_MIROC-ES2L_historical*.nc ../../clean/spco2/spco2_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/spco2/spco2_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/spco2/spco2_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/spco2/spco2_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/spco2/spco2_MIROC-ES2L_hist_1950-2014_0-200.nc
rm ../../clean/spco2/spco2_MIROC-ES2L_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/Nitrate/MIROC-ES2L/no3_Omon_MIROC-ES2L_historical*.nc ../../clean/Nitrate/no3_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/Nitrate/no3_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/Nitrate/no3_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/Nitrate/no3_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/Nitrate/no3_MIROC-ES2L_hist_1950-2014_0-200.nc
rm ../../clean/Nitrate/no3_MIROC-ES2L_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/Phosphate/MIROC-ES2L/po4_Omon_MIROC-ES2L_historical*.nc ../../clean/Phosphate/po4_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/Phosphate/po4_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/Phosphate/po4_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/Phosphate/po4_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/Phosphate/po4_MIROC-ES2L_hist_1950-2014_0-200.nc
rm ../../clean/Phosphate/po4_MIROC-ES2L_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/dfe/MIROC-ES2L/dfe_Omon_MIROC-ES2L_historical*.nc ../../clean/dfe/dfe_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/dfe/dfe_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/dfe/dfe_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/dfe/dfe_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/dfe/dfe_MIROC-ES2L_hist_1950-2014_0-200.nc
rm ../../clean/dfe/dfe_MIROC-ES2L_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/DO/MIROC-ES2L/o2_Omon_MIROC-ES2L_historical*.nc ../../clean/DO/o2_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/DO/o2_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/DO/o2_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/DO/o2_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/DO/o2_MIROC-ES2L_hist_1950-2014_0-200.nc
rm ../../clean/DO/o2_MIROC-ES2L_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/pH/MIROC-ES2L/ph_Omon_MIROC-ES2L_historical*.nc ../../clean/pH/ph_MIROC-ES2L_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/pH/ph_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/pH/ph_MIROC-ES2L_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/pH/ph_MIROC-ES2L_hist_1950-2014_1deg.nc ../../clean/pH/ph_MIROC-ES2L_hist_1950-2014_0-200.nc
rm ../../clean/pH/ph_MIROC-ES2L_hist_1950-2014_1deg.nc

