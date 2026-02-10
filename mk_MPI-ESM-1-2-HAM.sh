#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"

#chl is already present as clean

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/thetao/raw/MPI-ESM-1-2-HAM/thetao_Omon_MPI-ESM-1-2-HAM_historical*.nc $ipath/thetao/clean/thetao_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/thetao/clean/thetao_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/thetao/clean/thetao_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_MPI-ESM-1-2-HAM_hist_1950-2014_0-200.nc
rm $ipath/thetao/clean/thetao_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/sal/raw/MPI-ESM-1-2-HAM/so_Omon_MPI-ESM-1-2-HAM_historical*.nc $ipath/sal/clean/so_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/sal/clean/so_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/sal/clean/so_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/sal/clean/so_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/sal/clean/so_MPI-ESM-1-2-HAM_hist_1950-2014_0-200.nc
rm $ipath/sal/clean/so_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/mlotst/raw/MPI-ESM-1-2-HAM/mlotst_Omon_MPI-ESM-1-2-HAM_historical*.nc $ipath/mlotst/clean/mlotst_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/mlotst/clean/mlotst_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/mlotst/clean/mlotst_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/mlotst/clean/mlotst_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/mlotst/clean/mlotst_MPI-ESM-1-2-HAM_hist_1950-2014_0-200.nc
rm $ipath/mlotst/clean/mlotst_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/spco2/raw/MPI-ESM-1-2-HAM/spco2_Omon_MPI-ESM-1-2-HAM_historical*.nc $ipath/spco2/clean/spco2_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/spco2/clean/spco2_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/spco2/clean/spco2_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_MPI-ESM-1-2-HAM_hist_1950-2014_0-200.nc
rm $ipath/spco2/clean/spco2_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Nitrate/raw/MPI-ESM-1-2-HAM/no3_Omon_MPI-ESM-1-2-HAM_historical*.nc $ipath/Nitrate/clean/no3_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Nitrate/clean/no3_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Nitrate/clean/no3_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_MPI-ESM-1-2-HAM_hist_1950-2014_0-200.nc
rm $ipath/Nitrate/clean/no3_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Phosphate/raw/MPI-ESM-1-2-HAM/po4_Omon_MPI-ESM-1-2-HAM_historical*.nc $ipath/Phosphate/clean/po4_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Phosphate/clean/po4_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Phosphate/clean/po4_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4_MPI-ESM-1-2-HAM_hist_1950-2014_0-200.nc
rm $ipath/Phosphate/clean/po4_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Si/raw/MPI-ESM-1-2-HAM/si_Omon_MPI-ESM-1-2-HAM_historical*.nc $ipath/Si/clean/si_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Si/clean/si_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/Si/clean/si_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Si/clean/si_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/Si/clean/si_MPI-ESM-1-2-HAM_hist_1950-2014_0-200.nc
rm $ipath/Si/clean/si_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Fe/raw/MPI-ESM-1-2-HAM/dfe_Omon_MPI-ESM-1-2-HAM_historical*.nc $ipath/Fe/clean/dfe_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Fe/clean/dfe_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfe_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Fe/clean/dfe_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfe_MPI-ESM-1-2-HAM_hist_1950-2014_0-200.nc
rm $ipath/Fe/clean/dfe_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/DO/raw/MPI-ESM-1-2-HAM/o2_Omon_MPI-ESM-1-2-HAM_historical*.nc $ipath/DO/clean/o2_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/DO/clean/o2_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/DO/clean/o2_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/DO/clean/o2_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/DO/clean/o2_MPI-ESM-1-2-HAM_hist_1950-2014_0-200.nc
rm $ipath/DO/clean/o2_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/pH/raw/MPI-ESM-1-2-HAM/ph_Omon_MPI-ESM-1-2-HAM_historical*.nc $ipath/pH/clean/ph_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/pH/clean/ph_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/pH/clean/ph_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/pH/clean/ph_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/pH/clean/ph_MPI-ESM-1-2-HAM_hist_1950-2014_0-200.nc
rm $ipath/pH/clean/ph_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc
