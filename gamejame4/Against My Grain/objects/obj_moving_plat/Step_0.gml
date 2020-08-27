if(!horizontal){
	phy_position_y = ystart+cos(animate)*range*sign(animate_spd);
}else{
	phy_position_x = xstart+cos(animate)*range*sign(animate_spd);
}
if(spin && !global.pause){
	phy_rotation += spin_spd;
}
if(!global.pause){
	animate += animate_spd;
}
