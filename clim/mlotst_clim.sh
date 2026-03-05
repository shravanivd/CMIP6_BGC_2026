#!/bin/bash
set -xe

CDO="cdo -O -P 8"

ipath="../../clean/mlotst"
opath="../data/climatology/mlotst"

#To be computed for: MIROC-ES2L, NorESM2-LM

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_ACCESS-ESM1-5_*.nc \
         $opath/mlotst_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_CanESM5_*.nc \
         $opath/mlotst_CanESM5_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_CanESM5-1_*.nc \
         $opath/mlotst_CanESM5-1_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_CESM2_*.nc \
         $opath/mlotst_CESM2_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_CESM2-FV2_*.nc \
         $opath/mlotst_CESM2-FV2_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_CESM2-WACCM_*.nc \
         $opath/mlotst_CESM2-WACCM_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_CESM2-WACCM-FV2_*.nc \
         $opath/mlotst_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_CMCC-ESM2_*.nc \
         $opath/mlotst_CMCC-ESM2_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_CNRM-ESM2-1_*.nc \
         $opath/mlotst_CNRM-ESM2-1_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_GFDL-CM4_*.nc \
         $opath/mlotst_GFDL-CM4_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_GFDL-ESM4_*.nc \
         $opath/mlotst_GFDL-ESM4_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_IPSL-CM5A2-INCA_*.nc \
         $opath/mlotst_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_IPSL-CM6A-LR_*.nc \
         $opath/mlotst_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_IPSL-CM6A-LR-INCA_*.nc \
         $opath/mlotst_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_timmean.nc
         
#$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_MIROC-ES2L_*.nc \
#         $opath/mlotst_MIROC-ES2L_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_MPI-ESM-1-2-HAM_*.nc \
         $opath/mlotst_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_MPI-ESM1-2-HR_*.nc \
         $opath/mlotst_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_MPI-ESM1-2-LR_*.nc \
         $opath/mlotst_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_timmean.nc

#$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_NorESM2-LM_*.nc \
#         $opath/mlotst_NorESM2-LM_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_NorESM2-MM_*.nc \
         $opath/mlotst_NorESM2-MM_hist_1988-2014_1deg_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -timmean -selyear,1988/2014 $ipath/mlotst_UKESM1-0-LL_*.nc \
         $opath/mlotst_UKESM1-0-LL_hist_1988-2014_1deg_IO_timmean.nc
