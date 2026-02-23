#!/bin/bash
set -xe

CDO="cdo -O -P 8"

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/ACCESS-ESM1-5/o2_*surf.nc ../data/climatology/o2/o2_ACCESS-ESM1-5_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/CanESM5/o2_*surf.nc ../data/climatology/o2/o2_CanESM5_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/CanESM5-1/o2_*surf.nc ../data/climatology/o2/o2_CanESM5-1_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/CMCC-ESM2/o2_*surf.nc ../data/climatology/o2/o2_CMCC-ESM2_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/GFDL-CM4/o2_*surf.nc ../data/climatology/o2/o2_GFDL-CM4_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/GFDL-ESM4/o2_*surf.nc ../data/climatology/o2/o2_GFDL-ESM4_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/IPSL-CM5A2-INCA/o2_*surf.nc ../data/climatology/o2/o2_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/IPSL-CM6A-LR/o2_*surf.nc ../data/climatology/o2/o2_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/IPSL-CM6A-LR-INCA/o2_*surf.nc ../data/climatology/o2/o2_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/MPI-ESM-1-2-HAM/o2_*surf.nc ../data/climatology/o2/o2_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/MPI-ESM1-2-HR/o2_*surf.nc ../data/climatology/o2/o2_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/MPI-ESM1-2-LR/o2_*surf.nc ../data/climatology/o2/o2_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/NorESM2-MM/o2_*surf.nc ../data/climatology/o2/o2_NorESM2-MM_hist_1988-2014_1deg_surf_timmean.nc

#$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/CNRM-ESM2-1/o2_*surf.nc ../data/climatology/o2/o2_NorESM2-MM_hist_1988-2014_1deg_surf_timmean.nc

#$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/MIROC-ES2L/o2_*surf.nc ../data/climatology/o2/o2_MIROC-ES2L_hist_1988-2014_1deg_surf_timmean.nc

#$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/NorESM2-LM/o2os_*surf.nc ../data/climatology/o2/o2os_NorESM2-LM_hist_1988-2014_1deg_surf_timmean.nc

#$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/o2/UKESM1-0-LL/o2_*surf.nc ../data/climatology/o2/o2_UKESM1-0-LL_hist_1988-2014_1deg_surf_timmean.nc





 

