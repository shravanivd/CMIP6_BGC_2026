#!/bin/bash
set -xe

CDO="cdo -O -P 8"

#path needs to be changed
#to add= CNRM-ESM2-1, MIROC-ES2L, UKESM1-0-LL
$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/ACCESS-ESM1-5/no3_*surf.nc ../data/climatology/no3/no3_ACCESS-ESM1-5_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/CanESM5/no3_*surf.nc ../data/climatology/no3/no3_CanESM5_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/CanESM5-1/no3_*surf.nc ../data/climatology/no3/no3_CanESM5-1_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/CESM2/no3_*surf.nc ../data/climatology/no3/no3_CESM2_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/CESM2-FV2/no3_*surf.nc ../data/climatology/no3/no3_CESM2-FV2_hist_1988-2014_1deg_surf_timmean.nc

#$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/CESM2-WACCM/no3_*surf.nc ../data/climatology/no3/no3_CESM2-WACCM_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/CESM2-WACCM-FV2/no3_*surf.nc ../data/climatology/no3/no3_CESM2-WACCM-FV2_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/CMCC-ESM2/no3_*surf.nc ../data/climatology/no3/no3_CMCC-ESM2_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/GFDL-ESM4/no3_*surf.nc ../data/climatology/no3/no3_GFDL-ESM4_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/IPSL-CM5A2-INCA/no3_*surf.nc ../data/climatology/no3/no3_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/IPSL-CM6A-LR/no3_*surf.nc ../data/climatology/no3/no3_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/IPSL-CM6A-LR-INCA/no3_*surf.nc ../data/climatology/no3/no3_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/MPI-ESM-1-2-HAM/no3_*surf.nc ../data/climatology/no3/no3_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/MPI-ESM1-2-HR/no3_*surf.nc ../data/climatology/no3/no3_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/MPI-ESM1-2-LR/no3_*surf.nc ../data/climatology/no3/no3_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/NorESM2-MM/no3_*surf.nc ../data/climatology/no3/no3_NorESM2-MM_hist_1988-2014_1deg_surf_timmean.nc

#$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/no3/NorESM2-LM/no3os_*.nc ../data/climatology/no3/no3_NorESM2-LM_hist_1988-2014_1deg_surf_timmean.nc




 

