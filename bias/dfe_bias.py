import xarray as xr
import matplotlib.pyplot as plt
import cartopy.crs as ccrs
import cartopy.feature as cfeature
from matplotlib.colors import ListedColormap, BoundaryNorm

data_path = '../data/bias/dfe/'
fig_path  = '../figs/new/'

files = [
    'dfe_ACCESS-ESM1-5_bias.nc',
    'dfe_CESM2_bias.nc',
    'dfe_CESM2-FV2_bias.nc',
    'dfe_CESM2-WACCM_bias.nc',
    'dfe_CESM2-WACCM-FV2_bias.nc',
    'dfe_CMCC-ESM2_bias.nc',
    'dfe_CNRM-ESM2-1_bias.nc',
    'dfe_GFDL-CM4_bias.nc',
    'dfe_GFDL-ESM4_bias.nc',
    'dfe_IPSL-CM5A2-INCA_bias.nc',
    'dfe_IPSL-CM6A-LR_bias.nc',
    'dfe_IPSL-CM6A-LR-INCA_bias.nc',
    'dfe_MIROC-ES2L_bias.nc',
    'dfe_MPI-ESM-1-2-HAM_bias.nc',
    'dfe_MPI-ESM1-2-HR_bias.nc',
    'dfe_MPI-ESM1-2-LR_bias.nc',
    'dfe_NorESM2-LM_bias.nc',
    'dfe_NorESM2-MM_bias.nc',
    'dfe_UKESM1-0-LL_bias.nc'
]

labels = [
    'ACCESS-ESM1-5',
    'CESM2',
    'CESM2-FV2',
    'CESM2-WACCM',
    'CESM2-WACCM-FV2',
    'CMCC-ESM2',
    'CNRM-ESM2-1',
    'GFDL-CM4',
    'GFDL-ESM4',
    #'IITM-ESM',
    'IPSL-CM5A2-INCA',
    'IPSL-CM6A-LR',
    'IPSL-CM6A-LR-INCA',
    'MIROC-ES2L',
    'MPI-ESM-1-2-HAM',
    'MPI-ESM1-2-HR',
    'MPI-ESM1-2-LR',
    'NorESM2-LM',
    'NorESM2-MM',
    'UKESM1-0-LL'
]

levels = [-2.5, -2.0, -1.5, -1.0, -0.5, 0, 0.5, 1.0, 1.5, 2.0, 2.5]

colors = [
    "#08306B",  # -5 to -4
    "#2171B5",
    "#6BAED6",
    "#C6DBEF",
    "#FFFFFF",
    "#FFFFFF",  # 0 centered
    "#FEE0D2",
    "#FC9272",
    "#FB6A4A",
    "#CB181D"
]

cmap = ListedColormap(colors)
cmap.set_under("#041C4A")   # darker blue for values < -5
cmap.set_over("#67000D")    # darker red for values > 5

norm = BoundaryNorm(levels, cmap.N)

nplots = len(files)
ncols = 5
nrows = (nplots + ncols - 1) // ncols

fig, axes = plt.subplots(
    nrows=nrows,
    ncols=ncols,
    figsize=(16, 12),
    subplot_kw={'projection': ccrs.PlateCarree()}
)

axes = axes.flatten()

latitude_ticks  = [-30, -15, 0, 15, 30]
longitude_ticks = [30, 60, 90, 120]

for i in range(nplots):

    ax = axes[i]
    filename = files[i]

    ds = xr.open_dataset(data_path + filename, decode_times=False)
    bias = ds['dfe'].squeeze()
    
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
    
    from cartopy.mpl.ticker import LongitudeFormatter, LatitudeFormatter
    ax.xaxis.set_major_formatter(LongitudeFormatter(zero_direction_label=True))
    ax.yaxis.set_major_formatter(LatitudeFormatter())

    ax.tick_params(axis='x', labelsize=7)
    ax.tick_params(axis='y', labelsize=7)

    ax.set_title(labels[i], fontsize=11)
    ax.set_xlabel('')
    ax.set_ylabel('')


for j in range(nplots, len(axes)):
    fig.delaxes(axes[j])

fig.subplots_adjust(
    left=0.05,
    right=0.95,
    top=0.90,
    bottom=0.12,
    wspace=0.05,
    hspace=0.40
)

cax = fig.add_axes([0.25, 0.06, 0.5, 0.017])
cbar = fig.colorbar(im, cax=cax, orientation='horizontal', extend='both')
cbar.set_ticks(levels)
cbar.set_label('Dissolved Iron Bias (mmol m$^{-3}$)', fontsize=12)
cbar.ax.tick_params(labelsize=10)

plt.suptitle('Dissolved Iron Bias for Indian Ocean (Model − Observation)', fontsize=16, y=0.95)

#plt.tight_layout(rect=[0, 0, 0.9, 0.93])
#plt.subplots_adjust(wspace=0.15, hspace=0.25)
plt.savefig(fig_path + 'fe bias.png', dpi=300)
plt.show()
