#!/bin/bash
set -xe

CDO="cdo -O -P 8"

esm_path="/mnt/f/cmip6_bgc_2025/data/chl"
obs_path="/mnt/f/observations_bgc/chl/CCI_v6.0-mon_global_1998-2024_1deg_IO.nc"
opath="/mnt/f/cmip6_bgc_2025/analysis/data/cc/chl"

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_ACCESS-ESM1-5_*surf.nc \
      $obs_path \
      $opath/chl_ACCESS-ESM1-5_cc.nc

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_CanESM5_*surf.nc \
    $obs_path \
    $opath/chl_CanESM5_cc.nc

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_CanESM5-1_*surf.nc \
    $obs_path \
    $opath/chl_CanESM5-1_cc.nc

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_CESM2_*surf.nc \
     $obs_path \
     $opath/chl_CESM2_cc.nc

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_CESM2-FV2_*surf.nc \
    $obs_path \
    $opath/chl_CESM2-FV2_cc.nc

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_CESM2-WACCM_*surf.nc \
    $obs_path \
    $opath/chl_CESM2-WACCM_cc.nc

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_CESM2-WACCM-FV2_*surf.nc \
    $obs_path \
    $opath/chl_CESM2-WACCM-FV2_cc.nc

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_CMCC-ESM2_*surf.nc \
    $obs_path \
    $opath/chl_CMCC-ESM2_cc.nc

$CDO -timcor -mulc,1e3 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_CNRM-ESM2-1_*surf.nc \
    $obs_path \
    $opath/chl_CNRM-ESM2-1_cc.nc

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_GFDL-CM4_*surf.nc \
    $obs_path \
    $opath/chl_GFDL-CM4_cc.nc

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_GFDL-ESM4_*surf.nc \
    $obs_path \
    $opath/chl_GFDL-ESM4_cc.nc

$CDO -timcor -mulc,1e3 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_IPSL-CM5A2-INCA_*surf.nc \
    $obs_path \
    $opath/chl_IPSL-CM5A2-INCA_cc.nc

$CDO -timcor -mulc,1e3 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_IPSL-CM6A-LR_*surf.nc \
    $obs_path \
    $opath/chl_IPSL-CM6A-LR_cc.nc

$CDO -timcor -mulc,1e3 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_IPSL-CM6A-LR-INCA_*surf.nc \
    $obs_path \
    $opath/chl_IPSL-CM6A-LR-INCA_cc.nc

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_MIROC-ES2L_*surf.nc \
    $obs_path \
    $opath/chl_MIROC-ES2L_cc.nc

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_MPI-ESM-1-2-HAM_*surf.nc \
    $obs_path \
    $opath/chl_MPI-ESM-1-2-HAM_cc.nc

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_MPI-ESM1-2-HR_*surf.nc \
    $obs_path \
    $opath/chl_MPI-ESM1-2-HR_cc.nc

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_MPI-ESM1-2-LR_*surf.nc \
    $obs_path \
    $opath/chl_MPI-ESM1-2-LR_cc.nc

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_NorESM2-LM_*surf.nc \
    $obs_path \
    $opath/chl_NorESM2-LM_cc.nc

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_NorESM2-MM_*surf.nc \
    $obs_path \
    $opath/chl_NorESM2-MM_cc.nc

$CDO -timcor -mulc,1e6 -sellonlatbox,30,120,-30,30 -selyear,1988/2014 $esm_path/chl_UKESM1-0-LL_*surf.nc \
    $obs_path \
    $opath/chl_UKESM1-0-LL_cc.nc







