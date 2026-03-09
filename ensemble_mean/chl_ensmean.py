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

cmap = mcolors.ListedColormap(colors)
norm = mcolors.BoundaryNorm(bounds, cmap.N, extend='max')


bounds_bias = [-0.5, -0.4, -0.3, -0.2, -0.1, 0,
           0.1, 0.2, 0.3, 0.4, 0.5]

colors_bias = [
    "#2171B5", "#6BAED6", "#C6DBEF", "#DEEBF7", "#FFFFFF", "#FFFFFF",
    "#FEE0D2", "#FC9272", "#FB6A4A", "#CB181D"
]

cmap_bias = mcolors.ListedColormap(colors_bias)
norm_bias = mcolors.BoundaryNorm(bounds_bias, cmap_bias.N, extend='both')

ncols = 3
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

ds_obs = xr.open_dataset(data_path_obs, decode_times=False)
chl_obs = ds_obs['chl']

plot = chl_obs.plot(
    ax=axes[0],
    cmap=cmap,
    norm=norm,
    add_colorbar=False,
    transform=ccrs.PlateCarree()
)


ds_esm = xr.open_dataset(data_path_esm, decode_times=False)
chl_esm = ds_esm['chl']

plot = chl_esm.plot(
    ax=axes[1],
    cmap=cmap,
    norm=norm,
    add_colorbar=False,
    transform=ccrs.PlateCarree()
)


ds_bias = xr.open_dataset(data_path_bias, decode_times=False)
chl_bias = ds_bias['chl']

plot_bias = chl_bias.plot(
    ax=axes[2],
    cmap=cmap_bias,
    norm=norm_bias,
    add_colorbar=False,
    transform=ccrs.PlateCarree()
)

for i, ax in enumerate(axes):
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


cax_left = fig.add_axes([0.05,0.22,0.015,0.56])

cbar_left = plt.colorbar(
    plot,
    cax=cax_left,
    ticks=bounds
)

cbar_left.set_label('Chlorophyll (mg m$^{-3}$)')


cax_right = fig.add_axes([0.92,0.22,0.015,0.56])

cbar_right = plt.colorbar(
    plot_bias,
    cax=cax_right,
    ticks=bounds_bias
)

cbar_right.set_label('Bias (mg m$^{-3}$)')


plt.tight_layout(rect=[0, 0, 0.9, 0.93]
plt.savefig(fig_path + 'chl_ensmean_occi.png', dpi=300)
plt.show()
