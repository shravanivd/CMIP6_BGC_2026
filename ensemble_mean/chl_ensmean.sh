#!/bin/bash
set -xe

ipath="/home/users/aditi/CMIP6/data/chl/reduce_dim"

CDO="cdo -O -P 8 -f nc"

$CDO ensmean \
   
