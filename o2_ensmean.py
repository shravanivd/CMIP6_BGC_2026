import xarray as xr
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import cartopy.crs as ccrs
import cartopy.feature as cfeature

data_path_obs = '../data/climatology/o2/'
data_path_esm = '../data/climatology/o2/'
fig_path  = '../figs/'

files = [data_path_obs, data_path_esm]

labels = [
    'WOA23',
    'Oxygen CMIP6 Ensemble Mean'
]

bounds = [200, 205, 210, 215, 220, 225, 230, 235, 240]

colors = [
    "#ffffcc", "#c7e9b4", "#7fcdbb", "#41b6c4",
    "#1d91c0", "#225ea8", "#253494", "#081d58",
    "#3f007d", "#54278f", "#6a51a3", "#807dba", "#9e9ac8"
]

cmap = mcolors.ListedColormap(colors)
norm = mcolors.BoundaryNorm(bounds, cmap.N, extend='both')

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
    o2 = ds['o2']
    
    plot = o2.plot(
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

nplots = len(files)

for j in range(nplots, len(axes)):
    fig.delaxes(axes[j])
    
cax = fig.add_axes([0.92, 0.22, 0.015, 0.56])
cbar = plt.colorbar(plot, cax=cax, ticks=bounds)
cbar.set_label('Oxygen (mmol m$^{-3}$)')


plt.tight_layout(rect=[0, 0, 0.9, 0.93])

plt.savefig(fig_path + 'o2_ensemble_mean.png', dpi=300)
plt.show()






