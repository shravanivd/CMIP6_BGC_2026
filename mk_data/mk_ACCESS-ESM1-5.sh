#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"
## variables in HPC: chl  DO  Fe  mlotst  Nitrate  pH  Phosphate  sal  Si  spco2  thetao


#chlorophyll already present as clean file

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/thetao/raw/ACCESS-ESM1-5/thetao_Omon_ACCESS-ESM1-5_historical*.nc $ipath/thetao/clean/thetao_ACCESS-ESM1-5_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/thetao/clean/thetao_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/thetao/clean/thetao_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/thetao/clean/thetao_ACCESS-ESM1-5_hist_1950-2014_0-200.nc
rm $ipath/thetao/clean/thetao_ACCESS-ESM1-5_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/sal/raw/ACCESS-ESM1-5/so_Omon_ACCESS-ESM1-5_historical*.nc $ipath/sal/clean/so_ACCESS-ESM1-5_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/sal/clean/so_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/sal/clean/so_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/sal/clean/so_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/sal/clean/so_ACCESS-ESM1-5_hist_1950-2014_0-200.nc
rm $ipath/sal/clean/so_ACCESS-ESM1-5_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/mlotst/raw/ACCESS-ESM1-5/mlotst_Omon_ACCESS-ESM1-5_historical*.nc $ipath/mlotst/clean/mlotst_ACCESS-ESM1-5_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/mlotst/clean/mlotst_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/mlotst/clean/mlotst_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/mlotst/clean/mlotst_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/mlotst/clean/mlotst_ACCESS-ESM1-5_hist_1950-2014_0-200.nc
rm $ipath/mlotst/clean/mlotst_ACCESS-ESM1-5_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/spco2/raw/ACCESS-ESM1-5/spco2_Omon_ACCESS-ESM1-5_historical*.nc $ipath/spco2/clean/spco2_ACCESS-ESM1-5_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/spco2/clean/spco2_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/spco2/clean/spco2_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/spco2/clean/spco2_ACCESS-ESM1-5_hist_1950-2014_0-200.nc
rm $ipath/spco2/clean/spco2_ACCESS-ESM1-5_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Nitrate/raw/ACCESS-ESM1-5/no3_Omon_ACCESS-ESM1-5_historical*.nc $ipath/Nitrate/clean/no3_ACCESS-ESM1-5_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Nitrate/clean/no3_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Nitrate/clean/no3_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/Nitrate/clean/no3_ACCESS-ESM1-5_hist_1950-2014_0-200.nc
rm $ipath/Nitrate/clean/no3_ACCESS-ESM1-5_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Phosphate/raw/ACCESS-ESM1-5/po4_Omon_ACCESS-ESM1-5_historical*.nc $ipath/Phosphate/clean/po4_ACCESS-ESM1-5_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Phosphate/clean/po4_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Phosphate/clean/po4_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/Phosphate/clean/po4_ACCESS-ESM1-5_hist_1950-2014_0-200.nc
rm $ipath/Phosphate/clean/po4_ACCESS-ESM1-5_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/DO/raw/ACCESS-ESM1-5/o2_Omon_ACCESS-ESM1-5_historical*.nc $ipath/DO/clean/o2_ACCESS-ESM1-5_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/DO/clean/o2_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/DO/clean/o2_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/DO/clean/o2_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/DO/clean/o2_ACCESS-ESM1-5_hist_1950-2014_0-200.nc
rm $ipath/DO/clean/o2_ACCESS-ESM1-5_hist_1950-2014_1deg.nc

$CDO -remapbil,r360x180 -selyear,1950/2014 -mergetime $ipath/Fe/raw/ACCESS-ESM1-5/dfeos_Omon_ACCESS-ESM1-5_historical*.nc $ipath/Fe/clean/dfeos_ACCESS-ESM1-5_hist_1950-2014_1deg.nc
$CDO -sellevidx,1 $ipath/Fe/clean/dfeos_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfeos_ACCESS-ESM1-5_hist_1950-2014_1deg_surf.nc
$CDO -sellevidx,1/20 $ipath/Fe/clean/dfeos_ACCESS-ESM1-5_hist_1950-2014_1deg.nc $ipath/Fe/clean/dfeos_ACCESS-ESM1-5_hist_1950-2014_0-200.nc
rm $ipath/Fe/clean/dfeos_ACCESS-ESM1-5_hist_1950-2014_1deg.nc
