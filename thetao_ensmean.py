import xarray as xr
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import cartopy.crs as ccrs
import cartopy.feature as cfeature

data_path_obs = '../../../observations_bgc/thetao/temperature_ORAS5_1998-2024_1deg_surf_IO_clim.nc'
data_path_esm = '../data/climatology/thetao/ensmean_thetao.nc'
fig_path  = '../figs/'

files = [data_path_obs, data_path_esm]

labels = [
    'ORAS5',
    'Ensemble Mean'
]

bounds = [18, 20, 22, 24, 26, 28, 30, 32]

colors = [
    "#08306B",  
    "#2171B5",  
    "#41B6C4",  
    "#A1DAB4",  
    "#FFFFBF",  
    "#FDAE61",  
    "#F46D43",  
    "#A50026"   
]

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
    filename = files[i]

    ds = xr.open_dataset(filepath, decode_times=False)
    temp = ds['thetao']
    
   
    plot = temp.plot(
           ax=ax,
           cmap=cmap,
           norm=norm,
           add_colorbar=False,
           transform=ccrs.PlateCarree()
           )

   #contour_levels = [32.5, 34.5, 36.5]

   # cs = ax.contour(
   #      sal.lon,
   #      sal.lat,
   #      sal,
   #      levels=contour_levels,
   #      colors='black',
   #      linewidths=0.8,
   #      transform=ccrs.PlateCarree()
   #  )

   #  ax.clabel(
   #      cs,
   #      inline=True,
   #      fontsize=7,
   #      fmt='%1.1f' #in point-form
   #  )

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
cbar.set_label('Ocean Surface Temperature (°C)')


plt.tight_layout(rect=[0, 0, 0.9, 0.93])

plt.savefig(fig_path + 'temp_ensmean.png', dpi=300)
plt.show()
