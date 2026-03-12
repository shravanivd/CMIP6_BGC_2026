#!/bin/bash
set -xe

path="/home/users/aditi/CMIP6/data"

CDO="cdo -O -P 8 -f nc"
## variables in HPC: chl  DO  Fe  mlotst  Nitrate  pH  Phosphate  sal  Si  spco2  thetao

# To extract specific levels at 100, 500, 1000, 3000 metres below ocean surface
# Not including si and pH currently in this script

# ACCESS-ESM1-5
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/ACCESS-ESM1-5/chl_Omon_ACCESS-ESM1-5_historical*.nc \
        $path/chl/clean/chl_ACCESS-ESM1-5_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/ACCESS-ESM1-5/thetao_Omon_ACCESS-ESM1-5_historical*.nc \
        $path/thetao/clean/thetao_ACCESS-ESM1-5_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/ACCESS-ESM1-5/so_Omon_ACCESS-ESM1-5_historical*.nc \
        $path/sal/clean/so_ACCESS-ESM1-5_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/ACCESS-ESM1-5/no3_Omon_ACCESS-ESM1-5_historical*.nc \
        $path/Nitrate/clean/no3_ACCESS-ESM1-5_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/ACCESS-ESM1-5/po4_Omon_ACCESS-ESM1-5_historical*.nc \
        $path/Phosphate/clean/po4_ACCESS-ESM1-5_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/DO/raw/ACCESS-ESM1-5/o2_Omon_ACCESS-ESM1-5_historical*.nc \
        $path/DO/clean/o2_ACCESS-ESM1-5_hist_1988-2014_intlev.nc


###### CanESM5
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/CanESM5/chl_Omon_CanESM5_historical*.nc \
        $path/chl/clean/chl_CanESM5_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/CanESM5/thetao_Omon_CanESM5_historical*.nc \
        $path/thetao/clean/thetao_CanESM5_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/CanESM5/so_Omon_CanESM5_historical*.nc \
        $path/sal/clean/so_CanESM5_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/CanESM5/no3_Omon_CanESM5_historical*.nc \
        $path/Nitrate/clean/no3_CanESM5_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/DO/raw/CanESM5/o2_Omon_CanESM5_historical*.nc \
        $path/DO/clean/o2_CanESM5_hist_1988-2014_intlev.nc


##### CanESM5-1
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/CanESM5-1/chl_Omon_CanESM5-1_historical*.nc \
        $path/chl/clean/chl_CanESM5-1_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/CanESM5-1/thetao_Omon_CanESM5-1_historical*.nc \
        $path/thetao/clean/thetao_CanESM5-1_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/CanESM5-1/so_Omon_CanESM5-1_historical*.nc \
        $path/sal/clean/so_CanESM5-1_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/CanESM5-1/no3_Omon_CanESM5-1_historical*.nc \
        $path/Nitrate/clean/no3_CanESM5-1_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/DO/raw/CanESM5-1/o2_Omon_CanESM5-1_historical*.nc \
        $path/DO/clean/o2_CanESM5-1_hist_1988-2014_intlev.nc


##### CESM2
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/CESM2/chl_Omon_CESM2_historical*.nc \
        $path/chl/clean/chl_CESM2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/CESM2/thetao_Omon_CESM2_historical*.nc \
        $path/thetao/clean/thetao_CESM2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/CESM2/so_Omon_CESM2_historical*.nc \
        $path/sal/clean/so_CESM2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/CESM2/no3_Omon_CESM2_historical*.nc \
        $path/Nitrate/clean/no3_CESM2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/CESM2/po4_Omon_CESM2_historical*.nc \
        $path/Phosphate/clean/po4_CESM2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/CESM2/dfe_Omon_CESM2_historical*.nc \
        $path/Fe/clean/dfe_CESM2_hist_1988-2014_intlev.nc


