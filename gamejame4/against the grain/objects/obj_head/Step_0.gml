ds_list_clear(walls);
var num_of_walls = collision_line_list(x,y,x,y+128,obj_static,0,1,walls,1);
var wall = noone;
if(num_of_walls > 0){
	wall = ds_list_find_value(walls,0);
	wall_y = wall.y;
}
var v_dir_test = gamepad_axis_value(0,gp_axislv)*10;
if(abs(v_dir_test) > 1){
	v_dir = v_dir_test
}
var h_dir_test = gamepad_axis_value(0,gp_axislh)*10;
if(abs(h_dir_test) > 1){
	h_dir = h_dir_test;
}

var move = false;
if(!use_controller){
	move = mouse_check_button(mb_left);
	phy_rotation = -point_direction(x,y,mouse_x,mouse_y);
	x_dist = clamp(mouse_x-x,-screen_width,screen_width);
	y_dist = clamp(mouse_y-y,-screen_height,screen_height);
}else{
	if(h_dir != 0 || v_dir != 0){
		move = true;
	}
	phy_rotation = -point_direction(x,y,x+h_dir,y+v_dir);
	x_dist = screen_width*sign(h_dir_test)/2;
	y_dist = screen_width*sign(v_dir_test)/2;
}
if(move){
	num_of_contacts = ds_list_size(tail_contact);
	phy_linear_velocity_x += (x_dist/2.5)*num_of_contacts/length;
	phy_linear_velocity_y += (y_dist/2.5)*num_of_contacts/length;
	if(in_sellect){
		phy_linear_velocity_x += (x_dist/2.5)*1/length;
		phy_linear_velocity_y += (y_dist/2.5)*1/length;
	}
}
if(!place_meeting(x,y,obj_static)){
	global.safe_to_save = false;
}else if(wall != noone){
	if(wall.phy_rotation == 0){
		global.safe_to_save = true;
	}
}
time_tile_next_save -= 1;
