#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/CNRM-ESM2-1/chl_Omon_CNRM-ESM2-1_historical*.nc $ipath/chl/clean/chl_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/chl/clean/chl_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm $ipath/chl/clean/chl_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/thetao/raw/CNRM-ESM2-1/thetao_Omon_CNRM-ESM2-1_historical*.nc $ipath/thetao/clean/thetao_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/thetao/clean/thetao_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/thetao/clean/thetao_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm $ipath/thetao/clean/thetao_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/sal/raw/CNRM-ESM2-1/so_Omon_CNRM-ESM2-1_historical*.nc $ipath/sal/clean/so_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/sal/clean/so_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/sal/clean/so_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/sal/clean/so_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/sal/clean/so_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm $ipath/sal/clean/so_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/mlotst/raw/CNRM-ESM2-1/mlotst_Omon_CNRM-ESM2-1_historical*.nc $ipath/mlotst/clean/mlotst_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/mlotst/clean/mlotst_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/mlotst/clean/mlotst_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/mlotst/clean/mlotst_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/mlotst/clean/mlotst_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm $ipath/mlotst/clean/mlotst_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/spco2/raw/CNRM-ESM2-1/spco2_Omon_CNRM-ESM2-1_historical*.nc $ipath/spco2/clean/spco2_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/spco2/clean/spco2_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/spco2/clean/spco2_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm $ipath/spco2/clean/spco2_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Nitrate/raw/CNRM-ESM2-1/no3_Omon_CNRM-ESM2-1_historical*.nc $ipath/Nitrate/clean/no3_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Nitrate/clean/no3_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Nitrate/clean/no3_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm $ipath/Nitrate/clean/no3_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Phosphate/raw/CNRM-ESM2-1/po4_Omon_CNRM-ESM2-1_historical*.nc $ipath/Phosphate/clean/po4_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Phosphate/clean/po4_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Phosphate/clean/po4_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm $ipath/Phosphate/clean/po4_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Si/raw/CNRM-ESM2-1/si_Omon_CNRM-ESM2-1_historical*.nc $ipath/Si/clean/si_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Si/clean/si_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/Si/clean/si_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Si/clean/si_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/Si/clean/si_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm $ipath/Si/clean/si_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Fe/raw/CNRM-ESM2-1/dfe_Omon_CNRM-ESM2-1_historical*.nc $ipath/Fe/clean/dfe_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Fe/clean/dfe_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfe_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Fe/clean/dfe_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfe_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm $ipath/Fe/clean/dfe_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/DO/raw/CNRM-ESM2-1/o2_Omon_CNRM-ESM2-1_historical*.nc $ipath/DO/clean/o2_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/DO/clean/o2_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/DO/clean/o2_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/DO/clean/o2_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/DO/clean/o2_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm $ipath/DO/clean/o2_CNRM-ESM2-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/pH/raw/CNRM-ESM2-1/ph_Omon_CNRM-ESM2-1_historical*.nc $ipath/pH/clean/ph_CNRM-ESM2-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/pH/clean/ph_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/pH/clean/ph_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/pH/clean/ph_CNRM-ESM2-1_hist_1950-2014_1deg.nc $ipath/pH/clean/ph_CNRM-ESM2-1_hist_1950-2014_0-200.nc
rm $ipath/pH/clean/ph_CNRM-ESM2-1_hist_1950-2014_1deg.nc
