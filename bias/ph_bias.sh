#!/bin/bash
set -xe

CDO="cdo -O -P 8"

ipath_esm="../../clean/data/clim/ph"
ipath_obs="../../obs/GLODAP_ph_clim.nc"
opath="../data/bias/ph"

#Select obs file for Indian ocean only and then do timmean on it
$CDO -sub $ipath_esm/ph_CESM2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_CESM2_bias.nc

$CDO -sub $ipath_esm/ph_CESM2-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_CESM2-FV2_bias.nc

$CDO -sub $ipath_esm/ph_CESM2-WACCM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_CESM2-WACCM_bias.nc

$CDO -sub $ipath_esm/ph_CESM2-WACCM-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_CESM2-WACCM-FV2_bias.nc

$CDO -sub $ipath_esm/ph_CMCC-ESM2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_CMCC-ESM2_bias.nc

$CDO -sub $ipath_esm/ph_CNRM-ESM2-1_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_CNRM-ESM2-1_bias.nc

$CDO -sub $ipath_esm/ph_GFDL-CM4_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_GFDL-CM4_bias.nc
         
$CDO -sub $ipath_esm/ph_GFDL-ESM4_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_GFDL-ESM4_bias.nc

$CDO -sub $ipath_esm/ph_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_IPSL-CM5A2-INCA_bias.nc

$CDO -sub $ipath_esm/ph_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_IPSL-CM6A-LR_bias.nc

$CDO -sub $ipath_esm/ph_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_IPSL-CM6A-LR-INCA_bias.nc

$CDO -sub $ipath_esm/ph_MIROC-ES2L_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_MIROC-ES2L_bias.nc

$CDO -sub $ipath_esm/ph_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_MPI-ESM-1-2-HAM_bias.nc
         
$CDO -sub $ipath_esm/ph_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_MPI-ESM1-2-HR_bias.nc

$CDO -sub $ipath_esm/ph_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_MPI-ESM1-2-LR_bias.nc

$CDO -sub $ipath_esm/ph_NorESM2-LM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_NorESM2-LM_bias.nc

$CDO -sub $ipath_esm/ph_NorESM2-MM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_NorESM2-MM_bias.nc

$CDO -sub $ipath_esm/ph_UKESM1-0-LL_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/ph_UKESM1-0-LL_bias.nc
