import xarray as xr
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import cartopy.crs as ccrs
import cartopy.feature as cfeature

data_path_obs = '../../../observations_bgc/chl/CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_IO_timmean.nc4'
data_path_esm = '../data/climatology/chl/chl_ensmean.nc'
data_path_bias = '../../chl_ensmean_bias.nc'
fig_path  = '../figs/'

files = [data_path_obs, data_path_esm, data_path_bias]

labels = [
    'OC-CCI v6.0',
    'Ensemble Mean',
    'Bias'
]

bounds = [0.01, 0.05, 0.1, 0.2, 0.3, 0.4, 0.5,
          0.7, 0.9, 1.0, 1.5, 2.0, 3.0]

colors = [
    "#440154", "#472D7B", "#3B528B", "#2C728E",
    "#21908C", "#27AD81", "#5DC863", "#AADC32",
    "#FDE725", "#F6B800", "#EE5A00", "#A80000", "#5A0000"
]

bounds_bias = [ ]

colors_bias = [ ]

cmap = mcolors.ListedColormap(colors)
norm = mcolors.BoundaryNorm(bounds, cmap.N, extend='max')

ncols = 2
nrows = 1

latitude_ticks  = [-30, -15, 0, 15, 30]
longitude_ticks = [30, 60, 90, 120]

fig, axes = plt.subplots(
    nrows=nrows,
    ncols=ncols,
    figsize=(12, 5),
    subplot_kw={'projection': ccrs.PlateCarree()}
)


axes = axes.flatten()


for i, filepath in enumerate(files):
    ax = axes[i]

    ds = xr.open_dataset(filepath, decode_times=False)
    chl = ds['chl']
    
   
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

    ax.tick_params(axis='x', labelsize=8)
    ax.tick_params(axis='y', labelsize=8)

    ax.set_title(labels[i], fontsize=11)
    ax.set_xlabel('')
    ax.set_ylabel('')


cax = fig.add_axes([0.92, 0.22, 0.015, 0.56])
cbar = plt.colorbar(plot, cax=cax, ticks=bounds)
cbar.set_label('Chlorophyll (mg m$^{-3}$)')


plt.tight_layout(rect=[0, 0, 0.9, 0.93])

plt.savefig(fig_path + 'chl_ensmean_occi.png', dpi=300)
plt.show()
