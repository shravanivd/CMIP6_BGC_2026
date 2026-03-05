import xarray as xr
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import cartopy.crs as ccrs
import cartopy.feature as cfeature
from matplotlib.colors import ListedColormap, BoundaryNorm

data_path_obs = '../data/climatology/spco2/SOCATv2025_spco2_mon_1988-2014_IO_timmean.nc'
data_path_esm = '../data/climatology/spco2/ensmean_spco2.nc'
fig_path  = '../figs/'

files = [data_path_obs, data_path_esm]

labels = [
    'SOCATv2025',
    'Ensemble Mean'
]

bounds = [300, 310, 320, 330, 340, 350, 360, 370, 380, 390, 400, 410, 420]
cmap = plt.get_cmap("RdBu_r").copy()

cmap.set_under("#041C4A")   # darker blue 
cmap.set_over("#4A0009")    # darker red 

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
    spco2 = ds['spco2']
    
    plot = spco2.plot(
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
cbar.set_label('spco2 (µatm)')


plt.tight_layout(rect=[0, 0, 0.9, 0.93])

plt.savefig(fig_path + 'spco2_ensmean.png', dpi=300)
plt.show()
