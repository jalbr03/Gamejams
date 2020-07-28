function scr_player_join() {
	var move_h = gamepad_axis_value(controller_number, gp_axislh);
	var move_v = gamepad_axis_value(controller_number, gp_axislv);
	var joiner = collision_circle(x,y,sprite_width+16,obj_what_player,0,1);
	var joiner2 = collision_circle(x,y,sprite_width-32,obj_what_player,0,1);
	move_h *= spd;
	move_v *= spd;
	var joiner_locked = false;
	if(joiner){
		joiner_locked = joiner.locked;
		if(joiner2 && !locked){
			image_index = joiner2.what_player;
			image_blend = joiner2.image_blend;
			locked = true;
			joiner2.locked = true;
		}
	}
	print(joiner_locked);
	if(!locked){
		if(joiner_locked){
			if(place_meeting(x+move_h,y,obj_static)){
				while(!place_meeting(x+sign(move_h),y,obj_static)){
					x += sign(move_h);
				}
				move_h = 0;
			}if(place_meeting(x,y+move_v,obj_static)){
				while(!place_meeting(x,y+sign(move_v),obj_static)){
					y += sign(move_v);
				}
				move_v = 0;
			}
		}
	}else{
		if(!place_meeting(x+move_h,y,obj_static)){
			locked = false;
		}
	}

	x += move_h;
	y += move_v;



}
