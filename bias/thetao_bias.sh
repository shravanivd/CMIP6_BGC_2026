#!/bin/bash
set -xe

CDO="cdo -O -P 8"

ipath_esm="../../clean/data/clim/thetao"
ipath_obs="../../obs/temperature_ORAS5_1998-2024_1deg_surf_IO_timmean.nc"
opath="../data/bias/thetao"

#Select obs file for Indian ocean only and then do timmean on it, chk variable name
$CDO -sub $ipath_esm/thetao_ACCESS-ESM1-5_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_ACCESS-ESM1-5_bias.nc

$CDO -sub $ipath_esm/thetao_CanESM5_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_CanESM5_bias.nc

$CDO -sub $ipath_esm/thetao_CanESM5-1_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_CanESM5-1_bias.nc

$CDO -sub $ipath_esm/thetao_CESM2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_CESM2_bias.nc

$CDO -sub $ipath_esm/thetao_CESM2-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_CESM2-FV2_bias.nc

$CDO -sub $ipath_esm/thetao_CESM2-WACCM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_CESM2-WACCM_bias.nc

$CDO -sub $ipath_esm/thetao_CESM2-WACCM-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_CESM2-WACCM-FV2_bias.nc

$CDO -sub $ipath_esm/thetao_CMCC-ESM2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_CMCC-ESM2_bias.nc

$CDO -sub $ipath_esm/thetao_CNRM-ESM2-1_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_CNRM-ESM2-1_bias.nc

$CDO -sub $ipath_esm/thetao_GFDL-CM4_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_GFDL-CM4_bias.nc
         
$CDO -sub $ipath_esm/thetao_GFDL-ESM4_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_GFDL-ESM4_bias.nc

$CDO -sub $ipath_esm/thetao_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_IPSL-CM5A2-INCA_bias.nc

$CDO -sub $ipath_esm/thetao_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_IPSL-CM6A-LR_bias.nc

$CDO -sub $ipath_esm/thetao_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_IPSL-CM6A-LR-INCA_bias.nc

$CDO -sub $ipath_esm/thetao_MIROC-ES2L_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_MIROC-ES2L_bias.nc

$CDO -sub $ipath_esm/thetao_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_MPI-ESM-1-2-HAM_bias.nc
         
$CDO -sub $ipath_esm/thetao_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_MPI-ESM1-2-HR_bias.nc

$CDO -sub $ipath_esm/thetao_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_MPI-ESM1-2-LR_bias.nc

$CDO -sub $ipath_esm/thetao_NorESM2-LM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_NorESM2-LM_bias.nc

$CDO -sub $ipath_esm/thetao_NorESM2-MM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_NorESM2-MM_bias.nc

$CDO -sub $ipath_esm/thetao_UKESM1-0-LL_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/thetao_UKESM1-0-LL_bias.nc
