#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"
## variables in HPC: chl  DO  Fe  mlotst  Nitrate  pH  Phosphate  sal  Si  spco2  thetao

# As Si and pH data is not available, not computing reduce dim now

# For Chlorophyll
$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e6 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_JJAS.nc 
                    
$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                   $ipath/chl/reduce_dim/chl_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_ON.nc 

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                    $ipath/chl/reduce_dim/chl_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_DJF.nc 

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                    $ipath/chl/reduce_dim/chl_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_MAM.nc 



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e6 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \    
     $ipath/chl/clean/chl_CanESM5_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_CanESM5_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_CanESM5_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CanESM5_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_CanESM5_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CanESM5_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_CanESM5_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CanESM5_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_CanESM5_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CanESM5_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e6 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_CanESM5-1_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_CanESM5-1_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_CanESM5-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CanESM5-1_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_CanESM5-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CanESM5-1_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_CanESM5-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CanESM5-1_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_CanESM5-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CanESM5-1_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e8 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_CESM2_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_CESM2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_CESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CESM2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_CESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CESM2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_CESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CESM2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_CESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CESM2_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e8 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_CESM2-FV2_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_CESM2-FV2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CESM2-FV2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CESM2-FV2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CESM2-FV2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CESM2-FV2_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e8 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_CESM2-WACCM_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_CESM2-WACCM_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CESM2-WACCM_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CESM2-WACCM_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CESM2-WACCM_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CESM2-WACCM_hist_1988-2014_1deg_IO_MAM.nc
                      


$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e8 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_CESM2-WACCM-FV2_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_MAM.nc

                     

$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e6 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_CMCC-ESM2_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_CMCC-ESM2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CMCC-ESM2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                   $ipath/chl/reduce_dim/chl_CMCC-ESM2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CMCC-ESM2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CMCC-ESM2_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e3 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CNRM-ESM2-1_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CNRM-ESM2-1_hist_1988-2014_1deg_IO_ON.nc 

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CNRM-ESM2-1_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_CNRM-ESM2-1_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e6 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_GFDL-CM4_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_GFDL-CM4_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
                    $ipath/chl/reduce_dim/chl_GFDL-CM4_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
                    $ipath/chl/reduce_dim/chl_GFDL-CM4_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
                    $ipath/chl/reduce_dim/chl_GFDL-CM4_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
                    $ipath/chl/reduce_dim/chl_GFDL-CM4_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e6 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_GFDL-ESM4_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_GFDL-ESM4_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_GFDL-ESM4_hist_1988-2014_1deg_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_GFDL-ESM4_hist_1988-2014_1deg_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_GFDL-ESM4_hist_1988-2014_1deg_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_GFDL-ESM4_hist_1988-2014_1deg_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e3 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_IPSL-CM5A2-INCA_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e3 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_IPSL-CM6A-LR_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e3 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e6 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_MIROC-ES2L_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_MIROC-ES2L_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_MIROC-ES2L_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_MIROC-ES2L_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_MIROC-ES2L_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_MIROC-ES2L_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e6 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_MAM.nc

                     

$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e6 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_MPI-ESM1-2-HR_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_MAM.nc

                     

$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e6 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_MPI-ESM1-2-LR_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
                    $ipath/chl/reduce_dim/chl_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
                    $ipath/chl/reduce_dim/chl_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
                    $ipath/chl/reduce_dim/chl_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
                    $ipath/chl/reduce_dim/chl_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e6 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_NorESM2-LM_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_NorESM2-LM_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_NorESM2-LM_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_NorESM2-LM_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_NorESM2-LM_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_NorESM2-LM_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e6 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_NorESM2-MM_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_NorESM2-MM_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_NorESM2-MM_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_NorESM2-MM_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_NorESM2-MM_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_NorESM2-MM_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1e6 -selvar,chl -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/chl/clean/chl_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc \
     $ipath/chl/reduce_dim/chl_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/chl/reduce_dim/chl_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_UKESM1-0-LL_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/chl/reduce_dim/chl_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_UKESM1-0-LL_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/chl/reduce_dim/chl_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_UKESM1-0-LL_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/chl/reduce_dim/chl_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
                     $ipath/chl/reduce_dim/chl_UKESM1-0-LL_hist_1988-2014_1deg_IO_MAM.nc




# For Oxygen (DO)
$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_MAM.nc

                     

