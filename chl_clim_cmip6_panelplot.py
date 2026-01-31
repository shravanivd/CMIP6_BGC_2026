import xarray as xr
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import cartopy.crs as ccrs
import cartopy.feature as cfeature

data_path = '../data/clim/'
fig_path  = '../figs/'

files = [
    'CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4',

    'chl_ACCESS-ESM1-5_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_CanESM5_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_CanESM5-1_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_CESM2_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_CESM2-FV2_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_CESM2-WACCM_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_CESM2-WACCM-FV2_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_CMCC-ESM2_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_GFDL-CM4_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_GFDL-ESM4_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_MPI-ESM-1-2-HAM_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_MPI-ESM1-2-HR_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_MPI-ESM1-2-LR_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_NorESM2-LM_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_NorESM2-MM_hist_1988-2014_1deg_surf_timmean_fixed.nc'
]

files_1e3 = [
    'chl_IPSL-CM5A2-INCA_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_IPSL-CM6A-LR_hist_1988-2014_1deg_surf_timmean_fixed.nc',
    'chl_IPSL-CM6A-LR-INCA_hist_1988-2014_1deg_surf_timmean_fixed.nc'
]

labels = [
    'OC-CCI v6.0',
    'ACCESS-ESM1-5',
    'CanESM5',
    'CanESM5-1',
    'CESM2',
    'CESM2-FV2',
    'CESM2-WACCM',
    'CESM2-WACCM-FV2',
    'CMCC-ESM2',
    'GFDL-CM4',
    'GFDL-ESM4',
    'IPSL-CM5A2-INCA',
    'IPSL-CM6A-LR',
    'IPSL-CM6A-LR-INCA',
    'MPI-ESM-1-2-HAM',
    'MPI-ESM1-2-HR',
    'MPI-ESM1-2-LR',
    'NorESM2-LM',
    'NorESM2-MM'
]

bounds = [0.01, 0.05, 0.1, 0.2, 0.3, 0.4, 0.5,
          0.7, 0.9, 1.0, 1.5, 2.0, 3.0]

colors = [
    "#440154", "#472D7B", "#3B528B", "#2C728E",
    "#21908C", "#27AD81", "#5DC863", "#AADC32",
    "#FDE725", "#F6B800", "#EE5A00", "#A80000", "#5A0000"
]

cmap = mcolors.ListedColormap(colors)
norm = mcolors.BoundaryNorm(bounds, cmap.N, extend='max')

nplots = len(files)
ncols = 4
nrows = (nplots + ncols - 1) // ncols

latitude_ticks  = [-60, -30, 0, 30, 60]
longitude_ticks = [-180, -120, -60, 0, 60, 120, 180]

fig, axes = plt.subplots(
    nrows=nrows,
    ncols=ncols,
    figsize=(12, nrows * 1.8),
    subplot_kw={'projection': ccrs.PlateCarree()}
)

axes = axes.flatten()


for i in range(nplots):

    ax = axes[i]
    filename = files[i]

    ds = xr.open_dataset(data_path + filename, decode_times=False)
    chl = ds['chl']


    if filename in files_1e3:
        chl = chl * 1e3
    elif filename != 'CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_timmean.nc4':
        chl = chl * 1e6


    plot = chl.plot(
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

    ax.tick_params(axis='x', labelsize=5)
    ax.tick_params(axis='y', labelsize=5)

    ax.set_title(labels[i], fontsize=10)
    ax.set_xlabel('')
    ax.set_ylabel('')


for j in range(nplots, len(axes)):
    fig.delaxes(axes[j])


cax = fig.add_axes([0.92, 0.18, 0.015, 0.65])
cbar = plt.colorbar(plot, cax=cax, ticks=bounds)
cbar.set_label('Chlorophyll (mg m$^{-3}$)')


plt.suptitle('Chlorophyll Climatology of CMIP6 Models (1988–2014)',
             fontsize=16, y=0.95)

plt.tight_layout(rect=[0, 0, 0.9, 0.93])

plt.savefig(fig_path + 'chl_clim_shravani.png', dpi=300)
plt.show()