###### CESM2-FV2
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/CESM2-FV2/chl_Omon_CESM2-FV2_historical*.nc \
        $path/chl/clean/chl_CESM2-FV2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/CESM2-FV2/thetao_Omon_CESM2-FV2_historical*.nc \
        $path/thetao/clean/thetao_CESM2-FV2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/CESM2-FV2/so_Omon_CESM2-FV2_historical*.nc \
        $path/sal/clean/so_CESM2-FV2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/CESM2-FV2/no3_Omon_CESM2-FV2_historical*.nc \
        $path/Nitrate/clean/no3_CESM2-FV2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/CESM2-FV2/po4_Omon_CESM2-FV2_historical*.nc \
        $path/Phosphate/clean/po4_CESM2-FV2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/CESM2-FV2/dfe_Omon_CESM2-FV2_historical*.nc \
        $path/Fe/clean/dfe_CESM2-FV2_hist_1988-2014_intlev.nc
        

##### CESM2-WACCM
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/CESM2-WACCM/chl_Omon_CESM2-WACCM_historical*.nc \
        $path/chl/clean/chl_CESM2-WACCM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/CESM2-WACCM/thetao_Omon_CESM2-WACCM_historical*.nc \
        $path/thetao/clean/thetao_CESM2-WACCM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/CESM2-WACCM/so_Omon_CESM2-WACCM_historical*.nc \
        $path/sal/clean/so_CESM2-WACCM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/CESM2-WACCM/no3_Omon_CESM2-WACCM_historical*.nc \
        $path/Nitrate/clean/no3_CESM2-WACCM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/CESM2-WACCM/po4_Omon_CESM2-WACCM_historical*.nc \
        $path/Phosphate/clean/po4_CESM2-WACCM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/CESM2-WACCM/dfe_Omon_CESM2-WACCM_historical*.nc \
        $path/Fe/clean/dfe_CESM2-WACCM_hist_1988-2014_intlev.nc


##### CESM2-WACCM-FV2
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/CESM2-WACCM-FV2/chl_Omon_CESM2-WACCM-FV2_historical*.nc \
        $path/chl/clean/chl_CESM2-WACCM-FV2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/CESM2-WACCM-FV2/thetao_Omon_CESM2-WACCM-FV2_historical*.nc \
        $path/thetao/clean/thetao_CESM2-WACCM-FV2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/CESM2-WACCM-FV2/so_Omon_CESM2-WACCM-FV2_historical*.nc \
        $path/sal/clean/so_CESM2-WACCM-FV2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/CESM2-WACCM-FV2/no3_Omon_CESM2-WACCM-FV2_historical*.nc \
        $path/Nitrate/clean/no3_CESM2-WACCM-FV2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/CESM2-WACCM-FV2/po4_Omon_CESM2-WACCM-FV2_historical*.nc \
        $path/Phosphate/clean/po4_CESM2-WACCM-FV2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/CESM2-WACCM-FV2/dfe_Omon_CESM2-WACCM-FV2_historical*.nc \
        $path/Fe/clean/dfe_CESM2-WACCM-FV2_hist_1988-2014_intlev.nc


##### CMCC-ESM2
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/CMCC-ESM2/chl_Omon_CMCC-ESM2_historical*.nc \
        $path/chl/clean/chl_CMCC-ESM2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/CMCC-ESM2/thetao_Omon_CMCC-ESM2_historical*.nc \
        $path/thetao/clean/thetao_CMCC-ESM2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/CMCC-ESM2/so_Omon_CMCC-ESM2_historical*.nc \
        $path/sal/clean/so_CMCC-ESM2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/CMCC-ESM2/no3_Omon_CMCC-ESM2_historical*.nc \
        $path/Nitrate/clean/no3_CMCC-ESM2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/CMCC-ESM2/po4_Omon_CMCC-ESM2_historical*.nc \
        $path/Phosphate/clean/po4_CMCC-ESM2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/CMCC-ESM2/dfe_Omon_CMCC-ESM2_historical*.nc \
        $path/Fe/clean/dfe_CMCC-ESM2_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/DO/raw/CMCC-ESM2/o2_Omon_CMCC-ESM2_historical*.nc \
        $path/DO/clean/o2_CMCC-ESM2_hist_1988-2014_intlev.nc


