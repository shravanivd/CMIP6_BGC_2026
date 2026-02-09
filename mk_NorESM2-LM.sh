#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/NorESM2-LM/chl_Omon_NorESM2-LM_historical*.nc $ipath/chl/clean/chl_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/chl/clean/chl_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_NorESM2-LM_hist_1950-2014_0-200.nc
rm $ipath/chl/clean/chl_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/thetao/raw/NorESM2-LM/thetao_Omon_NorESM2-LM_historical*.nc $ipath/thetao/clean/thetao_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/thetao/clean/thetao_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/thetao/clean/thetao_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_NorESM2-LM_hist_1950-2014_0-200.nc
rm $ipath/thetao/clean/thetao_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/sal/raw/NorESM2-LM/so_Omon_NorESM2-LM_historical*.nc $ipath/sal/clean/so_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/sal/clean/so_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/sal/clean/so_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/sal/clean/so_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/sal/clean/so_NorESM2-LM_hist_1950-2014_0-200.nc
rm $ipath/sal/clean/so_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/spco2/raw/NorESM2-LM/spco2nat_Omon_NorESM2-LM_historical*.nc $ipath/spco2/clean/spco2nat_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/spco2/clean/spco2nat_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2nat_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/spco2/clean/spco2nat_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2nat_NorESM2-LM_hist_1950-2014_0-200.nc
rm $ipath/spco2/clean/spco2nat_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Nitrate/raw/NorESM2-LM/no3os_Omon_NorESM2-LM_historical*.nc $ipath/Nitrate/clean/no3os_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Nitrate/clean/no3os_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3os_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Nitrate/clean/no3os_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3os_NorESM2-LM_hist_1950-2014_0-200.nc
rm $ipath/Nitrate/clean/no3os_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Phosphate/raw/NorESM2-LM/po4os_Omon_NorESM2-LM_historical*.nc $ipath/Phosphate/clean/po4os_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Phosphate/clean/po4os_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4os_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Phosphate/clean/po4os_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4os_NorESM2-LM_hist_1950-2014_0-200.nc
rm $ipath/Phosphate/clean/po4os_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Si/raw/NorESM2-LM/sios_Omon_NorESM2-LM_historical*.nc $ipath/Si/clean/sios_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Si/clean/sios_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/Si/clean/sios_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Si/clean/sios_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/Si/clean/sios_NorESM2-LM_hist_1950-2014_0-200.nc
rm $ipath/Si/clean/sios_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Fe/raw/NorESM2-LM/dfeos_Omon_NorESM2-LM_historical*.nc $ipath/Fe/clean/dfeos_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Fe/clean/dfeos_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfeos_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Fe/clean/dfeos_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfeos_NorESM2-LM_hist_1950-2014_0-200.nc
rm $ipath/Fe/clean/dfeos_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/DO/raw/NorESM2-LM/o2os_Omon_NorESM2-LM_historical*.nc $ipath/DO/clean/o2os_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/DO/clean/o2os_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/DO/clean/o2os_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/DO/clean/o2os_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/DO/clean/o2os_NorESM2-LM_hist_1950-2014_0-200.nc
rm $ipath/DO/clean/o2os_NorESM2-LM_hist_1950-2014_1deg.nc


$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/pH/raw/NorESM2-LM/ph_Omon_NorESM2-LM_historical*.nc $ipath/pH/clean/ph_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/pH/clean/ph_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/pH/clean/ph_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/pH/clean/ph_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/pH/clean/ph_NorESM2-LM_hist_1950-2014_0-200.nc
rm $ipath/pH/clean/ph_NorESM2-LM_hist_1950-2014_1deg.nc
