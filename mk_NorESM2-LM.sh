#!/bin/bash
set -xe

#RAW_DIR="../../raw/mlotst/UKESM1-0-LL"
#CLEAN_DIR="../../clean/mlotst/UKESM1-0-LL"

CDO="cdo -O -P 8 -f nc"

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/chl/NorESM2-LM/chl_Omon_NorESM2-LM_historical*.nc ../../clean/chl/chl_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/chl/chl_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/chl/chl_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/chl/chl_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/chl/chl_NorESM2-LM_hist_1950-2014_0-200.nc
rm ../../clean/chl/chl_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/thetao/NorESM2-LM/thetao_Omon_NorESM2-LM_historical*.nc ../../clean/thetao/thetao_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/thetao/thetao_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/thetao/thetao_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/thetao/thetao_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/thetao/thetao_NorESM2-LM_hist_1950-2014_0-200.nc
rm ../../clean/thetao/thetao_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/so/NorESM2-LM/so_Omon_NorESM2-LM_historical*.nc ../../clean/so/so_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/so/so_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/so/so_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/so/so_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/so/so_NorESM2-LM_hist_1950-2014_0-200.nc
rm ../../clean/so/so_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/spco2/NorESM2-LM/spco2nat_Omon_NorESM2-LM_historical*.nc ../../clean/spco2/spco2nat_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/spco2/spco2nat_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/spco2/spco2nat_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/spco2/spco2nat_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/spco2/spco2nat_NorESM2-LM_hist_1950-2014_0-200.nc
rm ../../clean/spco2/spco2nat_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/Nitrate/NorESM2-LM/no3os_Omon_NorESM2-LM_historical*.nc ../../clean/Nitrate/no3os_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/Nitrate/no3os_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/Nitrate/no3os_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/Nitrate/no3os_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/Nitrate/no3os_NorESM2-LM_hist_1950-2014_0-200.nc
rm ../../clean/Nitrate/no3os_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/Phosphate/NorESM2-LM/po4os_Omon_NorESM2-LM_historical*.nc ../../clean/Phosphate/po4os_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/Phosphate/po4os_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/Phosphate/po4os_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/Phosphate/po4os_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/Phosphate/po4os_NorESM2-LM_hist_1950-2014_0-200.nc
rm ../../clean/Phosphate/po4os_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/si/NorESM2-LM/sios_Omon_NorESM2-LM_historical*.nc ../../clean/si/sios_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/si/sios_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/si/sios_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/si/sios_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/si/sios_NorESM2-LM_hist_1950-2014_0-200.nc
rm ../../clean/si/sios_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/dfe/NorESM2-LM/dfeos_Omon_NorESM2-LM_historical*.nc ../../clean/dfe/dfeos_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/dfe/dfeos_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/dfe/dfeos_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/dfe/dfeos_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/dfe/dfeos_NorESM2-LM_hist_1950-2014_0-200.nc
rm ../../clean/dfe/dfeos_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/DO/NorESM2-LM/o2os_Omon_NorESM2-LM_historical*.nc ../../clean/DO/o2os_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/DO/o2os_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/DO/o2os_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/DO/o2os_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/DO/o2os_NorESM2-LM_hist_1950-2014_0-200.nc
rm ../../clean/DO/o2os_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/pH/NorESM2-LM/ph_Omon_NorESM2-LM_historical*.nc ../../clean/pH/ph_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/pH/ph_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/pH/ph_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/pH/ph_NorESM2-LM_hist_1950-2014_1deg.nc ../../clean/pH/ph_NorESM2-LM_hist_1950-2014_0-200.nc
rm ../../clean/pH/ph_NorESM2-LM_hist_1950-2014_1deg.nc
