#!/bin/bash
set -xe

#RAW_DIR="../../raw/chl/CNRM-ESM2-1"
#CLEAN_DIR="../../clean/chl/"

CDO="cdo -O -P 8 -f nc"

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/chl/CNRM-ESM2-1/chl_Omon_CNRM-ESM2-1_historical*.nc ../../clean/chl/chl_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/chl/chl_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/chl/chl_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/chl/chl_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/chl/chl_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm ../../clean/chl/chl_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/thetao/CNRM-ESM2-1/thetao_Omon_CNRM-ESM2-1_historical*.nc ../../clean/thetao/thetao_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/thetao/thetao_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/thetao/thetao_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/thetao/thetao_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/thetao/thetao_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm ../../clean/thetao/thetao_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/so/CNRM-ESM2-1/so_Omon_CNRM-ESM2-1_historical*.nc ../../clean/so/so_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/so/so_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/so/so_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/so/so_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/so/so_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm ../../clean/so/so_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/mlotst/CNRM-ESM2-1/mlotst_Omon_CNRM-ESM2-1_historical*.nc ../../clean/mlotst/mlotst_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/mlotst/mlotst_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/mlotst/mlotst_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/mlotst/mlotst_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/mlotst/mlotst_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm ../../clean/mlotst/mlotst_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/spco2/CNRM-ESM2-1/spco2_Omon_CNRM-ESM2-1_historical*.nc ../../clean/spco2/spco2_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/spco2/spco2_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/spco2/spco2_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/spco2/spco2_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/spco2/spco2_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm ../../clean/spco2/spco2_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/Nitrate/CNRM-ESM2-1/no3_Omon_CNRM-ESM2-1_historical*.nc ../../clean/Nitrate/no3_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/Nitrate/no3_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/Nitrate/no3_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/Nitrate/no3_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/Nitrate/no3_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm ../../clean/Nitrate/no3_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/Phosphate/CNRM-ESM2-1/po4_Omon_CNRM-ESM2-1_historical*.nc ../../clean/Phosphate/po4_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/Phosphate/po4_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/Phosphate/po4_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/Phosphate/po4_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/Phosphate/po4_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm ../../clean/Phosphate/po4_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/si/CNRM-ESM2-1/si_Omon_CNRM-ESM2-1_historical*.nc ../../clean/si/si_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/si/si_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/si/si_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/si/si_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/si/si_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm ../../clean/si/si_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/dfe/CNRM-ESM2-1/dfe_Omon_CNRM-ESM2-1_historical*.nc ../../clean/dfe/dfe_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/dfe/dfe_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/dfe/dfe_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/dfe/dfe_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/dfe/dfe_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm ../../clean/dfe/dfe_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/DO/CNRM-ESM2-1/o2_Omon_CNRM-ESM2-1_historical*.nc ../../clean/DO/o2_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/DO/o2_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/DO/o2_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/DO/o2_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/DO/o2_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm ../../clean/DO/o2_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime ../../raw/pH/CNRM-ESM2-1/ph_Omon_CNRM-ESM2-1_historical*.nc ../../clean/pH/ph_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 ../../clean/pH/ph_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/pH/ph_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 ../../clean/pH/ph_CNRM-ESM2-1_hist_1950-2014_1deg.nc ../../clean/pH/ph_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm ../../clean/pH/ph_CNRM-ESM2-1_hist_1950-2014_1deg.nc
