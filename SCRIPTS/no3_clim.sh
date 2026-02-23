#!/bin/bash
set -xe

CDO="cdo -O -P 8"

ipath="../../clean/Nitrate"
opath="../data/climatology/no3"

#GFDL-CM4 absent
$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_ACCESS-ESM1-5_*surf.nc \
       $opath/no3_ACCESS-ESM1-5_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_CanESM5_*surf.nc \
       $opath/no3_CanESM5_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_CanESM5-1_*surf.nc \
       $opath/no3_CanESM5-1_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_CESM2_*surf.nc \
        $opath/no3_CESM2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_CESM2-FV2_*surf.nc \
        $opath/no3_CESM2-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_CESM2-WACCM_*surf.nc \
        $opath/no3_CESM2-WACCM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_CESM2-WACCM-FV2_*surf.nc \
         $opath/no3_CESM2-WACCM-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_CMCC-ESM2_*surf.nc \
        $opath/no3_CMCC-ESM2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_CNRM-ESM2-1_*surf.nc \
        $opath/no3_CNRM-ESM2-1_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_GFDL-ESM4_*surf.nc \
        $opath/no3_GFDL-ESM4_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_IPSL-CM5A2-INCA_*surf.nc \
        $opath/no3_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_IPSL-CM6A-LR_*surf.nc \
        $opath/no3_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_IPSL-CM6A-LR-INCA_*surf.nc \
         $opath/no3_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_MIROC-ES2L_*surf.nc \
        $opath/no3_MIROC-ES2L_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_MPI-ESM-1-2-HAM_*surf.nc \
         $opath/no3_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_MPI-ESM1-2-HR_*surf.nc \
         $opath/no3_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_MPI-ESM1-2-LR_*surf.nc \
          $opath/no3_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_NorESM2-MM_*surf.nc \
          $opath/no3_NorESM2-MM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3os_NorESM2-LM_*.nc \
          $opath/no3os_NorESM2-LM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 $ipath/no3_UKESM1-0-LL_*surf.nc \
          $opath/no3_UKESM1-0-LL_hist_1988-2014_1deg_surf_IO_timmean.nc




 

