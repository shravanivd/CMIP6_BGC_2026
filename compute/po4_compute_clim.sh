#!/bin/bash
set -xe

CDO="cdo -O -P 8"

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/po4/ACCESS-ESM1-5/po4_*surf.nc ../data/climatology/po4/po4_ACCESS-ESM1-5_hist_1955-2012_1deg_surf_timmean.nc


$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/po4/CESM2/po4_*surf.nc ../data/climatology/po4/po4_CESM2_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/po4/CESM2-FV2/po4_*surf.nc ../data/climatology/po4/po4_CESM2-FV2_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/po4/CESM2-WACCM/po4_*surf.nc ../data/climatology/po4/po4_CESM2-WACCM_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/po4/CESM2-WACCM-FV2/po4_*surf.nc ../data/climatology/po4/po4_CESM2-WACCM-FV2_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/po4/CMCC-ESM2/po4_*surf.nc ../data/climatology/po4/po4_CMCC-ESM2_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/po4/GFDL-CM4/po4_*surf.nc ../data/climatology/po4/po4_GFDL-CM4_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/po4/GFDL-ESM4/po4_*surf.nc ../data/climatology/po4/po4_GFDL-ESM4_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/po4/IPSL-CM5A2-INCA/po4_*surf.nc ../data/climatology/po4/po4_IPSL-CM5A2-INCA_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/po4/IPSL-CM6A-LR/po4_*surf.nc ../data/climatology/po4/po4_IPSL-CM6A-LR_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/po4/IPSL-CM6A-LR-INCA/po4_*surf.nc ../data/climatology/po4/po4_IPSL-CM6A-LR-INCA_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/po4/MPI-ESM-1-2-HAM/po4_*surf.nc ../data/climatology/po4/po4_MPI-ESM-1-2-HAM_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/po4/MPI-ESM1-2-HR/po4_*surf.nc ../data/climatology/po4/po4_MPI-ESM1-2-HR_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/po4/MPI-ESM1-2-LR/po4_*surf.nc ../data/climatology/po4/po4_MPI-ESM1-2-LR_hist_1955-2012_1deg_surf_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/po4/NorESM2-MM/po4_*surf.nc ../data/climatology/po4/po4_NorESM2-MM_hist_1955-2012_1deg_surf_timmean.nc

#$CDO -sellonlatbox,30,120,-30,30 -mulc,1000 -timmean -selyear,1988/2014 ../../clean/po4/NorESM2-LM/po4_*surf.nc ../data/climatology/po4/po4_NorESM2-LM_hist_1955-2012_1deg_surf_timmean.nc














 

