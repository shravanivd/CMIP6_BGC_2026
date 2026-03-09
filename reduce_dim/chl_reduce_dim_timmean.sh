#!/bin/bash
set -xe

CDO="cdo -O -P 8"

ipath="/home/users/aditi/CMIP6/data/chl/reduce_dim"
opath="/home/users/aditi/CMIP6/data"

for f in "$ipath"/chl_*.nc; do
	$CDO -timmean "$f" "$opath/$(basename "${f%.nc}")_timmean.nc"
done
