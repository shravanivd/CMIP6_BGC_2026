#!/bin/bash
set -xe

CDO="cdo -O -P 8"

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/si/CESM2/si_*surf.nc ../data/climatology/si/si_CESM2_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/si/CESM2-FV2/si_*surf.nc ../data/climatology/si/si_CESM2-FV2_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/si/CESM2-WACCM/si_*surf.nc ../data/climatology/si/si_CESM2-WACCM_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/si/CESM2-WACCM-FV2/si_*surf.nc ../data/climatology/si/si_CESM2-WACCM-FV2_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/si/CMCC-ESM2/si_*surf.nc ../data/climatology/si/si_CMCC-ESM2_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/si/GFDL-ESM4/si_*surf.nc ../data/climatology/si/si_GFDL-ESM4_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/si/IPSL-CM5A2-INCA/si_*surf.nc ../data/climatology/si/si_IPSL-CM5A2-INCA_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/si/IPSL-CM6A-LR/si_*surf.nc ../data/climatology/si/si_IPSL-CM6A-LR_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/si/IPSL-CM6A-LR-INCA/si_*surf.nc ../data/climatology/si/si_IPSL-CM6A-LR-INCA_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/si/MPI-ESM-1-2-HAM/si_*surf.nc ../data/climatology/si/si_MPI-ESM-1-2-HAM_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/si/MPI-ESM1-2-HR/si_*surf.nc ../data/climatology/si/si_MPI-ESM1-2-HR_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/si/MPI-ESM1-2-LR/si_*surf.nc ../data/climatology/si/si_MPI-ESM1-2-LR_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/si/NorESM2-MM/si_*surf.nc ../data/climatology/si/si_NorESM2-MM_hist_1955-2012_1deg_surf_timmean.nc

#$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/si/NorESM2-LM/si_*surf.nc ../data/climatology/si/si_NorESM2-LM_hist_1955-2012_1deg_surf_timmean.nc














 

