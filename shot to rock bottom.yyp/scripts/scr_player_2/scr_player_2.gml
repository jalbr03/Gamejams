function scr_player_2() {
	static timer = 0;
	static look_x = 0;
	static look_y = 0;
	static timer1 = 0;
	
	var move_h = gamepad_axis_value(controller_number, gp_axisrh);
	var move_v = gamepad_axis_value(controller_number, gp_axisrv);
	var special = gamepad_button_check(controller_number, gp_face2);
	if(special && !cool_down){
		cool_down = true;
		timer1 = fps;
	}
	if(!cool_down || special_power <= 0){
		x += (creator.x-x)/5;
		y += (creator.y-y)/5;
		if(move_h != 0) look_x = move_h;
		if(move_v != 0) look_y = move_v;
		image_angle = point_direction(x,y,look_x+x,look_y+y);
		image_xscale += (max_size-image_xscale)/5;
		image_yscale += (max_size-image_yscale)/5;
	
		if((move_h != 0 || move_v != 0) && timer <= 0){
			var bullet = instance_create_depth(x,y,depth,obj_good_bullet);
			bullet.image_angle = image_angle;
			bullet.state = good_bullet_state.straight;
			timer = fps/5;
		}
		if(timer > 0) timer --;
		if(special_power < max_special_power && !cool_down){
			special_power += 1/(fps*2);
		}
		specialing = false;
	}else{
		specialing = true;
		special_power -= 5/fps;
		scr_player_2_special();
	}

	#region timers
	if(timer1 > 0) timer1 --;
	else{
		cool_down = false;
	}
	#endregion
}
