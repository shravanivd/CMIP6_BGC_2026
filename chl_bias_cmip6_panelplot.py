import xarray as xr
import matplotlib.pyplot as plt
import cartopy.crs as ccrs
import cartopy.feature as cfeature
from matplotlib.colors import ListedColormap, BoundaryNorm

data_path = '../data/bias/'
fig_path  = '../figs/bias/'

files = [
    'chl_ACCESS-ESM1-5_bias.nc',
    'chl_CanESM5_bias.nc',
    'chl_CanESM5-1_bias.nc',
    'chl_CESM2_bias.nc',
    'chl_CESM2-FV2_bias.nc',
    'chl_CESM2-WACCM_bias.nc',
    'chl_CESM2-WACCM-FV2_bias.nc',
    'chl_CMCC-ESM2_bias.nc',
    'chl_GFDL-CM4_bias.nc',
    'chl_GFDL-ESM4_bias.nc',
    'chl_IPSL-CM5A2-INCA_bias.nc',
    'chl_IPSL-CM6A-LR_bias.nc',
    'chl_IPSL-CM6A-LR-INCA_bias.nc',
    'chl_MPI-ESM-1-2-HAM_bias.nc',
    'chl_MPI-ESM1-2-HR_bias.nc',
    'chl_MPI-ESM1-2-LR_bias.nc',
    'chl_NorESM2-LM_bias.nc',
    'chl_NorESM2-MM_bias.nc'
]


levels = [-1.0, -0.8, -0.6, -0.4, -0.2, 0,
           0.2, 0.4, 0.6, 0.8, 1.0]

colors = [
    "#08306B", "#2171B5", "#6BAED6", "#C6DBEF", "#DEEBF7", "#FFFFFF",
    "#FEE0D2", "#FC9272", "#FB6A4A", "#CB181D"
]

cmap = ListedColormap(colors)
norm = BoundaryNorm(levels, cmap.N)

nplots = len(files)
ncols = 5
nrows = (nplots + ncols - 1) // ncols

fig, axes = plt.subplots(
    nrows=nrows,
    ncols=ncols,
    figsize=(20, 12),
    subplot_kw={'projection': ccrs.PlateCarree()}
)

axes = axes.flatten()

latitude_ticks  = [-60, -30, 0, 30, 60]
longitude_ticks = [-180, -120, -60, 0, 60, 120, 180]

for i in range(nplots):

    ax = axes[i]
    filename = files[i]

    ds = xr.open_dataset(data_path + filename, decode_times=False)
    bias = ds['bias'].squeeze()

    
    lon = (bias['lon'] + 180) % 360 - 180
    bias = bias.assign_coords(lon=lon).sortby('lon')

    im = ax.contourf(
        bias['lon'],
        bias['lat'],
        bias,
        levels=levels,
        cmap=cmap,
        norm=norm,
        extend='both',
        transform=ccrs.PlateCarree()
    )

    ax.add_feature(cfeature.COASTLINE, linewidth=0.8)
    ax.add_feature(cfeature.LAND, facecolor='lightgrey')

    ax.set_xticks(longitude_ticks, crs=ccrs.PlateCarree())
    ax.set_yticks(latitude_ticks, crs=ccrs.PlateCarree())
    ax.tick_params(labelsize=8)

    model_name = filename.replace('chl_', '').replace('_bias.nc', '')
    ax.set_title(model_name, fontsize=10)


for j in range(nplots, len(axes)):
    fig.delaxes(axes[j])


cax = fig.add_axes([0.25, 0.08, 0.5, 0.02])
cbar = fig.colorbar(im, cax=cax, orientation='horizontal', ticks=levels)
cbar.set_label('Bias (mg m$^{-3}$)', fontsize=12)
cbar.ax.tick_params(labelsize=10)


plt.suptitle('Chlorophyll Bias (Model − Observation)', fontsize=16, y=0.95)

plt.tight_layout(rect=[0, 0.12, 1, 0.93])
plt.savefig(fig_path + 'chl_biaspanel_plot.png', dpi=300)
plt.show()