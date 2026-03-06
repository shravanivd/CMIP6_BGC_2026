#!/bin/bash
set -xe


ipath_esm="../../clean/data/clim/Fe"
ipath_obs="../../obs/geotraces_fe_1deg_IO_timmean.nc"
opath="../data/bias/Fe"


#Select obs file for Indian ocean only and then do timmean on it
cdo -sub $ipath_esm/dfe_ACCESS-ESM1-5_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_ACCESS-ESM1-5_bias.nc

cdo -sub $ipath_esm/dfe_CESM2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_CESM2_bias.nc

cdo -sub $ipath_esm/dfe_CESM2-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_CESM2-FV2_bias.nc

cdo -sub $ipath_esm/dfe_CESM2-WACCM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_CESM2-WACCM_bias.nc

cdo -sub $ipath_esm/dfe_CESM2-WACCM-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_CESM2-WACCM-FV2_bias.nc

cdo -sub $ipath_esm/dfe_CMCC-ESM2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_CMCC-ESM2_bias.nc
         
cdo -sub $ipath_esm/dfe_CNRM-ESM2-1_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_CNRM-ESM2-1_bias.nc

cdo -sub $ipath_esm/dfe_GFDL-CM4_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_GFDL-CM4_bias.nc

cdo -sub $ipath_esm/dfe_GFDL-ESM4_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_GFDL-ESM4_bias.nc

cdo -sub $ipath_esm/dfe_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_IPSL-CM5A2-INCA_bias.nc

cdo -sub $ipath_esm/dfe_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_IPSL-CM6A-LR_bias.nc

cdo -sub $ipath_esm/dfe_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_IPSL-CM6A-LR-INCA_bias.nc

cdo -sub $ipath_esm/dfe_MIROC-ES2L_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_MIROC-ES2L_bias.nc

cdo -sub $ipath_esm/dfe_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_MPI-ESM-1-2-HAM_bias.nc
         
cdo -sub $ipath_esm/dfe_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_MPI-ESM1-2-HR_bias.nc

cdo -sub $ipath_esm/dfe_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_MPI-ESM1-2-LR_bias.nc

cdo -sub $ipath_esm/dfe_NorESM2-LM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_NorESM2-LM_bias.nc
         
cdo -sub $ipath_esm/dfe_NorESM2-MM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_NorESM2-MM_bias.nc

cdo -sub $ipath_esm/dfe_UKESM1-0-LL_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs \
         $opath/dfe_UKESM1-0-LL_bias.nc
