#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data/chl/reduce_dim"
opath="/home/users/aditi/CMIP6/data/analysis"

CDO="cdo -O -P 8 -f nc"

$CDO ensmean \
  $ipath/chl_ACCESS-ESM1-5_*.nc \
 # $ipath/chl_CanESM5_*.nc \
  $ipath/chl_CanESM5-1_*.nc \
 # $ipath/chl_CESM2_*.nc \
 # $ipath/chl_CESM2-FV2_*.nc \
#  $ipath/chl_CESM2-WACCM_*.nc \
  $ipath/chl_CESM2-WACCM-FV2_*.nc \
  $ipath/chl_CMCC-ESM2_*.nc \
  $ipath/chl_CNRM-ESM2-1_*.nc \
 # $ipath/chl_GFDL-CM4_*.nc \
  $ipath/chl_GFDL-ESM4_*.nc \
 # $ipath/chl_IPSL-CM5A2-INCA_*.nc \
  $ipath/chl_IPSL-CM6A-LR_*.nc \
 # $ipath/chl_IPSL-CM6A-LR-INCA_*.nc \
  $ipath/chl_MIROC-ES2L_*.nc \
 # $ipath/chl_MPI-ESM-1-2-HAM_*.nc \
  $ipath/chl_MPI-ESM1-2-HR_*.nc \
# $ipath/chl_MPI-ESM1-2-LR_*.nc \
#  $ipath/chl_NorESM2-LM_*.nc \
  $ipath/chl_NorESM2-MM_*.nc \
  $ipath/chl_UKESM1-0-LL_*.nc \
  $opath/chl_ensmean.nc      
   