$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2_CanESM5_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_CanESM5_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_CanESM5_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_CanESM5_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_CanESM5_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_CanESM5_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_CanESM5_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_CanESM5_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_CanESM5_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_CanESM5_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2_CanESM5-1_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_CanESM5-1_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_CanESM5-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_CanESM5-1_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_CanESM5-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_CanESM5-1_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_CanESM5-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_CanESM5-1_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_CanESM5-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_CanESM5-1_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2_CMCC-ESM2_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_CMCC-ESM2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_CMCC-ESM2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_CMCC-ESM2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_CMCC-ESM2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_CMCC-ESM2_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_CNRM-ESM2-1_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_CNRM-ESM2-1_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_CNRM-ESM2-1_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_CNRM-ESM2-1_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2_GFDL-CM4_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_GFDL-CM4_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_GFDL-CM4_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_GFDL-CM4_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
                    $ipath/DO/reduce_dim/o2_GFDL-CM4_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_GFDL-CM4_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2_GFDL-ESM4_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_GFDL-ESM4_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_GFDL-ESM4_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_GFDL-ESM4_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                    $ipath/DO/reduce_dim/o2_GFDL-ESM4_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_GFDL-ESM4_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2_IPSL-CM5A2-INCA_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                    $ipath/DO/reduce_dim/o2_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2_IPSL-CM6A-LR_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                    $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                    $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2_MIROC-ES2L_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_MIROC-ES2L_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_MIROC-ES2L_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_MIROC-ES2L_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                    $ipath/DO/reduce_dim/o2_MIROC-ES2L_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_MIROC-ES2L_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
                    $ipath/DO/reduce_dim/o2_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2_MPI-ESM1-2-HR_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
                    $ipath/DO/reduce_dim/o2_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2_MPI-ESM1-2-LR_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
                    $ipath/DO/reduce_dim/o2_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2os_NorESM2-LM_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_NorESM2-LM_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_NorESM2-LM_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_NorESM2-LM_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
                    $ipath/DO/reduce_dim/o2_NorESM2-LM_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_NorESM2-LM_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2_NorESM2-MM_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_NorESM2-MM_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_NorESM2-MM_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_NorESM2-MM_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
                    $ipath/DO/reduce_dim/o2_NorESM2-MM_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_NorESM2-MM_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,o2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/DO/clean/o2_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc \
     $ipath/DO/reduce_dim/o2_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/DO/reduce_dim/o2_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
                     $ipath/DO/reduce_dim/o2_UKESM1-0-LL_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/DO/reduce_dim/o2_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_UKESM1-0-LL_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/DO/reduce_dim/o2_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
                    $ipath/DO/reduce_dim/o2_UKESM1-0-LL_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/DO/reduce_dim/o2_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
                   $ipath/DO/reduce_dim/o2_UKESM1-0-LL_hist_1988-2014_1deg_IO_MAM.nc




# # For Fe - Chk what unit to compute into and accordingly multiply
# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfeos_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_CESM2_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_CESM2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_CESM2-FV2_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_CESM2-FV2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_CESM2-WACCM_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_CESM2-WACCM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_CESM2-WACCM-FV2_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_CMCC-ESM2_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_CMCC-ESM2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_GFDL-CM4_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_GFDL-CM4_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_GFDL-ESM4_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_GFDL-ESM4_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_IPSL-CM5A2-INCA_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_IPSL-CM6A-LR_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_MIROC-ES2L_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_MIROC-ES2L_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_MPI-ESM1-2-HR_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_MPI-ESM1-2-LR_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfeos_NorESM2-LM_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_NorESM2-LM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_NorESM2-MM_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_NorESM2-MM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,dfe -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Fe/clean/dfe_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc \
#      $ipath/Fe/reduce_dim/dfe_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc



# For Nitrate
$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/Nitrate/reduce_dim/no3_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/Nitrate/reduce_dim/no3_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/Nitrate/reduce_dim/no3_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/Nitrate/reduce_dim/no3_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_MAM.nc
                     


