#!/bin/bash
set -xe

CDO="cdo -O -P 8"

ipath_esm="../../clean/data/clim/chl"
ipath_obs="../../obs/CCI_chl_v6.0-mon_global_1998-2024_1deg_timmean.nc4"
opath="../data/bias/chl"

# chl, no3, po4, o2, sal, thetao, mld, spco2 (Need to chk Fe obs data, downld si and ph data)
#bias between ensmean and obs
$CDO -sub $ipath_esm/chl_ensmean.nc \
         $ipath_obs \
         $opath/chl_ensmean_bias.nc

$CDO -sub $ipath_esm/no3_ensmean.nc \
         $ipath_obs \
         $opath/no3_ensmean_bias.nc

$CDO -sub $ipath_esm/po4_ensmean.nc \
         $ipath_obs \
         $opath/po4_ensmean_bias.nc

$CDO -sub $ipath_esm/o2_ensmean.nc \
         $ipath_obs \
         $opath/o2_ensmean_bias.nc

$CDO -sub $ipath_esm/sal_ensmean.nc \
         $ipath_obs \
         $opath/sal_ensmean_bias.nc

$CDO -sub $ipath_esm/thetao_ensmean.nc \
         $ipath_obs \
         $opath/thetao_ensmean_bias.nc

$CDO -sub $ipath_esm/mlotst_ensmean.nc \
         $ipath_obs \
         $opath/mlotst_ensmean_bias.nc

$CDO -sub $ipath_esm/spco2_ensmean.nc \
         $ipath_obs \
         $opath/spco2_ensmean_bias.nc