##### CNRM-ESM2-1    
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/CNRM-ESM2-1/chl_Omon_CNRM-ESM2-1_historical*.nc \
        $path/chl/clean/chl_CNRM-ESM2-1_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/CNRM-ESM2-1/thetao_Omon_CNRM-ESM2-1_historical*.nc \
        $path/thetao/clean/thetao_CNRM-ESM2-1_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/CNRM-ESM2-1/so_Omon_CNRM-ESM2-1_historical*.nc \
        $path/sal/clean/so_CNRM-ESM2-1_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/CNRM-ESM2-1/no3_Omon_CNRM-ESM2-1_historical*.nc \
        $path/Nitrate/clean/no3_CNRM-ESM2-1_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/CNRM-ESM2-1/po4_Omon_CNRM-ESM2-1_historical*.nc \
        $path/Phosphate/clean/po4_CNRM-ESM2-1_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/CNRM-ESM2-1/dfe_Omon_CNRM-ESM2-1_historical*.nc \
        $path/Fe/clean/dfe_CNRM-ESM2-1_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/DO/raw/CNRM-ESM2-1/o2_Omon_CNRM-ESM2-1_historical*.nc \
        $path/DO/clean/o2_CNRM-ESM2-1_hist_1988-2014_intlev.nc


#### GFDL-CM4
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/GFDL-CM4/chl_Omon_GFDL-CM4_historical*.nc \
        $path/chl/clean/chl_GFDL-CM4_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/GFDL-CM4/thetao_Omon_GFDL-CM4_historical*.nc \
        $path/thetao/clean/thetao_GFDL-CM4_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/GFDL-CM4/so_Omon_GFDL-CM4_historical*.nc \
        $path/sal/clean/so_GFDL-CM4_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/GFDL-CM4/po4_Omon_GFDL-CM4_historical*.nc \
        $path/Phosphate/clean/po4_GFDL-CM4_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/GFDL-CM4/dfe_Omon_GFDL-CM4_historical*.nc \
        $path/Fe/clean/dfe_GFDL-CM4_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/DO/raw/GFDL-CM4/o2_Omon_GFDL-CM4_historical*.nc \
        $path/DO/clean/o2_GFDL-CM4_hist_1988-2014_intlev.nc


##### GFDL-ESM4
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/GFDL-ESM4/chl_Omon_GFDL-ESM4_historical*.nc \
        $path/chl/clean/chl_GFDL-ESM4_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/GFDL-ESM4/thetao_Omon_GFDL-ESM4_historical*.nc \
        $path/thetao/clean/thetao_GFDL-ESM4_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/GFDL-ESM4/so_Omon_GFDL-ESM4_historical*.nc \
        $path/sal/clean/so_GFDL-ESM4_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/GFDL-ESM4/po4_Omon_GFDL-ESM4_historical*.nc \
        $path/Phosphate/clean/po4_GFDL-ESM4_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/GFDL-ESM4/no3_Omon_GFDL-ESM4_historical*.nc \
        $path/Nitrate/clean/no3_GFDL-ESM4_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/GFDL-ESM4/dfe_Omon_GFDL-ESM4_historical*.nc \
        $path/Fe/clean/dfe_GFDL-ESM4_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/DO/raw/GFDL-ESM4/o2_Omon_GFDL-ESM4_historical*.nc \
        $path/DO/clean/o2_GFDL-ESM4_hist_1988-2014_intlev.nc



