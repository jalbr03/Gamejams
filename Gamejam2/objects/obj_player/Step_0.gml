x = clamp(x, sprite_width/2, room_width - sprite_width/2);
y = clamp(y, sprite_height/2, room_height - sprite_height/2);
var move_h = gamepad_axis_value(controller_number, gp_axislh);
var move_v = gamepad_axis_value(controller_number, gp_axislv);

var cursor_move_h = gamepad_axis_value(controller_number, gp_axisrh);
var cursor_move_v = gamepad_axis_value(controller_number, gp_axisrv);

var shoot = gamepad_button_check(controller_number, gp_shoulderrb)


if(current_powerup == noone){
	target.image_alpha = 0;
	if(cursor_move_h != 0 || cursor_move_v !=0){
		last_cursor_move_h = cursor_move_h;
		last_cursor_move_v = cursor_move_v;
	}
	target.x = x+last_cursor_move_h;
	target.y = y+last_cursor_move_v;
}else{
	target.image_alpha = 1;
	target.x += cursor_move_h*spd*2;
	target.y += cursor_move_v*spd*2;
}

image_angle = point_direction(x,y,target.x,target.y);
print("img angle "+string(image_angle))
//walls
if(x > room_width)

if(instance_exists(obj_free_wall)){
	print(instance_nearest(x,y,obj_free_wall).x);
}
while(place_meeting(x,y,obj_wall)){
	var freewall = instance_nearest(x,y,obj_free_wall);
	if(instance_exists(freewall)){
		x += (freewall.x-x)/64;
		y += (freewall.y-y)/64;
	}
}

//fire wall
var hsp = move_h*spd;
var vsp = move_v*spd;
if(place_meeting(x+hsp,y,obj_fire_wall)){
	while(place_meeting(x,y,obj_fire_wall)){
		var wall = collision_circle(x,y,sprite_width,obj_fire_wall,1,1);
		x += sign(x-wall.x);
	}
	hsp = 0;
}
if(place_meeting(x,y+vsp,obj_fire_wall)){
	while(place_meeting(x,y,obj_fire_wall)){
		var wall = collision_circle(x,y,sprite_width,obj_fire_wall,1,1);
		y += sign(y-wall.y);
	}
	vsp = 0;
}

x += hsp;
y += vsp;

if(move_v != 0 || move_h != 0){
	audio_resume_sound(track_sound);
}else{
	audio_pause_sound(track_sound);
}
//touching the bugs
if(place_meeting(x,y,obj_bug)){
	spd = slow_spd;
}else{
	spd = max_spd;
}

//shooting
if(shoot && cool_down <= 0 && room != rm_join){
	if(current_powerup == noone){
		audio_play_sound(snd_shoot,2,0);
		var hugger = instance_create_layer(x,y,layer,obj_hugger);
		hugger.image_angle = image_angle;
		hugger.creator = id;
	}else if(current_powerup == "fire wall"){
		var fire_wall = instance_create_layer(target.x,target.y,layer,obj_fire_wall);
		fire_wall.image_angle = image_angle;
		current_powerup = noone;
	}else if(current_powerup == "bugs"){
		var bugs = instance_create_layer(target.x,target.y,layer,obj_bug);
		bugs.image_angle = image_angle;
		current_powerup = noone;
	}
	cool_down = max_cool_down_time;
}
if(cool_down > 0){
	cool_down -= 1;
}

//if(mouse_check_button_pressed(mb_left)){
//	x = mouse_x;
//	y = mouse_y;
//}
print("player_id "+string(player_id));
//win
if(win){
	var pos = ds_list_find_index(obj_player_container.player_info,player_id);
	pos += 1;
	var points = ds_list_find_value(obj_player_container.player_info,pos);
	points += 1;
	ds_list_replace(obj_player_container.player_info,pos,points);
	room_goto(rm_points);
}




