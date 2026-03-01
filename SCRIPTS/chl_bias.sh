#!/bin/bash
set -xe

CDO="cdo -O -P 8"

ipath_esm="../../clean/data/clim/chl"
ipath_obs="../../obs"
opath="../data/bias/chl"

#Select obs file for Indian ocean only and then do timmean on it
$CDO -sub $ipath_esm/chl_ACCESS-ESM1-5_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_ACCESS-ESM1-5_bias.nc

$CDO -sub $ipath_esm/chl_CanESM5_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_CanESM5_bias.nc

$CDO -sub $ipath_esm/chl_CanESM5-1_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_CanESM5-1_bias.nc

$CDO -sub $ipath_esm/chl_CESM2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_CESM2_bias.nc

$CDO -sub $ipath_esm/chl_CESM2-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_CESM2-FV2_bias.nc

$CDO -sub $ipath_esm/chl_CESM2-WACCM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_CESM2-WACCM_bias.nc

$CDO -sub $ipath_esm/chl_CESM2-WACCM-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_CESM2-WACCM-FV2_bias.nc

$CDO -sub $ipath_esm/chl_CMCC-ESM2_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_CMCC-ESM2_bias.nc

$CDO -sub $ipath_esm/chl_CNRM-ESM2-1_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_CNRM-ESM2-1_bias.nc

$CDO -sub $ipath_esm/chl_GFDL-CM4_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_GFDL-CM4_bias.nc
         
$CDO -sub $ipath_esm/chl_GFDL-ESM4_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_GFDL-ESM4_bias.nc

$CDO -sub $ipath_esm/chl_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_IPSL-CM5A2-INCA_bias.nc

$CDO -sub $ipath_esm/chl_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_IPSL-CM6A-LR_bias.nc

$CDO -sub $ipath_esm/chl_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_IPSL-CM6A-LR-INCA_bias.nc

$CDO -sub $ipath_esm/chl_MIROC-ES2L_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_MIROC-ES2L_bias.nc

$CDO -sub $ipath_esm/chl_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_MPI-ESM-1-2-HAM_bias.nc
         
$CDO -sub $ipath_esm/chl_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_MPI-ESM1-2-HR_bias.nc

$CDO -sub $ipath_esm/chl_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_MPI-ESM1-2-LR_bias.nc

$CDO -sub $ipath_esm/chl_NorESM2-LM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_NorESM2-LM_bias.nc

$CDO -sub $ipath_esm/chl_NorESM2-MM_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_NorESM2-MM_bias.nc

$CDO -sub $ipath_esm/chl_UKESM1-0-LL_hist_1988-2014_1deg_surf_IO_timmean.nc \
         $ipath_obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         $opath/chl_UKESM1-0-LL_bias.nc






