#!/bin/bash
set -xe

CDO="cdo -O -P 8"

ipath_esm="../../clean/data/clim/mlotst"
ipath_obs="../../obs/mld_oras5_1988-2014_1deg.nc"
opath="../data/bias/mlotst"

#Select obs file for Indian ocean only and then do timmean on it
$CDO -sub $ipath_esm/mlotst_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_ACCESS-ESM1-5_bias.nc

$CDO -sub $ipath_esm/mlotst_CanESM5_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_CanESM5_bias.nc

$CDO -sub $ipath_esm/mlotst_CanESM5-1_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_CanESM5-1_bias.nc

$CDO -sub $ipath_esm/mlotst_CESM2_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_CESM2_bias.nc

$CDO -sub $ipath_esm/mlotst_CESM2-FV2_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_CESM2-FV2_bias.nc

$CDO -sub $ipath_esm/mlotst_CESM2-WACCM_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_CESM2-WACCM_bias.nc

$CDO -sub $ipath_esm/mlotst_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_CESM2-WACCM-FV2_bias.nc

$CDO -sub $ipath_esm/mlotst_CMCC-ESM2_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_CMCC-ESM2_bias.nc

$CDO -sub $ipath_esm/mlotst_CNRM-ESM2-1_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_CNRM-ESM2-1_bias.nc

$CDO -sub $ipath_esm/mlotst_GFDL-CM4_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_GFDL-CM4_bias.nc
         
$CDO -sub $ipath_esm/mlotst_GFDL-ESM4_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_GFDL-ESM4_bias.nc

$CDO -sub $ipath_esm/mlotst_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_IPSL-CM5A2-INCA_bias.nc

$CDO -sub $ipath_esm/mlotst_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_IPSL-CM6A-LR_bias.nc

$CDO -sub $ipath_esm/mlotst_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_IPSL-CM6A-LR-INCA_bias.nc

# mld to compute
# $CDO -sub $ipath_esm/mlotst_MIROC-ES2L_hist_1988-2014_1deg_IO_timmean.nc \ 
#          $ipath_obs \
#          $opath/mlotst_MIROC-ES2L_bias.nc

$CDO -sub $ipath_esm/mlotst_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_MPI-ESM-1-2-HAM_bias.nc
         
$CDO -sub $ipath_esm/mlotst_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_MPI-ESM1-2-HR_bias.nc

$CDO -sub $ipath_esm/mlotst_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_MPI-ESM1-2-LR_bias.nc

#mld to compute
# $CDO -sub $ipath_esm/mlotst_NorESM2-LM_hist_1988-2014_1deg_IO_timmean.nc \
#          $ipath_obs \
#          $opath/mlotst_NorESM2-LM_bias.nc

$CDO -sub $ipath_esm/mlotst_NorESM2-MM_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_NorESM2-MM_bias.nc

$CDO -sub $ipath_esm/mlotst_UKESM1-0-LL_hist_1988-2014_1deg_IO_timmean.nc \
         $ipath_obs \
         $opath/mlotst_UKESM1-0-LL_bias.nc