##### IPSL-CM5A2-INCA
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/IPSL-CM5A2-INCA/chl_Omon_IPSL-CM5A2-INCA_historical*.nc \
        $path/chl/clean/chl_IPSL-CM5A2-INCA_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/IPSL-CM5A2-INCA/thetao_Omon_IPSL-CM5A2-INCA_historical*.nc \
        $path/thetao/clean/thetao_IPSL-CM5A2-INCA_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/IPSL-CM5A2-INCA/so_Omon_IPSL-CM5A2-INCA_historical*.nc \
        $path/sal/clean/so_IPSL-CM5A2-INCA_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/IPSL-CM5A2-INCA/no3_Omon_IPSL-CM5A2-INCA_historical*.nc \
        $path/Nitrate/clean/no3_IPSL-CM5A2-INCA_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/IPSL-CM5A2-INCA/po4_Omon_IPSL-CM5A2-INCA_historical*.nc \
        $path/Phosphate/clean/po4_IPSL-CM5A2-INCA_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/IPSL-CM5A2-INCA/dfe_Omon_IPSL-CM5A2-INCA_historical*.nc \
        $path/Fe/clean/dfe_IPSL-CM5A2-INCA_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/DO/raw/IPSL-CM5A2-INCA/o2_Omon_IPSL-CM5A2-INCA_historical*.nc \
        $path/DO/clean/o2_IPSL-CM5A2-INCA_hist_1988-2014_intlev.nc


#### IPSL-CM6A-LR
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/IPSL-CM6A-LR/chl_Omon_IPSL-CM6A-LR_historical*.nc \
        $path/chl/clean/chl_IPSL-CM6A-LR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/IPSL-CM6A-LR/thetao_Omon_IPSL-CM6A-LR_historical*.nc \
        $path/thetao/clean/thetao_IPSL-CM6A-LR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/IPSL-CM6A-LR/so_Omon_IPSL-CM6A-LR_historical*.nc \
        $path/sal/clean/so_IPSL-CM6A-LR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/IPSL-CM6A-LR/po4_Omon_IPSL-CM6A-LR_historical*.nc \
        $path/Phosphate/clean/po4_IPSL-CM6A-LR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/IPSL-CM6A-LR/no3_Omon_IPSL-CM6A-LR_historical*.nc \
        $path/Nitrate/clean/no3_IPSL-CM6A-LR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/IPSL-CM6A-LR/dfe_Omon_IPSL-CM6A-LR_historical*.nc \
        $path/Fe/clean/dfe_IPSL-CM6A-LR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/DO/raw/IPSL-CM6A-LR/o2_Omon_IPSL-CM6A-LR_historical*.nc \
        $path/DO/clean/o2_IPSL-CM6A-LR_hist_1988-2014_intlev.nc



##### IPSL-CM6A-LR-INCA
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/IPSL-CM6A-LR-INCA/chl_Omon_IPSL-CM6A-LR-INCA_historical*.nc \
        $path/chl/clean/chl_IPSL-CM6A-LR-INCA_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/IPSL-CM6A-LR-INCA/thetao_Omon_IPSL-CM6A-LR-INCA_historical*.nc \
        $path/thetao/clean/thetao_IPSL-CM6A-LR-INCA_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/IPSL-CM6A-LR-INCA/so_Omon_IPSL-CM6A-LR-INCA_historical*.nc \
        $path/sal/clean/so_IPSL-CM6A-LR-INCA_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/IPSL-CM6A-LR-INCA/no3_Omon_IPSL-CM6A-LR-INCA_historical*.nc \
        $path/Nitrate/clean/no3_IPSL-CM6A-LR-INCA_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/IPSL-CM6A-LR-INCA/po4_Omon_IPSL-CM6A-LR-INCA_historical*.nc \
        $path/Phosphate/clean/po4_IPSL-CM6A-LR-INCA_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/IPSL-CM6A-LR-INCA/dfe_Omon_IPSL-CM6A-LR-INCA_historical*.nc \
        $path/Fe/clean/dfe_IPSL-CM6A-LR-INCA_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/DO/raw/IPSL-CM6A-LR-INCA/o2_Omon_IPSL-CM6A-LR-INCA_historical*.nc \
        $path/DO/clean/o2_IPSL-CM6A-LR-INCA_hist_1988-2014_intlev.nc



