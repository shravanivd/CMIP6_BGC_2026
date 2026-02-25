#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"

# Processing chl for 18 models (except IITM-ESM) with two final files for ocean surface and 0-300m
# Rest 3 models (CNRM-ESM2-1, MIROC-ES2L, UKESM1-0-LL already clean files present for all variables

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/ACCESS-ESM1-5/chl_Omon_ACCESS-ESM1-5_historical*.nc $ipath/chl/clean/chl_ACCESS-ESM1-5_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_ACCESS-ESM1-5_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_ACCESS-ESM1-5_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/CanESM5/chl_Omon_CanESM5_historical*.nc $ipath/chl/clean/chl_CanESM5_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_CanESM5_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_CanESM5_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_CanESM5_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_CanESM5_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_CanESM5_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/CanESM5-1/chl_Omon_CanESM5-1_historical*.nc $ipath/chl/clean/chl_CanESM5-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_CanESM5-1_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_CanESM5-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_CanESM5-1_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_CanESM5-1_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_CanESM5-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/CESM2/chl_Omon_CESM2_historical*.nc $ipath/chl/clean/chl_CESM2_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_CESM2_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_CESM2_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_CESM2_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_CESM2_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_CESM2_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/CESM2-FV2/chl_Omon_CESM2-FV2_historical*.nc $ipath/chl/clean/chl_CESM2-FV2_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_CESM2-FV2_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_CESM2-FV2_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_CESM2-FV2_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_CESM2-FV2_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_CESM2-FV2_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/CESM2-WACCM/chl_Omon_CESM2-WACCM_historical*.nc $ipath/chl/clean/chl_CESM2-WACCM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_CESM2-WACCM_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_CESM2-WACCM_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_CESM2-WACCM_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_CESM2-WACCM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/CESM2-WACCM-FV2/chl_Omon_CESM2-WACCM-FV2_historical*.nc $ipath/chl/clean/chl_CESM2-WACCM-FV2_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_CESM2-WACCM-FV2_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_CESM2-WACCM-FV2_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_CESM2-WACCM-FV2_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_CESM2-WACCM-FV2_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_CESM2-WACCM-FV2_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/CMCC-ESM2/chl_Omon_CMCC-ESM2_historical*.nc $ipath/chl/clean/chl_CMCC-ESM2_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_CMCC-ESM2_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_CMCC-ESM2_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_CMCC-ESM2_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_CMCC-ESM2_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/GFDL-CM4/chl_Omon_GFDL-CM4_historical*.nc $ipath/chl/clean/chl_GFDL-CM4_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_GFDL-CM4_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_GFDL-CM4_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_GFDL-CM4_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_GFDL-CM4_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_GFDL-CM4_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/GFDL-ESM4/chl_Omon_GFDL-ESM4_historical*.nc $ipath/chl/clean/chl_GFDL-ESM4_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_GFDL-ESM4_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_GFDL-ESM4_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_GFDL-ESM4_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_GFDL-ESM4_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/IPSL-CM5A2-INCA/chl_Omon_IPSL-CM5A2-INCA_historical*.nc $ipath/chl/clean/chl_IPSL-CM5A2-INCA_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_IPSL-CM5A2-INCA_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_IPSL-CM5A2-INCA_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_IPSL-CM5A2-INCA_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_IPSL-CM5A2-INCA_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_IPSL-CM5A2-INCA_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/IPSL-CM6A-LR/chl_Omon_IPSL-CM6A-LR_historical*.nc $ipath/chl/clean/chl_IPSL-CM6A-LR_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_IPSL-CM6A-LR_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_IPSL-CM6A-LR_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_IPSL-CM6A-LR_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_IPSL-CM6A-LR_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_IPSL-CM6A-LR_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/IPSL-CM6A-LR-INCA/chl_Omon_IPSL-CM6A-LR-INCA_historical*.nc $ipath/chl/clean/chl_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_IPSL-CM6A-LR-INCA_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/MPI-ESM-1-2-HAM/chl_Omon_MPI-ESM-1-2-HAM_historical*.nc $ipath/chl/clean/chl_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_MPI-ESM-1-2-HAM_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/MPI-ESM1-2-HR/chl_Omon_MPI-ESM1-2-HR_historical*.nc $ipath/chl/clean/chl_MPI-ESM1-2-HR_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_MPI-ESM1-2-HR_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_MPI-ESM1-2-HR_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_MPI-ESM1-2-HR_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_MPI-ESM1-2-HR_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_MPI-ESM1-2-HR_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/MPI-ESM1-2-LR/chl_Omon_MPI-ESM1-2-LR_historical*.nc $ipath/chl/clean/chl_MPI-ESM1-2-LR_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_MPI-ESM1-2-LR_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_MPI-ESM1-2-LR_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_MPI-ESM1-2-LR_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_MPI-ESM1-2-LR_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_MPI-ESM1-2-LR_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/NorESM2-LM/chl_Omon_NorESM2-LM_historical*.nc $ipath/chl/clean/chl_NorESM2-LM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_NorESM2-LM_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_NorESM2-LM_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_NorESM2-LM_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_NorESM2-LM_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/chl/raw/NorESM2-MM/chl_Omon_NorESM2-MM_historical*.nc $ipath/chl/clean/chl_NorESM2-MM_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/chl/clean/chl_NorESM2-MM_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_NorESM2-MM_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/chl/clean/chl_NorESM2-MM_hist_1950-2014_1deg.nc $ipath/chl/clean/chl_NorESM2-MM_hist_1950-2014_0-300.nc
rm $ipath/chl/clean/chl_NorESM2-MM_hist_1950-2014_1deg.nc

#Temperature and Salinity for CanESM5-1
$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/thetao/raw/CanESM5-1/thetao_Omon_CanESM5-1_historical*.nc $ipath/thetao/clean/thetao_CanESM5-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/thetao/clean/thetao_CanESM5-1_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_CanESM5-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/thetao/clean/thetao_CanESM5-1_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_CanESM5-1_hist_1950-2014_0-300.nc
rm $ipath/thetao/clean/thetao_CanESM5-1_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/sal/raw/CanESM5-1/so_Omon_CanESM5-1_historical*.nc $ipath/sal/clean/so_CanESM5-1_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/sal/clean/so_CanESM5-1_hist_1950-2014_1deg.nc $ipath/sal/clean/so_CanESM5-1_hist_1950-2014_1deg_surf.nc
$CDO -sellevel,0/300 $ipath/sal/clean/so_CanESM5-1_hist_1950-2014_1deg.nc $ipath/sal/clean/so_CanESM5-1_hist_1950-2014_0-300.nc
rm $ipath/sal/clean/so_CanESM5-1_hist_1950-2014_1deg.nc
