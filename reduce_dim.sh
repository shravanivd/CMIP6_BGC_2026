#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"
## variables in HPC: chl  DO  Fe  mlotst  Nitrate  pH  Phosphate  sal  Si  spco2  thetao

# For Chlorophyll
$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_CanESM5_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_CanESM5_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_CanESM5-1_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_CanESM5-1_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_CESM2_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_CESM2_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_CESM2-FV2_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_CESM2-FV2_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_CESM2-WACCM_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_CESM2-WACCM_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_CESM2-WACCM-FV2_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_CMCC-ESM2_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_CMCC-ESM2_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_GFDL-CM4_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_GFDL-CM4_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_GFDL-ESM4_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_GFDL-ESM4_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_IPSL-CM5A2-INCA_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_IPSL-CM6A-LR_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_MIROC-ES2L_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_MIROC-ES2L_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_MPI-ESM1-2-HR_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_MPI-ESM1-2-LR_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_NorESM2-LM_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_NorESM2-LM_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_NorESM2-MM_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_NorESM2-MM_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/chl/clean/chl_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc

# For Oxygen
