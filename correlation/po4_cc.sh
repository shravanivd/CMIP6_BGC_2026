#!/bin/bash
set -xe

CDO="cdo -O -P 8"

esm_path="/mnt/f/cmip6_bgc_2025/data/po4"
obs_path="/mnt/f/observations_bgc/po4/woa_po4.nc"
opath="/mnt/f/cmip6_bgc_2025/analysis/data/cc/po4"

$CDO -timcor \
      $esm_path/po4_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
      $obs_path \
      $opath/po4_ACCESS-ESM1-5_cc.nc

$CDO -timcor \
     $esm_path/po4_CESM2_hist_1988-2014_1deg_IO.nc \
     $obs_path \
     $opath/po4_CESM2_cc.nc

$CDO -timcor \
    $esm_path/po4_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_CESM2-FV2_cc.nc

$CDO -timcor \
    $esm_path/po4_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_CESM2-WACCM_cc.nc

$CDO -timcor \
    $esm_path/po4_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_CESM2-WACCM-FV2_cc.nc

$CDO -timcor \
    $esm_path/po4_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_CMCC-ESM2_cc.nc

$CDO -timcor \
    $esm_path/po4_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_CNRM-ESM2-1_cc.nc

$CDO -timcor \
    $esm_path/po4_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_GFDL-CM4_cc.nc

$CDO -timcor \
    $esm_path/po4_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_GFDL-ESM4_cc.nc

$CDO -timcor \
    $esm_path/po4_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_IPSL-CM5A2-INCA_cc.nc

$CDO -timcor \
    $esm_path/po4_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_IPSL-CM6A-LR_cc.nc

$CDO -timcor \
    $esm_path/po4_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_IPSL-CM6A-LR-INCA_cc.nc

$CDO -timcor \
    $esm_path/po4_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_MIROC-ES2L_cc.nc

$CDO -timcor \
    $esm_path/po4_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_MPI-ESM-1-2-HAM_cc.nc

$CDO -timcor \
    $esm_path/po4_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_MPI-ESM1-2-HR_cc.nc

$CDO -timcor \
    $esm_path/po4_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_MPI-ESM1-2-LR_cc.nc

$CDO -timcor \
    $esm_path/po4_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_NorESM2-LM_cc.nc

$CDO -timcor \
    $esm_path/po4_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_NorESM2-MM_cc.nc

$CDO -timcor \
    $esm_path/po4_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
    $obs_path \
    $opath/po4_UKESM1-0-LL_cc.nc
