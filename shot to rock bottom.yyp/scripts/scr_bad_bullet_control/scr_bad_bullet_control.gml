function scr_bad_bullet_control() {
	//var move_h = gamepad_axis_value(controller_number, gp_axislh);
	//var move_v = gamepad_axis_value(controller_number, gp_axislv);
	//if(move_h != 0) look_x = move_h;
	//if(move_v != 0) look_y = move_v;
	//
	if(instance_exists(obj_target)){
		image_angle = point_direction(x,y,obj_target.x,obj_target.y);
	}
	x += lengthdir_x(spd,image_angle);
	y += lengthdir_y(spd,image_angle);


}