$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_CanESM5_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_CanESM5_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_CanESM5_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_CanESM5_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_CanESM5_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_CanESM5_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_CanESM5_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_CanESM5_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_CanESM5_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_CanESM5_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_CanESM5-1_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_CanESM5-1_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_CanESM5-1_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_CanESM5-1_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_CanESM5-1_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_CanESM5-1_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_CanESM5-1_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_CanESM5-1_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_CanESM5-1_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_CanESM5-1_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_CESM2_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_CESM2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_CESM2_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_CESM2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_CESM2_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_CESM2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_CESM2_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_CESM2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_CESM2_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_CESM2_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_CESM2-FV2_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_CESM2-FV2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_CESM2-FV2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_CESM2-FV2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_CESM2-FV2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_CESM2-FV2_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_CESM2-WACCM_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_CESM2-WACCM-FV2_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_CMCC-ESM2_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_CMCC-ESM2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_CMCC-ESM2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_CMCC-ESM2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_CMCC-ESM2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_CMCC-ESM2_hist_1988-2014_1deg_IO_MAM.nc

                   

$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_CNRM-ESM2-1_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_CNRM-ESM2-1_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_CNRM-ESM2-1_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_CNRM-ESM2-1_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_GFDL-ESM4_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_GFDL-ESM4_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_GFDL-ESM4_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_GFDL-ESM4_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_GFDL-ESM4_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_GFDL-ESM4_hist_1988-2014_1deg_IO_MAM.nc

                   

$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_IPSL-CM5A2-INCA_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_MAM.nc

                   

$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_IPSL-CM6A-LR_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_MAM.nc

                   

$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_MIROC-ES2L_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_MIROC-ES2L_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_MIROC-ES2L_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_MIROC-ES2L_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_MIROC-ES2L_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_MIROC-ES2L_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_MAM.nc

                   

$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_MPI-ESM1-2-HR_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_MAM.nc

                   

$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_MPI-ESM1-2-LR_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_MAM.nc

                   

$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3os_NorESM2-LM_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_NorESM2-LM_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_NorESM2-LM_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_NorESM2-LM_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_NorESM2-LM_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_NorESM2-LM_hist_1988-2014_1deg_IO_MAM.nc

                   

$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_NorESM2-MM_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_NorESM2-MM_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_NorESM2-MM_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_NorESM2-MM_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_NorESM2-MM_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_NorESM2-MM_hist_1988-2014_1deg_IO_MAM.nc

                   

$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,no3 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Nitrate/clean/no3_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc \
     $ipath/Nitrate/reduce_dim/no3_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Nitrate/reduce_dim/no3_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_UKESM1-0-LL_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Nitrate/reduce_dim/no3_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_UKESM1-0-LL_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Nitrate/reduce_dim/no3_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
                    $ipath/Nitrate/reduce_dim/no3_UKESM1-0-LL_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Nitrate/reduce_dim/no3_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
                   $ipath/Nitrate/reduce_dim/no3_UKESM1-0-LL_hist_1988-2014_1deg_IO_MAM.nc


                   

# For Phosphate
$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_MAM.nc

                     

$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_CESM2_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_CESM2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_CESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_CESM2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_CESM2_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_CESM2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_CESM2_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_CESM2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_CESM2_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_CESM2_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_CESM2-FV2_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_CESM2-FV2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_CESM2-FV2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_CESM2-FV2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_CESM2-FV2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_CESM2-FV2_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_CESM2-WACCM_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_CESM2-WACCM-FV2_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_CMCC-ESM2_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_CMCC-ESM2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_CMCC-ESM2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_CMCC-ESM2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_CMCC-ESM2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_CMCC-ESM2_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_CNRM-ESM2-1_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_CNRM-ESM2-1_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_CNRM-ESM2-1_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_CNRM-ESM2-1_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_GFDL-CM4_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_GFDL-CM4_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_GFDL-CM4_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_GFDL-CM4_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_GFDL-CM4_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_GFDL-CM4_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_GFDL-ESM4_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_GFDL-ESM4_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_GFDL-ESM4_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_GFDL-ESM4_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_GFDL-ESM4_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_GFDL-ESM4_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_IPSL-CM5A2-INCA_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_IPSL-CM6A-LR_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                  $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_MIROC-ES2L_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_MIROC-ES2L_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_MIROC-ES2L_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                  $ipath/Phosphate/reduce_dim/po4_MIROC-ES2L_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_MIROC-ES2L_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_MIROC-ES2L_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc \
                  $ipath/Phosphate/reduce_dim/po4_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_MPI-ESM1-2-HR_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_MPI-ESM1-2-LR_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4os_NorESM2-LM_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_NorESM2-LM_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_NorESM2-LM_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_NorESM2-LM_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_NorESM2-LM_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_NorESM2-LM_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_NorESM2-LM_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_NorESM2-MM_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_NorESM2-MM_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_NorESM2-MM_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_NorESM2-MM_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_NorESM2-MM_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_NorESM2-MM_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_NorESM2-MM_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,po4 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/Phosphate/clean/po4_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc \
     $ipath/Phosphate/reduce_dim/po4_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/Phosphate/reduce_dim/po4_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_UKESM1-0-LL_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/Phosphate/reduce_dim/po4_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
                   $ipath/Phosphate/reduce_dim/po4_UKESM1-0-LL_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/Phosphate/reduce_dim/po4_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
                     $ipath/Phosphate/reduce_dim/po4_UKESM1-0-LL_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/Phosphate/reduce_dim/po4_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc \
                    $ipath/Phosphate/reduce_dim/po4_UKESM1-0-LL_hist_1988-2014_1deg_IO_MAM.nc




