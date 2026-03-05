#!/bin/bash
set -xe

CDO="cdo -O -P 8"

ipath="../../clean/sal"
opath="../data/climatology/sal"

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_ACCESS-ESM1-5_*surf.nc \
         $opath/so_ACCESS-ESM1-5_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_CanESM5_*surf.nc \
         $opath/so_CanESM5_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_CanESM5-1_*surf.nc \
         $opath/so_CanESM5-1_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_CESM2_*surf.nc \
         $opath/so_CESM2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_CESM2-FV2_*surf.nc \
         $opath/so_CESM2-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_CESM2-WACCM_*surf.nc \
         $opath/so_CESM2-WACCM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_CESM2-WACCM-FV2_*surf.nc \
         $opath/so_CESM2-WACCM-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_CMCC-ESM2_*surf.nc \
         $opath/so_CMCC-ESM2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_CNRM-ESM2-1_*surf.nc \
         $opath/so_CNRM-ESM2-1_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_GFDL-CM4_*surf.nc \
         $opath/so_GFDL-CM4_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_GFDL-ESM4_*surf.nc \
         $opath/so_GFDL-ESM4_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_IPSL-CM5A2-INCA_*surf.nc \
         $opath/so_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_IPSL-CM6A-LR_*surf.nc \
         $opath/so_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_IPSL-CM6A-LR-INCA_*surf.nc \
         $opath/so_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc
         
$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_MIROC-ES2L_*surf.nc \
         $opath/so_MIROC-ES2L_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_MPI-ESM-1-2-HAM_*surf.nc \
         $opath/so_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_MPI-ESM1-2-HR_*surf.nc \
         $opath/so_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_MPI-ESM1-2-LR_*surf.nc \
         $opath/so_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_NorESM2-LM_*surf.nc \
         $opath/so_NorESM2-LM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_NorESM2-MM_*surf.nc \
         $opath/so_NorESM2-MM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/so_UKESM1-0-LL_*surf.nc \
         $opath/so_UKESM1-0-LL_hist_1988-2014_1deg_surf_IO_timmean.nc
