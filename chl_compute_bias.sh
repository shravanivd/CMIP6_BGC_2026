#!/bin/bash
set -xe

cdo -sub ../data/clim/chl_ACCESS-ESM1-5_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_ACCESS-ESM1-5_bias.nc

cdo -sub ../data/clim/chl_CanESM5_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_CanESM5_bias.nc

cdo -sub ../data/clim/chl_CanESM5-1_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_CanESM5-1_bias.nc

cdo -sub ../data/clim/chl_CESM2_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_CESM2_bias.nc

cdo -sub ../data/clim/chl_CESM2-FV2_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_CESM2-FV2_bias.nc

cdo -sub ../data/clim/chl_CESM2-WACCM_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_CESM2-WACCM_bias.nc


cdo -sub ../data/clim/chl_CESM2-WACCM-FV2_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_CESM2-WACCM-FV2_bias.nc

cdo -sub ../data/clim/chl_CMCC-ESM2_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_CMCC-ESM2_bias.nc

cdo -sub ../data/clim/chl_GFDL-CM4_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_GFDL-CM4_bias.nc

cdo -sub ../data/clim/chl_GFDL-ESM4_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_GFDL-ESM4_bias.nc

cdo -sub ../data/clim/chl_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_IPSL-CM5A2-INCA_bias.nc

cdo -sub ../data/clim/chl_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_IPSL-CM6A-LR_bias.nc

cdo -sub ../data/clim/chl_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_IPSL-CM6A-LR-INCA_bias.nc

cdo -sub ../data/clim/chl_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_MPI-ESM-1-2-HAM_bias.nc

cdo -sub ../data/clim/chl_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_MPI-ESM1-2-HR_bias.nc

cdo -sub ../data/clim/chl_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_MPI-ESM1-2-LR_bias.nc

cdo -sub ../data/clim/chl_NorESM2-LM_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_NorESM2-LM_bias.nc

cdo -sub ../data/clim/chl_NorESM2-MM_hist_1988-2014_1deg_surf_timmean.nc \
         ../data/clim/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4 \
         ../data/bias/chl_NorESM2-MM_bias.nc







