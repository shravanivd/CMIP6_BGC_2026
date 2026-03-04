#!/bin/bash
set -xe

ipath_esm="../../clean/data/clim/o2"
ipath_obs="../../obs/woa_o2_1deg_IO_timmean.nc"
opath="../data/bias/o2"


#Select obs file for Indian ocean only and then do timmean on it
cdo -sub $ipath_esm/o2_ACCESS-ESM1-5_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_ACCESS-ESM1-5_bias.nc

cdo -sub $ipath_esm/o2_CanESM5_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_CanESM5_bias.nc

cdo -sub $ipath_esm/o2_CanESM5-1_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_CanESM5-1_bias.nc

cdo -sub $ipath_esm/o2_CMCC-ESM2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_CMCC-ESM2_bias.nc
         
cdo -sub $ipath_esm/o2_CNRM-ESM2-1_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_CNRM-ESM2-1_bias.nc

cdo -sub $ipath_esm/o2_GFDL-CM4_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_GFDL-CM4_bias.nc

cdo -sub $ipath_esm/o2_GFDL-ESM4_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_GFDL-ESM4_bias.nc

cdo -sub $ipath_esm/o2_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_IPSL-CM5A2-INCA_bias.nc

cdo -sub $ipath_esm/o2_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_IPSL-CM6A-LR_bias.nc

cdo -sub $ipath_esm/o2_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_IPSL-CM6A-LR-INCA_bias.nc

cdo -sub $ipath_esm/o2_MIROC-ES2L_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_MIROC-ES2L_bias.nc

cdo -sub $ipath_esm/o2_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_MPI-ESM-1-2-HAM_bias.nc

cdo -sub $ipath_esm/o2_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_MPI-ESM1-2-LR_bias.nc

cdo -sub $ipath_esm/o2_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_MPI-ESM1-2-HR_bias.nc

cdo -sub $ipath_esm/o2_NorESM2-MM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_NorESM2-MM_bias.nc

cdo -sub $ipath_esm/o2_NorESM2-LM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_NorESM2-LM_bias.nc

cdo -sub $ipath_esm/o2_UKESM1-0-LL_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/o2_UKESM1-0-LL_bias.nc
