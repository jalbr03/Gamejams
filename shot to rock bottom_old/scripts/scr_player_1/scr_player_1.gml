x = clamp(x, sprite_width/2, room_width - sprite_width/2);
y = clamp(y, sprite_height/2, room_height - sprite_height/2);
var move_h = gamepad_axis_value(controller_number, gp_axislh);
var move_v = gamepad_axis_value(controller_number, gp_axislv);
var dash = gamepad_button_check_pressed(controller_number, gp_face1);
if(move_h != 0) look_x = move_h;
if(move_v != 0) look_y = move_v;
if(dash && !cool_down){
	dashing = true;
	if(alarm[1] == -1) alarm[1] = fps/5; // dash
	cool_down = true;
	alarm[2] = fps*2; // cool down
}

move_h *= spd;
move_v *= spd;
if(dashing){
	move_h = lengthdir_x(spd*4,image_angle);
	move_v = lengthdir_y(spd*4,image_angle);
}


if(place_meeting(x+move_h,y,obj_static)){
	dashing = false;
	while(!place_meeting(x+sign(move_h),y,obj_static)){
		x += sign(move_h);
	}
	move_h = -sign(move_h);
}if(place_meeting(x,y+move_v,obj_static)){
	dashing = false;
	while(!place_meeting(x,y+sign(move_v),obj_static)){
		y += sign(move_v);
	}
	move_v = -sign(move_v);
}


if(!dashing){
	current_size = max_size;
	x += move_h;
	y += move_v;
	image_xscale += (max_size-image_xscale)/5;
	image_angle = point_direction(x,y,look_x+x,look_y+y);
	if(place_meeting(x,y,obj_bad_parent)){
		room_restart();
	}
}else{
	current_size = max_size/2;
	x += move_h;
	y += move_v;
	image_xscale += (max_size*2-image_xscale)/5;
}
image_yscale -= (image_yscale-current_size)/5;

