//scale = (cos(animate)+0.9)/1.8;
scale = (cos(animate)+0.75)/1.5;
if(anchor_on_pos){
	x = xstart;
	y = ystart;
	image_xscale = clamp((scale),0,1)*start_size;
}else{
	x = xstart+lengthdir_x(start_spr,image_angle);
	y = ystart+lengthdir_y(start_spr,image_angle);
	image_xscale = -clamp((scale),0,1)*start_size;
}
if((scale) >= 1){
	anchor_on_pos = false;
}else if((scale) <= 0){
	anchor_on_pos = true;
}
print(scale)
animate += 0.1;