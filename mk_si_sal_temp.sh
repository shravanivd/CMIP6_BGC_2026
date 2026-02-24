#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"

#processing si for CMCC-ESM2, IPSL-CM6A-LR, IPSL-CM6A-LR-INCA, NorESM2-MM
#processing sal and temp for NorESM2-LM

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/si/raw/CMCC-ESM2/si_Omon_CMCC-ESM2_historical*.nc $ipath/si/clean/si_CMCC-ESM2_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/si/clean/si_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/si/clean/si_CMCC-ESM2_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/26 $ipath/si/clean/si_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/si/clean/si_CMCC-ESM2_hist_1950-2014_0-300.nc
rm $ipath/si/clean/si_CMCC-ESM2_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/si/raw/IPSL-CM6A-LR/si_Omon_IPSL-CM6A-LR_historical*.nc $ipath/si/clean/si_IPSL-CM6A-LR_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/si/clean/si_IPSL-CM6A-LR_hist_1950-2014_1deg.nc $ipath/si/clean/si_IPSL-CM6A-LR_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/32 $ipath/si/clean/si_IPSL-CM6A-LR_hist_1950-2014_1deg.nc $ipath/si/clean/si_IPSL-CM6A-LR_hist_1950-2014_0-300.nc
rm $ipath/si/clean/si_IPSL-CM6A-LR_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/si/raw/IPSL-CM6A-LR-INCA/si_Omon_IPSL-CM6A-LR-INCA_historical*.nc $ipath/si/clean/si_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/si/clean/si_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg.nc $ipath/si/clean/si_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/32 $ipath/si/clean/si_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg.nc $ipath/si/clean/si_IPSL-CM6A-LR-INCA_hist_1950-2014_0-300.nc
rm $ipath/si/clean/si_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/si/raw/IPSL-CM6A-LR-INCA/si_Omon_IPSL-CM6A-LR-INCA_historical*.nc $ipath/si/clean/si_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/si/clean/si_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg.nc $ipath/si/clean/si_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/32 $ipath/si/clean/si_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg.nc $ipath/si/clean/si_IPSL-CM6A-LR-INCA_hist_1950-2014_0-300.nc
rm $ipath/si/clean/si_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg.nc

#$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/si/raw/NorESM2-MM/si_Omon_NorESM2-MM_historical*.nc $ipath/si/clean/si_NorESM2-MM_hist_1950-2014_1deg.nc
#$CDO -sellevidx,1 $ipath/si/clean/si_NorESM2-MM_hist_1950-2014_1deg.nc $ipath/si/clean/si_NorESM2-MM_hist_1950-2014_1deg_surf.nc
#$CDO -sellevidx,1/ $ipath/si/clean/si_NorESM2-MM_hist_1950-2014_1deg.nc $ipath/si/clean/si_NorESM2-MM_hist_1950-2014_0-300.nc
#rm $ipath/si/clean/si_NorESM2-MM_hist_1950-2014_1deg.nc

#temp and sal
#$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/thetao/raw/NorESM2-LM/thetao_Omon_NorESM2-LM_historical*.nc $ipath/thetao/clean/thetao_NorESM2-LM_hist_1950-2014_1deg.nc
#$CDO -sellevidx,1 $ipath/thetao/clean/thetao_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_NorESM2-LM_hist_1950-2014_1deg_surf.nc
#$CDO -sellevidx,1/ $ipath/thetao/clean/thetao_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_NorESM2-LM_hist_1950-2014_0-300.nc
#rm $ipath/thetao/clean/thetao_NorESM2-LM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/sal/raw/NorESM2-LM/so_Omon_NorESM2-LM_historical*.nc $ipath/sal/clean/so_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/sal/clean/so_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/sal/clean/so_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/ $ipath/sal/clean/so_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/sal/clean/so_NorESM2-LM_hist_1950-2014_0-300.nc
rm $ipath/sal/clean/so_NorESM2-LM_hist_1950-2014_1deg.nc
