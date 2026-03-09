#!/bin/bash
set -xe

CDO="cdo -O -P 8"

ipath="/home/users/aditi/CMIP6/data"
opath="/home/users/aditi/CMIP6/data"

for f in $ipath/chl/reduce_dim/chl_*.nc; do
	$CDO -timmean "$f" "$opath/chl/reduce_dim/$(basename "${f%.nc}")_timmean.nc"
done


for f in $ipath/DO/reduce_dim/o2_*.nc; do
	$CDO -timmean "$f" "$opath/DO/reduce_dim/$(basename "${f%.nc}")_timmean.nc"
done


for f in $ipath/Nitrate/reduce_dim/no3_*.nc; do
	$CDO -timmean "$f" "$opath/Nitrate/reduce_dim/$(basename "${f%.nc}")_timmean.nc"
done


for f in $ipath/Phosphate/reduce_dim/po4_*.nc; do
	$CDO -timmean "$f" "$opath/Phosphate/reduce_dim/$(basename "${f%.nc}")_timmean.nc"
done


for f in $ipath/sal/reduce_dim/so_*.nc; do
	$CDO -timmean "$f" "$opath/sal/reduce_dim/$(basename "${f%.nc}")_timmean.nc"
done


for f in $ipath/thetao/reduce_dim/thetao_*.nc; do
	$CDO -timmean "$f" "$opath/thetao/reduce_dim/$(basename "${f%.nc}")_timmean.nc"
done