##### MIROC-ES2L
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/MIROC-ES2L/chl_Omon_MIROC-ES2L_historical*.nc \
        $path/chl/clean/chl_MIROC-ES2L_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/MIROC-ES2L/thetao_Omon_MIROC-ES2L_historical*.nc \
        $path/thetao/clean/thetao_MIROC-ES2L_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/MIROC-ES2L/so_Omon_MIROC-ES2L_historical*.nc \
        $path/sal/clean/so_MIROC-ES2L_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/MIROC-ES2L/no3_Omon_MIROC-ES2L_historical*.nc \
        $path/Nitrate/clean/no3_MIROC-ES2L_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/MIROC-ES2L/po4_Omon_MIROC-ES2L_historical*.nc \
        $path/Phosphate/clean/po4_MIROC-ES2L_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/MIROC-ES2L/dfe_Omon_MIROC-ES2L_historical*.nc \
        $path/Fe/clean/dfe_MIROC-ES2L_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/DO/raw/MIROC-ES2L/o2_Omon_MIROC-ES2L_historical*.nc \
        $path/DO/clean/o2_MIROC-ES2L_hist_1988-2014_intlev.nc



##### MPI-ESM-1-2-HAM
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/MPI-ESM-1-2-HAM/chl_Omon_MPI-ESM-1-2-HAM_historical*.nc \
        $path/chl/clean/chl_MPI-ESM-1-2-HAM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/MPI-ESM-1-2-HAM/thetao_Omon_MPI-ESM-1-2-HAM_historical*.nc \
        $path/thetao/clean/thetao_MPI-ESM-1-2-HAM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/MPI-ESM-1-2-HAM/so_Omon_MPI-ESM-1-2-HAM_historical*.nc \
        $path/sal/clean/so_MPI-ESM-1-2-HAM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/MPI-ESM-1-2-HAM/no3_Omon_MPI-ESM-1-2-HAM_historical*.nc \
        $path/Nitrate/clean/no3_MPI-ESM-1-2-HAM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/MPI-ESM-1-2-HAM/po4_Omon_MPI-ESM-1-2-HAM_historical*.nc \
        $path/Phosphate/clean/po4_MPI-ESM-1-2-HAM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/MPI-ESM-1-2-HAM/dfe_Omon_MPI-ESM-1-2-HAM_historical*.nc \
        $path/Fe/clean/dfe_MPI-ESM-1-2-HAM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/DO/raw/MPI-ESM-1-2-HAM/o2_Omon_MPI-ESM-1-2-HAM_historical*.nc \
        $path/DO/clean/o2_MPI-ESM-1-2-HAM_hist_1988-2014_intlev.nc



##### MPI-ESM1-2-HR
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/MPI-ESM1-2-HR/chl_Omon_MPI-ESM1-2-HR_historical*.nc \
        $path/chl/clean/chl_MPI-ESM1-2-HR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/MPI-ESM1-2-HR/thetao_Omon_MPI-ESM1-2-HR_historical*.nc \
        $path/thetao/clean/thetao_MPI-ESM1-2-HR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/MPI-ESM1-2-HR/so_Omon_MPI-ESM1-2-HR_historical*.nc \
        $path/sal/clean/so_MPI-ESM1-2-HR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/MPI-ESM1-2-HR/no3_Omon_MPI-ESM1-2-HR_historical*.nc \
        $path/Nitrate/clean/no3_MPI-ESM1-2-HR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/MPI-ESM1-2-HR/po4_Omon_MPI-ESM1-2-HR_historical*.nc \
        $path/Phosphate/clean/po4_MPI-ESM1-2-HR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/MPI-ESM1-2-HR/dfe_Omon_MPI-ESM1-2-HR_historical*.nc \
        $path/Fe/clean/dfe_MPI-ESM1-2-HR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/DO/raw/MPI-ESM1-2-HR/o2_Omon_MPI-ESM1-2-HR_historical*.nc \
        $path/DO/clean/o2_MPI-ESM1-2-HR_hist_1988-2014_intlev.nc



