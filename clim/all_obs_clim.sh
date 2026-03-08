#!/bin/bash
set -xe

CDO="cdo -O -P 8"

ipath="/home/users/aditi/observations"

# To compute climatology of all observational files

# chl (mg/m3)
$CDO -sellonlatbox,30,120,-30,30 -timmean -chname,chlor_a,chl $ipath/chl/CCI_v6.0-mon_global_1998-2024_1deg.nc \
         $ipath/chl/CCI_v6.0-mon_1998-2024_1deg_IO_timmean.nc

# Nitrate (µmol/kg to mmol/m3)
$CDO -sellonlatbox,30,120,-30,30 -mulc,1.025 -timmean -sellevidx,1 -selvar,no3 -chname,n_an,no3 $ipath/Nitrate/nitrate_woa_clim_monthly.nc \
         $ipath/Nitrate/nitrate_woa_clim_monthly_IO_timmean.nc

# Phosphate (µmol/kg to mmol/m3)
$CDO -sellonlatbox,30,120,-30,30 -mulc,1.025 -timmean -sellevidx,1 -selvar,po4 -chname,p_an,po4 $ipath/Phosphate/phosphate_woa_clim_monthly.nc \
         $ipath/Phosphate/phosphate_woa_clim_monthly_IO_timmean.nc

# Silicate (µmol/kg to mmol/m3)
$CDO -sellonlatbox,30,120,-30,30 -mulc,1.025 -timmean -sellevidx,1 -selvar,si -chname,i_an,si $ipath/Si/silicate_woa_clim_monthly.nc \
         $ipath/Si/silicate_woa_clim_monthly_IO_timmean.nc

# Oxygen (µmol/kg to mmol/m3)
$CDO -sellonlatbox,30,120,-30,30 -mulc,1.025 -timmean -sellevidx,1 -selvar,o2 -chname,o_an,o2 $ipath/DO/oxygen_woa_clim_monthly.nc \
         $ipath/DO/oxygen_woa_clim_monthly_IO_timmean.nc

# mlotst (m)
$CDO -sellonlatbox,30,120,-30,30 -timmean -selvar,mlotst -chname,somxl010,mlotst -selyear,1998/2024 $ipath/mlotst/mld_ORAS5_1988-2024_1deg.nc \
         $ipath/mlotst/mld_ORAS5_1998-2024_1deg_IO_timmean.nc

# spco2 (µatm)
$CDO -sellonlatbox,30,120,-30,30 -timmean -selvar,spco2 -chname,fco2_ave_weighted,spco2 -selyear,1988/2014 $ipath/spco2/SOCATv2025_fco2_mon.nc \
         $ipath/spco2/SOCATv2025_1988-2014_mon_IO_timmean.nc

# Temperature (°C)
$CDO -sellonlatbox,30,120,-30,30 -timmean -sellevidx,1 -selvar,thetao -chname,votemper,thetao $ipath/temperature/temperature_ORAS5_1998-2024_1deg_surf.nc \
         $ipath/temperature/temperature_ORAS5_1998-2024_1deg_IO_timmean.nc

# Salinity (PSU)
$CDO -sellonlatbox,30,120,-30,30 -timmean -sellevidx,1 -selvar,so -chname,vosaline,so $ipath/salinity/salinity_ORAS5_1998-2024_1deg_surf.nc \
         $ipath/salinity/salinity_ORAS5_1998-2024_1deg_IO_timmean.nc

# pH
$CDO -sellonlatbox,30,120,-30,30 -selvar,ph -chname,pHtsinsitutp,ph $ipath/ph/GLODAPv2.2016b.pHtsinsitutp.nc \
         $ipath/ph/GLODAPv2_2016b_ph_IO_timmean.nc

# Check obs of Iron for GEOTRACES, time dimension problem
