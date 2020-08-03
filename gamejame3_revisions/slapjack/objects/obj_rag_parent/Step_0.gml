phy_position_x = clamp(x,-sprite_width,room_width+sprite_width);
if(!mouse_check_button(mb_left)){
	grab = false;
}
if(grab){
	phy_linear_velocity_x += (mouse_x-x);
	phy_linear_velocity_y += (mouse_y-y);
}