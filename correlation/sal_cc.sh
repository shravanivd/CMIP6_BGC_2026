#!/bin/bash
set -xe

CDO="cdo -O -P 8"

esm_path="/mnt/f/cmip6_bgc_2025/data/sal"
obs_path="/mnt/f/observations_bgc/sa"
opath="/mnt/f/cmip6_bgc_2025/analysis/data/cc/sal"

$CDO -timcor \
      $esm_path/so_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
      $obs_path \
      $opath/so_ACCESS-ESM1-5_cc.nc

$CDO -timcor \
    $esm_path/so_CanESM5_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_CanESM5_cc.nc

$CDO -timcor \
    $esm_path/so_CanESM5-1_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_CanESM5-1_cc.nc

$CDO -timcor \
     $esm_path/so_CESM2_hist_1988-2014_1deg_IO.nc \
     $obs_path \
     $opath/so_CESM2_cc.nc

$CDO -timcor \
    $esm_path/so_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_CESM2-FV2_cc.nc

$CDO -timcor \
    $esm_path/so_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_CESM2-WACCM_cc.nc

$CDO -timcor \
    $esm_path/so_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_CESM2-WACCM-FV2_cc.nc

$CDO -timcor \
    $esm_path/so_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_CMCC-ESM2_cc.nc

$CDO -timcor \
    $esm_path/so_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_CNRM-ESM2-1_cc.nc

$CDO -timcor \
    $esm_path/so_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_GFDL-CM4_cc.nc

$CDO -timcor \
    $esm_path/so_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_GFDL-ESM4_cc.nc

$CDO -timcor \
    $esm_path/so_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_IPSL-CM5A2-INCA_cc.nc

$CDO -timcor \
    $esm_path/so_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_IPSL-CM6A-LR_cc.nc

$CDO -timcor \
    $esm_path/so_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_IPSL-CM6A-LR-INCA_cc.nc

$CDO -timcor \
    $esm_path/so_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_MIROC-ES2L_cc.nc

$CDO -timcor \
    $esm_path/so_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_MPI-ESM-1-2-HAM_cc.nc

$CDO -timcor \
    $esm_path/so_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_MPI-ESM1-2-HR_cc.nc

$CDO -timcor \
    $esm_path/so_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_MPI-ESM1-2-LR_cc.nc

$CDO -timcor \
    $esm_path/so_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_NorESM2-LM_cc.nc

$CDO -timcor \
    $esm_path/so_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_NorESM2-MM_cc.nc

$CDO -timcor \
    $esm_path/so_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/so_UKESM1-0-LL_cc.nc
