#!/bin/bash
set -xe

CDO="cdo -O -P 8"

ipath="/home/users/aditi/CMIP6/data/chl/clean"
opath="/home/users/aditi/CMIP6/data/analysis_IO/chl_mon_ts"

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_ACCESS-ESM1-5_*surf.nc \
             $opath/chl_ACCESS-ESM1-5_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_CanESM5_*surf.nc \
             $opath/chl_CanESM5_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_CanESM5-1_*surf.nc \
             $opath/chl_CanESM5-1_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_CESM2_*surf.nc \
             $opath/chl_CESM2_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_CESM2-FV2_*surf.nc \
             $opath/chl_CESM2-FV2_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_CESM2-WACCM_*surf.nc \
             $opath/chl_CESM2-WACCM_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_CESM2-WACCM-FV2_*surf.nc \
             $opath/chl_CESM2-WACCM-FV2_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_CMCC-ESM2_*surf.nc \
             $opath/chl_CMCC-ESM2_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e3 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_CNRM-ESM2-1_*surf.nc \
             $opath/chl_CNRM-ESM2-1_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_GFDL-CM4_*surf.nc \
              $opath/chl_GFDL-CM4_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_GFDL-ESM4_*surf.nc \
              $opath/chl_GFDL-ESM4_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e3 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_IPSL-CM5A2-INCA_*surf.nc \
              $opath/chl_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e3 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_IPSL-CM6A-LR_*surf.nc \
              $opath/chl_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e3 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_IPSL-CM6A-LR-INCA_*surf.nc \
              $opath/chl_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_MIROC-ES2L_*surf.nc \
              $opath/chl_MIROC-ES2L_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_MPI-ESM-1-2-HAM_*surf.nc \
              $opath/chl_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_MPI-ESM1-2-HR_*surf.nc \
              $opath/chl_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_MPI-ESM1-2-LR_*surf.nc \
              $opath/chl_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_NorESM2-LM_*surf.nc \
              $opath/chl_NorESM2-LM_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_NorESM2-MM_*surf.nc \
              $opath/chl_NorESM2-MM_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

$CDO -fldmean -mulc,1e6 -ymonmean -sellonlatbox,45,76,5,25 -selyear,1988/2014 $ipath/chl_UKESM1-0-LL_*surf.nc \
              $opath/chl_UKESM1-0-LL_hist_1988-2014_1deg_surf_monclim_AS_fldmean.nc