# For sal
$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/sal/reduce_dim/so_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/sal/reduce_dim/so_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/sal/reduce_dim/so_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/sal/reduce_dim/so_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_ACCESS-ESM1-5_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_CanESM5_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_CanESM5_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/sal/reduce_dim/so_CanESM5_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CanESM5_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/sal/reduce_dim/so_CanESM5_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CanESM5_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/sal/reduce_dim/so_CanESM5_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CanESM5_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/sal/reduce_dim/so_CanESM5_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CanESM5_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_CanESM5-1_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_CanESM5-1_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/sal/reduce_dim/so_CanESM5-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CanESM5-1_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/sal/reduce_dim/so_CanESM5-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CanESM5-1_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/sal/reduce_dim/so_CanESM5-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CanESM5-1_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/sal/reduce_dim/so_CanESM5-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CanESM5-1_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_CESM2_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_CESM2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/sal/reduce_dim/so_CESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CESM2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/sal/reduce_dim/so_CESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CESM2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/sal/reduce_dim/so_CESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CESM2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/sal/reduce_dim/so_CESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CESM2_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_CESM2-FV2_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_CESM2-FV2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/sal/reduce_dim/so_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CESM2-FV2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/sal/reduce_dim/so_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CESM2-FV2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/sal/reduce_dim/so_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CESM2-FV2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/sal/reduce_dim/so_CESM2-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CESM2-FV2_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_CESM2-WACCM_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_CESM2-WACCM_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/sal/reduce_dim/so_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CESM2-WACCM_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/sal/reduce_dim/so_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CESM2-WACCM_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/sal/reduce_dim/so_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CESM2-WACCM_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/sal/reduce_dim/so_CESM2-WACCM_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CESM2-WACCM_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_CESM2-WACCM-FV2_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/sal/reduce_dim/so_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/sal/reduce_dim/so_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/sal/reduce_dim/so_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/sal/reduce_dim/so_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_CMCC-ESM2_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_CMCC-ESM2_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/sal/reduce_dim/so_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CMCC-ESM2_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/sal/reduce_dim/so_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CMCC-ESM2_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/sal/reduce_dim/so_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CMCC-ESM2_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/sal/reduce_dim/so_CMCC-ESM2_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CMCC-ESM2_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/sal/reduce_dim/so_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CNRM-ESM2-1_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/sal/reduce_dim/so_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CNRM-ESM2-1_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/sal/reduce_dim/so_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CNRM-ESM2-1_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/sal/reduce_dim/so_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_CNRM-ESM2-1_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_GFDL-CM4_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_GFDL-CM4_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/sal/reduce_dim/so_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_GFDL-CM4_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/sal/reduce_dim/so_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_GFDL-CM4_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/sal/reduce_dim/so_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_GFDL-CM4_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/sal/reduce_dim/so_GFDL-CM4_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_GFDL-CM4_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_GFDL-ESM4_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_GFDL-ESM4_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/sal/reduce_dim/so_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_GFDL-ESM4_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/sal/reduce_dim/so_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_GFDL-ESM4_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/sal/reduce_dim/so_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_GFDL-ESM4_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/sal/reduce_dim/so_GFDL-ESM4_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_GFDL-ESM4_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_IPSL-CM5A2-INCA_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/sal/reduce_dim/so_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/sal/reduce_dim/so_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/sal/reduce_dim/so_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/sal/reduce_dim/so_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_IPSL-CM6A-LR_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/sal/reduce_dim/so_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/sal/reduce_dim/so_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/sal/reduce_dim/so_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/sal/reduce_dim/so_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_IPSL-CM6A-LR_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/sal/reduce_dim/so_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/sal/reduce_dim/so_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/sal/reduce_dim/so_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/sal/reduce_dim/so_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_MIROC-ES2L_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_MIROC-ES2L_hist_1988-2014_1deg_IO.nc

