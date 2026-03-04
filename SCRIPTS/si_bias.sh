#!/bin/bash
set -xe


ipath_esm="../../clean/data/clim/si"
ipath_obs="../../obs/woa_si_1deg_IO_timmean.nc"
opath="../data/bias/si"


#Select obs file for Indian ocean only and then do timmean on it
cdo -sub $ipath_esm/si_CESM2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/si_CESM2_bias.nc

cdo -sub $ipath_esm/si_CESM2-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/si_CESM2-FV2_bias.nc

cdo -sub $ipath_esm/si_CESM2-WACCM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/si_CESM2-WACCM_bias.nc

cdo -sub $ipath_esm/si_CESM2-WACCM-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/si_CESM2-WACCM-FV2_bias.nc

cdo -sub $ipath_esm/si_CMCC-ESM2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/si_CMCC-ESM2_bias.nc

cdo -sub $ipath_esm/si_CNRM-ESM2-1_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/si_CNRM-ESM2-1_bias.nc

cdo -sub $ipath_esm/si_GFDL-ESM4_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/si_GFDL-ESM4_bias.nc

cdo -sub $ipath_esm/si_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/si_IPSL-CM5A2-INCA_bias.nc

cdo -sub $ipath_esm/si_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/si_IPSL-CM6A-LR_bias.nc

cdo -sub $ipath_esm/si_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/si_IPSL-CM6A-LR-INCA_bias.nc

cdo -sub $ipath_esm/si_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/si_MPI-ESM-1-2-HAM_bias.nc

cdo -sub $ipath_esm/si_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/si_MPI-ESM1-2-HR_bias.nc

cdo -sub $ipath_esm/si_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/si_MPI-ESM1-2-LR_bias.nc

cdo -sub $ipath_esm/si_NorESM2-LM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/si_NorESM2-LM_bias.nc

cdo -sub $ipath_esm/si_NorESM2-MM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/si_NorESM2-MM_bias.nc

cdo -sub $ipath_esm/si_UKESM1-0-LL_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/si_UKESM1-0-LL_bias.nc
