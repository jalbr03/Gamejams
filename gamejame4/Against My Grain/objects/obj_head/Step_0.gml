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
if(!global.pause){
	if(!use_controller){
		move = mouse_check_button(mb_left);
		phy_rotation = -point_direction(x,y,mouse_x,mouse_y);
		x_dist = clamp(mouse_x-x,-screen_width,screen_width);
		y_dist = clamp(mouse_y-y,-screen_height,screen_height);
	}else{
		var trigger = 0;
		var trigger1 = gamepad_button_value(0,gp_shoulderrb);
		var trigger2 = gamepad_button_value(0,gp_shoulderlb);
		if(trigger1 > trigger2) trigger = trigger1;
		if(trigger1 < trigger2) trigger = trigger2;
		if(h_dir != 0 || v_dir != 0){
			move = true;
		}
		target_angle = point_direction(0,0,h_dir,v_dir);
		rotation_speed = 0.01;
		//phy_rotation += sign(angle_difference(image_angle, target_angle)) * rotation_speed;
		//print(angle_difference(point_direction(x,y,x-h_dir,y+v_dir),phy_rotation));
		phy_rotation += min(abs(angle_difference(image_angle, target_angle)) * rotation_speed,
							abs(angle_difference(image_angle, target_angle))) * 
							sign(angle_difference(image_angle, target_angle)) * 10;
		//phy_rotation -= (phy_rotation+point_direction(x,y,x+h_dir,y+v_dir))/10;
		//phy_rotation = -point_direction(x,y,x+h_dir,y+v_dir);
		x_dist = screen_width*lengthdir_x(1,phy_rotation)*trigger;
		y_dist = screen_height*lengthdir_y(-1,phy_rotation)*trigger;
	}
}
if(move && !global.pause){
	num_of_contacts = ds_list_size(tail_contact);
	print(num_of_contacts);
	phy_linear_velocity_x += (x_dist/2.5)*num_of_contacts/length;
	phy_linear_velocity_y += (y_dist/2.5)*num_of_contacts/length;
	if(in_sellect){
		print(room);
		phy_linear_velocity_x += (x_dist/2.5)*1/length;
		phy_linear_velocity_y += (y_dist/2.5)*1/length;
	}
}

if(alarm[2] == -1)alarm[2] = fps*random_range(10,20);
animate ++;
time_tile_next_save -= 1;