##### MPI-ESM1-2-HR
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/MPI-ESM1-2-LR/chl_Omon_MPI-ESM1-2-LR_historical*.nc \
        $path/chl/clean/chl_MPI-ESM1-2-LR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/MPI-ESM1-2-LR/thetao_Omon_MPI-ESM1-2-LR_historical*.nc \
        $path/thetao/clean/thetao_MPI-ESM1-2-LR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/MPI-ESM1-2-LR/so_Omon_MPI-ESM1-2-LR_historical*.nc \
        $path/sal/clean/so_MPI-ESM1-2-LR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/MPI-ESM1-2-LR/no3_Omon_MPI-ESM1-2-LR_historical*.nc \
        $path/Nitrate/clean/no3_MPI-ESM1-2-LR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/MPI-ESM1-2-LR/po4_Omon_MPI-ESM1-2-LR_historical*.nc \
        $path/Phosphate/clean/po4_MPI-ESM1-2-LR_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/MPI-ESM1-2-LR/dfe_Omon_MPI-ESM1-2-LR_historical*.nc \
        $path/Fe/clean/dfe_MPI-ESM1-2-LR_hist_1988-2014_intlev.nc
        
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/DO/raw/MPI-ESM1-2-LR/o2_Omon_MPI-ESM1-2-LR_historical*.nc \
        $path/DO/clean/o2_MPI-ESM1-2-LR_hist_1988-2014_intlev.nc



##### NorESM2-LM
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/NorESM2-LM/chl_Omon_NorESM2-LM_historical*.nc \
        $path/chl/clean/chl_NorESM2-LM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/NorESM2-LM/thetao_Omon_NorESM2-LM_historical*.nc \
        $path/thetao/clean/thetao_NorESM2-LM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/NorESM2-LM/so_Omon_NorESM2-LM_historical*.nc \
        $path/sal/clean/so_NorESM2-LM_hist_1988-2014_intlev.nc



##### NorESM2-MM
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/NorESM2-MM/chl_Omon_NorESM2-MM_historical*.nc \
        $path/chl/clean/chl_NorESM2-MM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/NorESM2-MM/thetao_Omon_NorESM2-MM_historical*.nc \
        $path/thetao/clean/thetao_NorESM2-MM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/NorESM2-MM/so_Omon_NorESM2-MM_historical*.nc \
        $path/sal/clean/so_NorESM2-MM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/NorESM2-MM/no3_Omon_NorESM2-MM_historical*.nc \
        $path/Nitrate/clean/no3_NorESM2-MM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/NorESM2-MM/po4_Omon_NorESM2-MM_historical*.nc \
        $path/Phosphate/clean/po4_NorESM2-MM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/NorESM2-MM/dfe_Omon_NorESM2-MM_historical*.nc \
        $path/Fe/clean/dfe_NorESM2-MM_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/DO/raw/NorESM2-MM/o2_Omon_NorESM2-MM_historical*.nc \
        $path/DO/clean/o2_NorESM2-MM_hist_1988-2014_intlev.nc



##### UKESM1-0-LL
$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/chl/raw/UKESM1-0-LL/chl_Omon_UKESM1-0-LL_historical*.nc \
        $path/chl/clean/chl_UKESM1-0-LL_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/thetao/raw/UKESM1-0-LL/thetao_Omon_UKESM1-0-LL_historical*.nc \
        $path/thetao/clean/thetao_UKESM1-0-LL_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/sal/raw/UKESM1-0-LL/so_Omon_UKESM1-0-LL_historical*.nc \
        $path/sal/clean/so_UKESM1-0-LL_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Nitrate/raw/UKESM1-0-LL/no3_Omon_UKESM1-0-LL_historical*.nc \
        $path/Nitrate/clean/no3_UKESM1-0-LL_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Phosphate/raw/UKESM1-0-LL/po4_Omon_UKESM1-0-LL_historical*.nc \
        $path/Phosphate/clean/po4_UKESM1-0-LL_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/Fe/raw/UKESM1-0-LL/dfe_Omon_UKESM1-0-LL_historical*.nc \
        $path/Fe/clean/dfe_UKESM1-0-LL_hist_1988-2014_intlev.nc

$CDO -intlevel,100,500,1000,3000 -remapbil,r360x180 -selyear,1988/2014 -mergetime $path/DO/raw/UKESM1-0-LL/o2_Omon_UKESM1-0-LL_historical*.nc \
        $path/DO/clean/o2_UKESM1-0-LL_hist_1988-2014_intlev.nc




