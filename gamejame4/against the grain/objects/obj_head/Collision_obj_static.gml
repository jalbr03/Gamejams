event_inherited();

if(other.phy_rotation == 0){
	if(time_tile_next_save <= 0){
		if(alarm[0] == -1) alarm[0] = 1;
		time_tile_next_save = fps*20;
		global.safe_to_save = true;
	}
}else{
	global.safe_to_save = false;
}
