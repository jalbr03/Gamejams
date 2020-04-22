size_change += dir*(0.05);
if(abs(size_change)>0.4) image_xscale = sqr(size_change);
else size_change = 0.4*dir;
if(abs(image_xscale) > 1){
	dir = -1*dir;
	image_xscale = clamp(image_xscale,-1,1);
}
