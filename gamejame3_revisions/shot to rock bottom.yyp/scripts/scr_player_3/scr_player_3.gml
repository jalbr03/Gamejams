function scr_player_3() {
	static timer1 = 0;
	static timer2 = 120;
	static timer3 = 0;
	static timer4 = 0;
	static look_x = 0;
	static look_y = 0;
	
	var ability1 = gamepad_button_check_pressed(controller_number, gp_face1);
	var ability2 = gamepad_button_check_pressed(controller_number, gp_face3);
	var ability3 = gamepad_button_check_pressed(controller_number, gp_shoulderlb);
	var ability4 = gamepad_button_check_pressed(controller_number, gp_shoulderrb);
	var ability_set = groups[current_group];
	
	if(ability_state == -1){
		if(ability1 && timer1 <= 0){
			ability_state = ability_set[0]
			timer1 = fps;
		}else if(ability2 && timer1 <= 0){
			ability_state = ability_set[1]
			timer1 = fps*2;
		}else if(ability3 && timer1 <= 0){
			ability_state = ability_set[2]
			timer1 = fps*3;
		}else if(ability4 && timer1 <= 0){
			ability_state = ability_set[3]
			timer1 = fps*3;
		}
	}
	if(ability_state != -1){
		script_execute(ability_array[ability_state]);
	}
	
	
	x = clamp(x, sprite_width/2, room_width - sprite_width/2);
	y = clamp(y, sprite_height/2, room_height - sprite_height/2);
	var move_h = gamepad_axis_value(controller_number, gp_axislh);
	var move_v = gamepad_axis_value(controller_number, gp_axislv);
	if(move_h != 0) look_x = move_h;
	if(move_v != 0) look_y = move_v;
	
	move_h *= spd;
	move_v *= spd;
	
	if(place_meeting(x+move_h,y,obj_static)){
		while(!place_meeting(x+sign(move_h),y,obj_static)){
			x += sign(move_h);
		}
		move_h = -sign(move_h);
	}
	if(place_meeting(x,y+move_v,obj_static)){
		while(!place_meeting(x,y+sign(move_v),obj_static)){
			y += sign(move_v);
		}
		move_v = -sign(move_v);
	}
	scr_player_3_shoot();
	//moving
	x += move_h;
	y += move_v;
	//sanity
	if(sanity > 0){
		if(timer2 > 0){
			timer2 -= 1;
		}else{
			timer2 = fps*3;
			sanity -= 1;
		}
	}else{
		scr_insane_mode();
	}
	
	if(timer1 > 0) timer1 -= 1;
	if(timer2 > 0) timer2 -= 1;
	if(timer3 > 0) timer3 -= 1;
	if(timer4 > 0) timer4 -= 1;



}

function scr_player_3_shoot() {
	static timer = 0;
	static look_x = 0;
	static look_y = 0;
	
	var move_h = gamepad_axis_value(controller_number, gp_axisrh);
	var move_v = gamepad_axis_value(controller_number, gp_axisrv);
	
	if(move_h != 0) look_x = move_h;
	if(move_v != 0) look_y = move_v;
	
	if((move_h != 0 || move_v != 0) && timer <= 0){
		var bullet = instance_create_depth(x,y,depth,obj_bad_bullet);
		bullet.image_angle = point_direction(x,y,look_x+x,look_y+y);
		bullet.state = bad_state.straight;
		bullet.spd = 50;
		bullet.image_index = 3;
		timer = fps/5;
	}

	#region timers
	if(timer > 0) timer --;
	else{
		cool_down = false;
	}
	#endregion
}
