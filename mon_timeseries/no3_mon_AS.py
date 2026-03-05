import xarray as xr
import matplotlib.pyplot as plt
import numpy as np

data_path = "../../data/seasonal_cycle/Nitrate/AS_monclim/"
#data_path_obs = "../../data/seasonal_cycle/Nitrate/AS_monclim/"
fig_path ="../../figs/seasonal_cycle/"

files = [
    'woa_no3_clim_monthly_1deg_AS_ymonmean_fldmean.nc'
    'no3_ACCESS-ESM1-5_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_CanESM5_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_CanESM5-1_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_CESM2_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_CESM2-FV2_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_CESM2-WACCM_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_CESM2-WACCM-FV2_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_CMCC-ESM2_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_CNRM-ESM2-1_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_GFDL-ESM4_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_MIROC-ES2L_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_NorESM2-LM_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_NorESM2-MM_hist_1988-2014_1deg_surf_AS_mon_ts.nc',
    'no3_UKESM1-0-LL_hist_1988-2014_1deg_surf_AS_mon_ts.nc'
]
labels = [
    "WOA23",
    "ACCESS-ESM1-5",
    "CanESM5",
    "CanESM5-1",
    "CESM2",
    "CESM2-FV2",   
    "CESM2-WACCM",
    "CESM2-WACCM-FV2",
    "CMCC-ESM2",
    "CNRM-ESM2-1",
    "GFDL-ESM4",
    "IPSL-CM5A2-INCA",
    "IPSL-CM6A-LR",
    "IPSL-CM6A-LR-INCA",
    "MIROC-ES2L",
    "MPI-ESM-1-2-HAM",
    "MPI-ESM1-2-HR",
    "MPI-ESM1-2-LR",
    "NorESM2-LM",
    "NorESM2-MM",
    "UKESM1-0-LL"
]

months = ["Jan","Feb","Mar","Apr","May","Jun",
          "Jul","Aug","Sep","Oct","Nov","Dec"]

#COLOURS
woa_color = "black"

model_colors = [
    "#1f77b4",  # blue
    "#ff7f0e",  # orange
    "#2ca02c",  # green
    "#d62728",  # red
    "#9467bd",  # purple
    "#8c564b",  # brown
    "#e377c2",  # pink
    "#7f7f7f",  # grey
    "#bcbd22",  # olive
    "#17becf",  # cyan
    "#aec7e8",  # light blue
    "#ffbb78",  # light orange
    "#98df8a",  # light green
    "#ff9896",  # light red
    "#c5b0d5",  # light purple
    "#c49c94",  # light brown
    "#f7b6d2",  # light pink
    "#dbdb8d",  # light olive
    "#9edae5",  # light cyan
    "#393b79",  # dark blue
    "#637939",  # dark green
    "#8c6d31",  # dark mustard
    "#843c39"   # dark maroon
]

model_i = 0

plt.figure(figsize=(10,5))

for i, (f, label) in enumerate(zip(files, labels)):

    ds = xr.open_dataset(data_path + f, decode_times=False)
    no3 = ds["no3"].values.squeeze()  

    if label == "WOA23":
        plt.plot(
            months, no3,
            color=woa_color,
            linewidth=2,
            marker="o",
            label=label,
            zorder=10
        )

    # CMIP6 models
    else:
        plt.plot(
            months, no3,
            color=model_colors[model_i],
            linewidth=1.5,
            alpha=0.85,
            label=label
        )
        model_i += 1

#plt.plot(months, no3, linewidth=2, label=label)

plt.xlabel("Month", fontsize=11)
plt.ylabel("Surface Nitrate (mmol m$^{-3}$)", fontsize=11)
plt.title("Seasonal Cycle of Nitrate - Arabian Sea", fontsize=12)

# LEGEND BOX
plt.legend(
    fontsize=7,
    frameon=True,
    edgecolor="black",
    ncol=1,
    loc="center left",
    bbox_to_anchor=(1.02, 0.5),
    labelspacing=0.6,    
    borderpad=0.8   
)

plt.grid(True, alpha=0.3)
plt.tight_layout()
plt.savefig(fig_path + 'no3 AS cycle.png', dpi=300)
plt.show()
