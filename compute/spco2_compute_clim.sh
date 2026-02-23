#!/bin/bash
set -xe

CDO="cdo -O -P 8"

#NorESM2-LM has spco2nat which is not with me
#IPSL-CM5A2-INCA has no spco2 var

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 ../../clean/spco2/ACCESS-ESM1-5/spco2_*.nc ../data/climatology/spco2/spco2_ACCESS-ESM1-5_hist_1988-2014_1deg_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 ../../clean/spco2/CanESM5/spco2_*.nc ../data/climatology/spco2/spco2_CanESM5_hist_1988-2014_1deg_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 ../../clean/spco2/CanESM5-1/spco2_*.nc ../data/climatology/spco2/spco2_CanESM5-1_hist_1988-2014_1deg_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 ../../clean/spco2/CESM2/spco2_*.nc ../data/climatology/spco2/spco2_CESM2_hist_1988-2014_1deg_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 ../../clean/spco2/CESM2-FV2/spco2_*.nc ../data/climatology/spco2/spco2_CESM2-FV2_hist_1988-2014_1deg_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 ../../clean/spco2/CESM2-WACCM/spco2_*.nc ../data/climatology/spco2/spco2_CESM2-WACCM_hist_1988-2014_1deg_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 ../../clean/spco2/CESM2-WACCM-FV2/spco2_*.nc ../data/climatology/spco2/spco2_CESM2-WACCM-FV2_hist_1988-2014_1deg_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 ../../clean/spco2/CMCC-ESM2/spco2_*.nc ../data/climatology/spco2/spco2_CMCC-ESM2_hist_1988-2014_1deg_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 ../../clean/spco2/GFDL-CM4/spco2_*.nc ../data/climatology/spco2/spco2_GFDL-CM4_hist_1988-2014_1deg_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 ../../clean/spco2/GFDL-ESM4/spco2_*.nc ../data/climatology/spco2/spco2_GFDL-ESM4_hist_1988-2014_1deg_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 ../../clean/spco2/IPSL-CM6A-LR/spco2_*.nc ../data/climatology/spco2/spco2_IPSL-CM6A-LR_hist_1988-2014_1deg_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 ../../clean/spco2/IPSL-CM6A-LR-INCA/spco2_*.nc ../data/climatology/spco2/spco2_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 ../../clean/spco2/MPI-ESM-1-2-HAM/spco2_*.nc ../data/climatology/spco2/spco2_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 ../../clean/spco2/MPI-ESM1-2-HR/spco2_*.nc ../data/climatology/spco2/spco2_MPI-ESM1-2-HR_hist_1988-2014_1deg_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 ../../clean/spco2/MPI-ESM1-2-LR/spco2_*.nc ../data/climatology/spco2/spco2_MPI-ESM1-2-LR_hist_1988-2014_1deg_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,9.86923 -timmean -selyear,1988/2014 ../../clean/spco2/NorESM2-MM/spco2_*.nc ../data/climatology/spco2/spco2_NorESM2-MM_hist_1988-2014_1deg_timmean.nc

