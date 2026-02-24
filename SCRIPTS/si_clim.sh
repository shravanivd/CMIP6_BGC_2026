#!/bin/bash
set -xe

CDO="cdo -O -P 8"

ipath="../../clean/Silicate"
opath="../data/climatology/si"

#absent in ACCESS, CanESM5, CanESM5-1, GFDL-CM4, MIROC-ES2L

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/si_CESM2_*surf.nc \
         $opath/si_CESM2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/si_CESM2-FV2_*surf.nc \
         $opath/si_CESM2-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/si_CESM2-WACCM_*surf.nc \
         $opath/si_CESM2-WACCM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/si_CESM2-WACCM-FV2_*surf.nc \
         $opath/si_CESM2-WACCM-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/si_CMCC-ESM2_*surf.nc \
         $opath/si_CMCC-ESM2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/si_CNRM-ESM2-1_*surf.nc \
         $opath/si_CNRM-ESM2-1_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/si_GFDL-ESM4_*surf.nc \
         $opath/si_GFDL-ESM4_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/si_IPSL-CM5A2-INCA_*surf.nc \
         $opath/si_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/si_IPSL-CM6A-LR_*surf.nc \
         $opath/si_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/si_IPSL-CM6A-LR-INCA_*surf.nc \
         $opath/si_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/si_MPI-ESM-1-2-HAM_*surf.nc \
         $opath/si_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/si_MPI-ESM1-2-HR_*surf.nc \
         $opath/si_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/si_MPI-ESM1-2-LR_*surf.nc \
         $opath/si_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/si_NorESM2-MM_*surf.nc \
         $opath/si_NorESM2-MM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/sios_NorESM2-LM_*surf.nc \
         $opath/sios_NorESM2-LM_hist_1988-2014_1deg_surf_IO_timmean.nc













 

