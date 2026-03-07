#!/bin/bash
set -xe

CDO="cdo -O -P 8"

ipath_esm="../../clean/data/clim/spco2"
ipath_obs="../../obs/SOCAT_v2025.nc"
opath="../data/bias/spco2"

#Select obs file for Indian ocean only and then do timmean on it
$CDO -sub $ipath_esm/spco2_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_ACCESS-ESM1-5_bias.nc

$CDO -sub $ipath_esm/spco2_CanESM5_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_CanESM5_bias.nc

$CDO -sub $ipath_esm/spco2_CanESM5-1_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_CanESM5-1_bias.nc

$CDO -sub $ipath_esm/spco2_CESM2_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_CESM2_bias.nc

$CDO -sub $ipath_esm/spco2_CESM2-FV2_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_CESM2-FV2_bias.nc

$CDO -sub $ipath_esm/spco2_CESM2-WACCM_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_CESM2-WACCM_bias.nc

$CDO -sub $ipath_esm/spco2_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_CESM2-WACCM-FV2_bias.nc

$CDO -sub $ipath_esm/spco2_CMCC-ESM2_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_CMCC-ESM2_bias.nc

$CDO -sub $ipath_esm/spco2_CNRM-ESM2-1_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_CNRM-ESM2-1_bias.nc

$CDO -sub $ipath_esm/spco2_GFDL-CM4_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_GFDL-CM4_bias.nc
         
$CDO -sub $ipath_esm/spco2_GFDL-ESM4_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_GFDL-ESM4_bias.nc

$CDO -sub $ipath_esm/spco2_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_IPSL-CM6A-LR_bias.nc

$CDO -sub $ipath_esm/spco2_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_IPSL-CM6A-LR-INCA_bias.nc

$CDO -sub $ipath_esm/spco2_MIROC-ES2L_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_MIROC-ES2L_bias.nc

$CDO -sub $ipath_esm/spco2_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_MPI-ESM-1-2-HAM_bias.nc
         
$CDO -sub $ipath_esm/spco2_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_MPI-ESM1-2-HR_bias.nc

$CDO -sub $ipath_esm/spco2_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_MPI-ESM1-2-LR_bias.nc

$CDO -sub $ipath_esm/spco2_NorESM2-MM_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_NorESM2-MM_bias.nc

$CDO -sub $ipath_esm/spco2_UKESM1-0-LL_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/spco2_UKESM1-0-LL_bias.nc
