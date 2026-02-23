#!/bin/bash
set -xe

CDO="cdo -O -P 8"

ipath="../../clean/Phosphate"
opath="../data/climatology/po4"

#CanESM5 and CanESM5-1 absent
$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_ACCESS-ESM1-5_*surf.nc \
         opath/po4_ACCESS-ESM1-5_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_CESM2_*surf.nc \
         opath/po4_CESM2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_CESM2-FV2_*surf.nc \
         opath/po4_CESM2-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_CESM2-WACCM_*surf.nc \
         opath/po4_CESM2-WACCM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_CESM2-WACCM-FV2_*surf.nc \
         opath/po4_CESM2-WACCM-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_CMCC-ESM2_*surf.nc \
         opath/po4_CMCC-ESM2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_CNRM-ESM2-1_*surf.nc \
         opath/po4_CNRM-ESM2-1_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_GFDL-CM4_*surf.nc \
         opath/po4_GFDL-CM4_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_GFDL-ESM4_*surf.nc \
         opath/po4_GFDL-ESM4_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_IPSL-CM5A2-INCA_*surf.nc \
         opath/po4_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_IPSL-CM6A-LR_*surf.nc \
         opath/po4_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_IPSL-CM6A-LR-INCA_*surf.nc \
         opath/po4_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_MIROC-ES2L_*surf.nc \
         opath/po4_MIROC-ES2L_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_MPI-ESM-1-2-HAM_*surf.nc \
         opath/po4_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_MPI-ESM1-2-HR_*surf.nc \
         opath/po4_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_MPI-ESM1-2-LR_*surf.nc \
         opath/po4_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4os_NorESM2-LM_*surf.nc \
         opath/po4os_NorESM2-LM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_NorESM2-MM_*surf.nc \
         opath/po4_NorESM2-MM_hist_1988-2014_1deg_surf_IO_timmean.nc
         
$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ipath/po4_UKESM1-0-LL_*surf.nc \
         opath/po4_UKESM1-0-LL_hist_1988-2014_1deg_surf_IO_timmean.nc













 

