#!/bin/bash
set -xe

CDO="cdo -O -P 8"

ipath="../../clean/spco2"
opath="../data/climatology/spco2"

#NorESM2-LM has spco2nat which is not with me
#IPSL-CM5A2-INCA has no spco2 var

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_ACCESS-ESM1-5_*.nc \
         $opath/spco2_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_CanESM5_*.nc \
         $opath/spco2_CanESM5_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_CanESM5-1_*.nc \
         $opath/spco2_CanESM5-1_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_CESM2_*.nc \
         $opath/spco2_CESM2_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_CESM2-FV2_*.nc \
         $opath/spco2_CESM2-FV2_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_CESM2-WACCM_*.nc \
         $opath/spco2_CESM2-WACCM_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_CESM2-WACCM-FV2_*.nc \
         $opath/spco2_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_CMCC-ESM2_*.nc \
         $opath/spco2_CMCC-ESM2_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_CNRM-ESM2-1_*.nc \
         $opath/spco2_CNRM-ESM2-1_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_GFDL-CM4_*.nc \
         $opath/spco2_GFDL-CM4_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_GFDL-ESM4_*.nc \
         $opath/spco2_GFDL-ESM4_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_IPSL-CM6A-LR_*.nc \
         $opath/spco2_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_IPSL-CM6A-LR-INCA_*.nc \
         $opath/spco2_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_timmean.nc
         
$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_MIROC-ES2L_*.nc \
         $opath/spco2_MIROC-ES2L_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_MPI-ESM-1-2-HAM_*.nc \
         $opath/spco2_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_MPI-ESM1-2-HR_*.nc \
         $opath/spco2_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_MPI-ESM1-2-LR_*.nc \
         $opath/spco2_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_NorESM2-MM_*.nc \
         $opath/spco2_NorESM2-MM_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2_UKESM1-0-LL_*.nc \
         $opath/spco2_UKESM1-0-LL_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 $ipath/spco2nat_NorESM2-LM_*.nc \
         $opath/spco2nat_NorESM2-LM_hist_1988-2014_1deg_IO_timmean.nc
