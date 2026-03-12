for f in chl_*.nc; do
	cdo -b F32 --reduce_dim -sellevidx,1 -selvar,chl "$f" lev_"$f"
done

#start by selecting var --> select level 1 --> use reduce dimension to remove any levels --> some files haave F64, convert it to F32
