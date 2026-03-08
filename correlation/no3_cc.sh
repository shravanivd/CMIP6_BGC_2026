#!/bin/bash
set -xe

CDO="cdo -O -P 8"

esm_path="/mnt/f/cmip6_bgc_2025/data/chl"
obs_path="/mnt/f/observations_bgc/no3/no3_woa.nc"
opath="/mnt/f/cmip6_bgc_2025/analysis/data/cc/chl"

$CDO -timcor \
      $esm_path/no3_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
      $obs_path \
      $opath/no3_ACCESS-ESM1-5_cc.nc

$CDO -timcor \
    $esm_path/no3_CanESM5_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_CanESM5_cc.nc

$CDO -timcor \
    $esm_path/no3_CanESM5-1_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_CanESM5-1_cc.nc

$CDO -timcor \
     $esm_path/no3_CESM2_hist_1988-2014_1deg_IO.nc \
     $obs_path \
     $opath/no3_CESM2_cc.nc

$CDO -timcor \
    $esm_path/no3_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_CESM2-FV2_cc.nc

$CDO -timcor \
    $esm_path/no3_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_CESM2-WACCM_cc.nc

$CDO -timcor \
    $esm_path/no3_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_CESM2-WACCM-FV2_cc.nc

$CDO -timcor \
    $esm_path/no3_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_CMCC-ESM2_cc.nc

$CDO -timcor \
    $esm_path/no3_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_CNRM-ESM2-1_cc.nc

$CDO -timcor \
    $esm_path/no3_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_GFDL-ESM4_cc.nc

$CDO -timcor \
    $esm_path/no3_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_IPSL-CM5A2-INCA_cc.nc

$CDO -timcor \
    $esm_path/no3_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_IPSL-CM6A-LR_cc.nc

$CDO -timcor \
    $esm_path/no3_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_IPSL-CM6A-LR-INCA_cc.nc

$CDO -timcor \
    $esm_path/no3_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_MIROC-ES2L_cc.nc

$CDO -timcor \
    $esm_path/no3_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_MPI-ESM-1-2-HAM_cc.nc

$CDO -timcor \
    $esm_path/no3_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_MPI-ESM1-2-HR_cc.nc

$CDO -timcor \
    $esm_path/no3_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_MPI-ESM1-2-LR_cc.nc

$CDO -timcor \
    $esm_path/no3_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_NorESM2-LM_cc.nc

$CDO -timcor \
    $esm_path/no3_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_NorESM2-MM_cc.nc

$CDO -timcor \
    $esm_path/no3_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/no3_UKESM1-0-LL_cc.nc