$CDO -selmon,6,7,8,9 $ipath/sal/reduce_dim/so_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_MIROC-ES2L_hist_1988-2014_1deg_IO_JJAS.nc

$CDO -selmon,10,11 $ipath/sal/reduce_dim/so_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_MIROC-ES2L_hist_1988-2014_1deg_IO_ON.nc

$CDO -selmon,12,1,2 $ipath/sal/reduce_dim/so_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_MIROC-ES2L_hist_1988-2014_1deg_IO_DJF.nc

$CDO -selmon,3,4,5 $ipath/sal/reduce_dim/so_MIROC-ES2L_hist_1988-2014_1deg_IO.nc \
                     $ipath/sal/reduce_dim/so_MIROC-ES2L_hist_1988-2014_1deg_IO_MAM.nc



$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc






$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_MPI-ESM1-2-HR_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_MPI-ESM1-2-LR_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_NorESM2-LM_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_NorESM2-LM_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_NorESM2-MM_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_NorESM2-MM_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,so -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/sal/clean/so_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc \
     $ipath/sal/reduce_dim/so_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc



# For thetao
$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_CanESM5_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_CanESM5_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_CanESM5-1_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_CanESM5-1_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_CESM2_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_CESM2_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_CESM2-FV2_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_CESM2-FV2_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_CESM2-WACCM_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_CESM2-WACCM_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_CESM2-WACCM-FV2_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_CMCC-ESM2_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_CMCC-ESM2_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_GFDL-CM4_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_GFDL-CM4_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_GFDL-ESM4_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_GFDL-ESM4_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_IPSL-CM5A2-INCA_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_IPSL-CM6A-LR_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_MIROC-ES2L_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_MIROC-ES2L_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_MPI-ESM1-2-HR_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_MPI-ESM1-2-LR_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_NorESM2-LM_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_NorESM2-LM_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_NorESM2-MM_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_NorESM2-MM_hist_1988-2014_1deg_IO.nc

$CDO -b F32 --reduce_dim -sellevidx,1 -selvar,thetao -selyear,1988/2014 -sellonlatbox,30,120,-30,30 \
     $ipath/thetao/clean/thetao_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc \
     $ipath/thetao/reduce_dim/thetao_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc



# # For spco2 - No levels in mlotst and spco2
# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_ACCESS-ESM1-5_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_CanESM5_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_CanESM5_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_CanESM5-1_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_CanESM5-1_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_CESM2_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_CESM2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_CESM2-FV2_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_CESM2-FV2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_CESM2-WACCM_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_CESM2-WACCM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_CESM2-WACCM-FV2_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_CMCC-ESM2_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_CMCC-ESM2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_CNRM-ESM2-1_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_GFDL-CM4_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_GFDL-CM4_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_GFDL-ESM4_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_GFDL-ESM4_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_IPSL-CM6A-LR_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_MIROC-ES2L_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_MIROC-ES2L_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_MPI-ESM1-2-HR_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_MPI-ESM1-2-LR_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_NorESM2-MM_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_NorESM2-MM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,spco2 -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/spco2/clean/spco2_UKESM1-0-LL_hist_1950-2014_1deg.nc \
#      $ipath/spco2/reduce_dim/spco2_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc



# # For mlotst
# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_ACCESS-ESM1-5_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_ACCESS-ESM1-5_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_CanESM5_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_CanESM5_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_CanESM5-1_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_CanESM5-1_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_CESM2_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_CESM2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_CESM2-FV2_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_CESM2-FV2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_CESM2-WACCM_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_CESM2-WACCM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_CESM2-WACCM-FV2_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_CMCC-ESM2_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_CMCC-ESM2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_CNRM-ESM2-1_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_GFDL-CM4_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_GFDL-CM4_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_GFDL-ESM4_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_GFDL-ESM4_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_IPSL-CM5A2-INCA_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_IPSL-CM6A-LR_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc

# # To be computed
# # $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_MIROC-ES2L_hist_1950-2014_1deg.nc \
# #      $ipath/mlotst/reduce_dim/mlotst_MIROC-ES2L_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_MPI-ESM-1-2-HAM_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_MPI-ESM1-2-HR_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_MPI-ESM1-2-LR_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc

