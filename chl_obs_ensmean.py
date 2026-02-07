import xarray as xr
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import cartopy.crs as ccrs
import cartopy.feature as cfeature

data_path = '../data/clim_IO/'
fig_path  = '../figs/'

files = [
    'CCI_chl-rename_v6.0-mon_global_1998-2024_1deg_IO_timmean.nc4',
    'chl_ensmean.nc' 
]


labels = [
    'OC-CCI v6.0',
    'Ensemble Mean'
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


for i, filename in enumerate(files):
    ax = axes[i]
    filename = files[i]

    ds = xr.open_dataset(data_path + filename, decode_times=False)
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


for j in range(nplots, len(axes)):
    fig.delaxes(axes[j])


cax = fig.add_axes([0.92, 0.22, 0.015, 0.56])
cbar = plt.colorbar(plot, cax=cax, ticks=bounds)
cbar.set_label('Chlorophyll (mg m$^{-3}$)')


plt.tight_layout(rect=[0, 0, 0.9, 0.93])

plt.savefig(fig_path + 'chl_ensemble_mean.png', dpi=300)
plt.show()






