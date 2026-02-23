#!/bin/bash
set -xe

CDO="cdo -O -P 8"

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e6 -timmean -selyear,1988/2014 ../../clean/chl/ACCESS_ESM1_5/chl_*surf.nc ../data/clim_IO/chl_ACCESS-ESM1-5_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e6 -timmean -selyear,1988/2014 ../../clean/chl/CanESM5/chl_*surf.nc ../data/clim_IO/chl_CanESM5_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e6 -timmean -selyear,1988/2014 ../../clean/chl/CanESM5_1/chl_*surf.nc ../data/clim_IO/chl_CanESM5-1_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e6 -timmean -selyear,1988/2014 ../../clean/chl/CESM2/chl_*surf.nc ../data/clim_IO/chl_CESM2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e6 -timmean -selyear,1988/2014 ../../clean/chl/CESM2_FV2/chl_*surf.nc ../data/clim_IO/chl_CESM2-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e6 -timmean -selyear,1988/2014 ../../clean/chl/CESM2_WACCM/chl_*surf.nc ../data/clim_IO/chl_CESM2-WACCM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e6 -timmean -selyear,1988/2014 ../../clean/chl/CESM2_WACCM_FV2/chl_*surf.nc ../data/clim_IO/chl_CESM2-WACCM-FV2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e6 -timmean -selyear,1988/2014 ../../clean/chl/CMCC_ESM2/chl_*surf.nc ../data/clim_IO/chl_CMCC-ESM2_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e6 -timmean -selyear,1988/2014 ../../clean/chl/GFDL_CM4/chl_*surf.nc ../data/clim_IO/chl_GFDL-CM4_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e6 -timmean -selyear,1988/2014 ../../clean/chl/GFDL_ESM4/chl_*surf.nc ../data/clim_IO/chl_GFDL-ESM4_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e3 -timmean -selyear,1988/2014 ../../clean/chl/IPSL_CM5A2_INCA/chl_*surf.nc ../data/clim_IO/chl_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e3 -timmean -selyear,1988/2014 ../../clean/chl/IPSL_CM6A_LR/chl_*surf.nc ../data/clim_IO/chl_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e3 -timmean -selyear,1988/2014 ../../clean/chl/IPSL_CM6A_LR_INCA/chl_*surf.nc ../data/clim_IO/chl_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e6 -timmean -selyear,1988/2014 ../../clean/chl/MPI_ESM_1_2_HAM/chl_*surf.nc ../data/clim_IO/chl_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e6 -timmean -selyear,1988/2014 ../../clean/chl/MPI_ESM1_2_HR/chl_*surf.nc ../data/clim_IO/chl_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e6 -timmean -selyear,1988/2014 ../../clean/chl/MPI_ESM1_2_LR/chl_*surf.nc ../data/clim_IO/chl_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e6 -timmean -selyear,1988/2014 ../../clean/chl/NorESM2_LM/chl_*surf.nc ../data/clim_IO/chl_NorESM2-LM_hist_1988-2014_1deg_surf_IO_timmean.nc

$CDO -sellonlatbox,30,120,-30,30 -mulc,1e6 -timmean -selyear,1988/2014 ../../clean/chl/NorESM2_MM/chl_*surf.nc ../data/clim_IO/chl_NorESM2-MM_hist_1988-2014_1deg_surf_IO_timmean.nc