# # To be computed
# # $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_NorESM2-LM_hist_1950-2014_1deg.nc \
# #      $ipath/mlotst/reduce_dim/mlotst_NorESM2-LM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_NorESM2-MM_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_NorESM2-MM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,mlotst -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/mlotst/clean/mlotst_UKESM1-0-LL_hist_1950-2014_1deg.nc \
#      $ipath/mlotst/reduce_dim/mlotst_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc



# # To download raw files for Si and pH first
# # For Si
# $CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,si -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Si/clean/si_CESM2_hist_1950-2014_1deg_surf.nc \
#      $ipath/Si/reduce_dim/si_CESM2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,si -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Si/clean/si_CESM2-FV2_hist_1950-2014_1deg_surf.nc \
#      $ipath/Si/reduce_dim/si_CESM2-FV2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,si -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Si/clean/si_CESM2-WACCM_hist_1950-2014_1deg_surf.nc \
#      $ipath/Si/reduce_dim/si_CESM2-WACCM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,si -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Si/clean/si_CESM2-WACCM-FV2_hist_1950-2014_1deg_surf.nc \
#      $ipath/Si/reduce_dim/si_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,si -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Si/clean/si_CMCC-ESM2_hist_1950-2014_1deg_surf.nc \
#      $ipath/Si/reduce_dim/si_CMCC-ESM2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,si -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Si/clean/si_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc \
#      $ipath/Si/reduce_dim/si_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,si -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Si/clean/si_GFDL-ESM4_hist_1950-2014_1deg_surf.nc \
#      $ipath/Si/reduce_dim/si_GFDL-ESM4_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,si -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Si/clean/si_IPSL-CM5A2-INCA_hist_1950-2014_1deg_surf.nc \
#      $ipath/Si/reduce_dim/si_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,si -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Si/clean/si_IPSL-CM6A-LR_hist_1950-2014_1deg_surf.nc \
#      $ipath/Si/reduce_dim/si_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,si -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Si/clean/si_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg_surf.nc \
#      $ipath/Si/reduce_dim/si_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,si -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Si/clean/si_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc \
#      $ipath/Si/reduce_dim/si_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,si -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Si/clean/si_MPI-ESM1-2-HR_hist_1950-2014_1deg_surf.nc \
#      $ipath/Si/reduce_dim/si_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,si -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Si/clean/si_MPI-ESM1-2-LR_hist_1950-2014_1deg_surf.nc \
#      $ipath/Si/reduce_dim/si_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,si -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Si/clean/sios_NorESM2-LM_hist_1950-2014_1deg_surf.nc \
#      $ipath/Si/reduce_dim/si_NorESM2-LM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,si -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Si/clean/si_NorESM2-MM_hist_1950-2014_1deg_surf.nc \
#      $ipath/Si/reduce_dim/si_NorESM2-MM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -mulc,1000 -selvar,si -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/Si/clean/si_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc \
#      $ipath/Si/reduce_dim/si_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc



# # For pH
# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_CESM2_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_CESM2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_CESM2-FV2_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_CESM2-FV2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_CESM2-WACCM_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_CESM2-WACCM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_CESM2-WACCM-FV2_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_CESM2-WACCM-FV2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_CMCC-ESM2_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_CMCC-ESM2_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_CNRM-ESM2-1_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_CNRM-ESM2-1_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_GFDL-CM4_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_GFDL-CM4_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_GFDL-ESM4_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_GFDL-ESM4_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_IPSL-CM5A2-INCA_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_IPSL-CM5A2-INCA_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_IPSL-CM6A-LR_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_IPSL-CM6A-LR_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_IPSL-CM6A-LR-INCA_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_MIROC-ES2L_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_MIROC-ES2L_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_MPI-ESM-1-2-HAM_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_MPI-ESM1-2-HR_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_MPI-ESM1-2-HR_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_MPI-ESM1-2-LR_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_MPI-ESM1-2-LR_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_NorESM2-LM_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_NorESM2-LM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_NorESM2-MM_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_NorESM2-MM_hist_1988-2014_1deg_IO.nc

# $CDO -b F32 --reduce_dim -sellevidx,1 -selvar,ph -selyear,1988/2014 -sellonlatbox,30,120,-30,30 $ipath/pH/clean/ph_UKESM1-0-LL_hist_1950-2014_1deg_surf.nc \
#      $ipath/pH/reduce_dim/ph_UKESM1-0-LL_hist_1988-2014_1deg_IO.nc
