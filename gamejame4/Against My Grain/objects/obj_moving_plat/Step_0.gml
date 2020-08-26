if(!horizontal){
	phy_position_y = ystart+cos(animate)*range*sign(animate_spd);
}else{
	phy_position_x = xstart+cos(animate)*range*sign(animate_spd);
}
if(spin){
	phy_rotation += spin_spd;
}
animate += animate_spd;