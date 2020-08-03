if(!mouse_check_button(mb_left)){
	grab = false;
}
if(grab && !hit){
	phy_linear_velocity_x = (mouse_x-x)*10;
	phy_linear_velocity_y = (mouse_y-y)*10;
	phy_rotation = -point_direction(x,y,mouse_x,mouse_y);
}
//print(phy_rotation);
//print(asset_get_index(object_get_name(object_index)));