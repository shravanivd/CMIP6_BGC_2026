#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"

#chl clean files already present

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/thetao/raw/CESM2-WACCM/thetao_Omon_CESM2-WACCM_historical*.nc $ipath/thetao/clean/thetao_CESM2-WACCM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/thetao/clean/thetao_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_CESM2-WACCM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/thetao/clean/thetao_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_CESM2-WACCM_hist_1950-2014_0-200.nc
rm $ipath/thetao/clean/thetao_CESM2-WACCM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/sal/raw/CESM2-WACCM/so_Omon_CESM2-WACCM_historical*.nc $ipath/sal/clean/so_CESM2-WACCM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/sal/clean/so_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/sal/clean/so_CESM2-WACCM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/sal/clean/so_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/sal/clean/so_CESM2-WACCM_hist_1950-2014_0-200.nc
rm $ipath/sal/clean/so_CESM2-WACCM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/mlotst/raw/CESM2-WACCM/mlotst_Omon_CESM2-WACCM_historical*.nc $ipath/mlotst/clean/mlotst_CESM2-WACCM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/mlotst/clean/mlotst_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/mlotst/clean/mlotst_CESM2-WACCM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/mlotst/clean/mlotst_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/mlotst/clean/mlotst_CESM2-WACCM_hist_1950-2014_0-200.nc
rm $ipath/mlotst/clean/mlotst_CESM2-WACCM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/spco2/raw/CESM2-WACCM/spco2_Omon_CESM2-WACCM_historical*.nc $ipath/spco2/clean/spco2_CESM2-WACCM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/spco2/clean/spco2_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_CESM2-WACCM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/spco2/clean/spco2_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_CESM2-WACCM_hist_1950-2014_0-200.nc
rm $ipath/spco2/clean/spco2_CESM2-WACCM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Nitrate/raw/CESM2-WACCM/no3_Omon_CESM2-WACCM_historical*.nc $ipath/Nitrate/clean/no3_CESM2-WACCM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Nitrate/clean/no3_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_CESM2-WACCM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Nitrate/clean/no3_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_CESM2-WACCM_hist_1950-2014_0-200.nc
rm $ipath/Nitrate/clean/no3_CESM2-WACCM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Phosphate/raw/CESM2-WACCM/po4_Omon_CESM2-WACCM_historical*.nc $ipath/Phosphate/clean/po4_CESM2-WACCM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Phosphate/clean/po4_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4_CESM2-WACCM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Phosphate/clean/po4_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4_CESM2-WACCM_hist_1950-2014_0-200.nc
rm $ipath/Phosphate/clean/po4_CESM2-WACCM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Si/raw/CESM2-WACCM/si_Omon_CESM2-WACCM_historical*.nc $ipath/Si/clean/si_CESM2-WACCM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Si/clean/si_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/Si/clean/si_CESM2-WACCM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Si/clean/si_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/Si/clean/si_CESM2-WACCM_hist_1950-2014_0-200.nc
rm $ipath/Si/clean/si_CESM2-WACCM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Fe/raw/CESM2-WACCM/dfe_Omon_CESM2-WACCM_historical*.nc $ipath/Fe/clean/dfe_CESM2-WACCM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Fe/clean/dfe_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfe_CESM2-WACCM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Fe/clean/dfe_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfe_CESM2-WACCM_hist_1950-2014_0-200.nc
rm $ipath/Fe/clean/dfe_CESM2-WACCM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/pH/raw/CESM2-WACCM/ph_Omon_CESM2-WACCM_historical*.nc $ipath/pH/clean/ph_CESM2-WACCM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/pH/clean/ph_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/pH/clean/ph_CESM2-WACCM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/pH/clean/ph_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/pH/clean/ph_CESM2-WACCM_hist_1950-2014_0-200.nc
rm $ipath/pH/clean/ph_CESM2-WACCM_hist_1950-2014_1deg.nc
