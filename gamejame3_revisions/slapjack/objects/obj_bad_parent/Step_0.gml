if(!store){
	if(!mouse_check_button(mb_left)){
		grab = false;
	}
	if(grab){
		phy_linear_velocity_x = (mouse_x-x);
		phy_linear_velocity_y = (mouse_y-y);
		phy_rotation = point_direction(x,y,mouse_x,mouse_y);
	}
}
//print(asset_get_index(object_get_name(object_index)));