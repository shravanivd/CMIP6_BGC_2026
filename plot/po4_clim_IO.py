import xarray as xr
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import cartopy.crs as ccrs
import cartopy.feature as cfeature

data_path = '../data/climatology/po4/'
fig_path  = '../figs/new/'

files = [

    'po4_ACCESS-ESM1-5_hist_1955-2012_1deg_surf_timmean.nc',
    'po4_CESM2_hist_1955-2012_1deg_surf_timmean.nc',
    'po4_CESM2-FV2_hist_1955-2012_1deg_surf_timmean.nc',
    'po4_CESM2-WACCM_hist_1955-2012_1deg_surf_timmean.nc', 
    'po4_CESM2-WACCM-FV2_hist_1955-2012_1deg_surf_timmean.nc',
    'po4_CMCC-ESM2_hist_1955-2012_1deg_surf_timmean.nc',
    'po4_CMCC-ESM2_hist_1955-2012_1deg_surf_timmean.nc', #CNRM-ESM2-1
    'po4_GFDL-CM4_hist_1955-2012_1deg_surf_timmean.nc',
    'po4_GFDL-ESM4_hist_1955-2012_1deg_surf_timmean.nc',
    'po4_GFDL-ESM4_hist_1955-2012_1deg_surf_timmean.nc', #IITM-ESM
    'po4_IPSL-CM5A2-INCA_hist_1955-2012_1deg_surf_timmean.nc',
    'po4_IPSL-CM6A-LR_hist_1955-2012_1deg_surf_timmean.nc',
    'po4_IPSL-CM6A-LR-INCA_hist_1955-2012_1deg_surf_timmean.nc',
    'po4_IPSL-CM6A-LR-INCA_hist_1955-2012_1deg_surf_timmean.nc', #MIROC-ES2L
    'po4_MPI-ESM-1-2-HAM_hist_1955-2012_1deg_surf_timmean.nc',
    'po4_MPI-ESM1-2-HR_hist_1955-2012_1deg_surf_timmean.nc',
    'po4_MPI-ESM1-2-LR_hist_1955-2012_1deg_surf_timmean.nc',
    'po4_NorESM2-MM_hist_1955-2012_1deg_surf_timmean.nc', #NorESM2-LM
    'po4_NorESM2-MM_hist_1955-2012_1deg_surf_timmean.nc',
    'po4_NorESM2-MM_hist_1955-2012_1deg_surf_timmean.nc' #UKESM1-0-LL
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
    'IITM-ESM',
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

#bounds = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8]
bounds = [0.08, 0.16, 0.24, 0.32, 0.40, 0.48, 0.56, 0.64, 0.72, 0.80]

colors = [
    "#ffffcc", "#c7e9b4", "#7fcdbb", "#41b6c4",
    "#1d91c0", "#225ea8", "#253494", "#081d58",
    "#3f007d", "#54278f", "#6a51a3", "#807dba", "#9e9ac8"
]

cmap = mcolors.ListedColormap(colors)
norm = mcolors.BoundaryNorm(bounds, cmap.N, extend='both')

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
    filename = files[i]

    ds = xr.open_dataset(data_path + filename, decode_times=False)
    po4 = ds['po4']

    
    plot = po4.plot(
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

    ax.set_title(labels[i], fontsize=10)
    ax.set_xlabel('')
    ax.set_ylabel('')


for j in range(nplots, len(axes)):
    fig.delaxes(axes[j])


cax = fig.add_axes([0.92, 0.20, 0.015, 0.60])
cbar = plt.colorbar(plot, cax=cax, ticks=bounds)
cbar.set_label('Phosphate (mmol m$^{-3}$)', fontsize=12)

plt.suptitle(
    'Surface Phosphate Climatology of CMIP6 Models for Indian Ocean (1988–2014)',
    fontsize=16, y=0.95
)

plt.tight_layout(rect=[0, 0, 0.9, 0.93])
plt.savefig(fig_path + 'po4_clim.png', dpi=300)
plt.show()
