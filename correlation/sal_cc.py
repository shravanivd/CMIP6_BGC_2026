import xarray as xr
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import cartopy.crs as ccrs
import cartopy.feature as cfeature
import numpy as np

data_path = '../data/cc/sal/'
fig_path  = '../figs/'

files = [
    'so_ACCESS-ESM1-5_cc.nc',
    'so_CanESM5_cc.nc',
    'so_CanESM5-1_cc.nc',
    'so_CESM2_cc.nc',
    'so_CESM2-FV2_cc.nc',
    'so_CESM2-WACCM_cc.nc',
    'so_CESM2-WACCM-FV2_cc.nc',
    'so_CMCC-ESM2_cc.nc',
    'so_CNRM-ESM2-1_cc.nc',
    'so_GFDL-CM4_cc.nc',
    'so_GFDL-ESM4_cc.nc',
    'so_IPSL-CM5A2-INCA_cc.nc',
    'so_IPSL-CM6A-LR_cc.nc',
    'so_IPSL-CM6A-LR-INCA_cc.nc',
    'so_MIROC-ES2L_cc.nc',
    'so_MPI-ESM-1-2-HAM_cc.nc',
    'so_MPI-ESM1-2-HR_cc.nc',
    'so_MPI-ESM1-2-LR_cc.nc',
    'so_NorESM2-LM_cc.nc',
    'so_NorESM2-MM_cc.nc',
    'so_UKESM1-0-LL_cc.nc'
]

labels = [
    'ACCESS-ESM1-5','CanESM5','CanESM5-1','CESM2','CESM2-FV2',
    'CESM2-WACCM','CESM2-WACCM-FV2','CMCC-ESM2','CNRM-ESM2-1',
    'GFDL-CM4','GFDL-ESM4','IPSL-CM5A2-INCA','IPSL-CM6A-LR',
    'IPSL-CM6A-LR-INCA','MIROC-ES2L','MPI-ESM-1-2-HAM',
    'MPI-ESM1-2-HR','MPI-ESM1-2-LR','NorESM2-LM',
    'NorESM2-MM','UKESM1-0-LL'
]

bounds = [-1.0, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1.0]
cmap = plt.get_cmap('RdBu_r')   
norm = mcolors.BoundaryNorm(bounds, cmap.N, extend="both")

nplots = len(files)
ncols = 5
nrows = (nplots + ncols - 1) // ncols

latitude_ticks  = [-30, -15, 0, 15, 30]
longitude_ticks = [30, 60, 90, 120]

fig, axes = plt.subplots(
    nrows=nrows,
    ncols=ncols,
    figsize=(12, nrows * 1.8),
    subplot_kw={'projection': ccrs.PlateCarree()}
)

axes = axes.flatten()

for i in range(nplots):

    ax = axes[i]
    ds = xr.open_dataset(data_path + files[i], decode_times=False)

    corr = ds['so']  

    plot = corr.plot(
        ax=ax,
        cmap=cmap,
        norm=norm,
        add_colorbar=False,
        transform=ccrs.PlateCarree()
    )

    ax.add_feature(cfeature.COASTLINE, linewidth=0.8)
    ax.add_feature(cfeature.LAND, facecolor='lightgrey')

    ax.set_xticks(longitude_ticks, crs=ccrs.PlateCarree())
    ax.set_yticks(latitude_ticks, crs=ccrs.PlateCarree())

    from cartopy.mpl.ticker import LongitudeFormatter, LatitudeFormatter
    ax.xaxis.set_major_formatter(LongitudeFormatter(zero_direction_label=True))
    ax.yaxis.set_major_formatter(LatitudeFormatter())

    ax.tick_params(axis='x', labelsize=7)
    ax.tick_params(axis='y', labelsize=7)

    ax.set_title(labels[i], fontsize=9)
    ax.set_xlabel('')
    ax.set_ylabel('')

# Remove empty axes
for j in range(nplots, len(axes)):
    fig.delaxes(axes[j])

cax = fig.add_axes([0.92, 0.20, 0.015, 0.60])
cbar = plt.colorbar(plot, cax=cax)
cbar.set_label('Correlation Coefficient (r)', fontsize=12)

plt.suptitle(
    'Correlation of Surface Salinity (1988–2014)',
    fontsize=15,
    y=0.95
)

plt.tight_layout(rect=[0, 0, 0.9, 0.93])
plt.savefig(fig_path + 'sal_cmip6_cc.png', dpi=300)
plt.show()
