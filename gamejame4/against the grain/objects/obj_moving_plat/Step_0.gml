if(!horizontal){
	phy_position_y = ystart+cos(animate)*range;
}else{
	phy_position_x = xstart+cos(animate)*range;
}
if(spin){
	phy_rotation += spin_spd;
}
animate += animate_spd;