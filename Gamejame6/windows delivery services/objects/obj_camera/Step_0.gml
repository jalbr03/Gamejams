window_frame_update();
// if the extension just finished readying up:
if (window_frame_is_ready && !was_ready) {
	window_frame_set_rect(x,y,new_camera_width,new_camera_height);
	
	window_w = new_camera_width;
	window_h = new_camera_height;
    was_ready = true;
    // override the close button behaviour, as an example:
	window_command_set_active(window_command_move, false);
    window_command_hook(window_command_close);
    window_command_hook(window_command_maximize);
	window_command_hook(window_command_minimize);
	
	//window_frame_set_rect(x,y,window_w,window_h);
	//window_frame_set_min_size(1366, 768); // how small the window can be allowed to get
	//window_frame_set_max_size(1366, 768);
}

var click = false;
if(can_grab){
	click = mouse_check_button(mb_left);
}
ds_list_insert(window_x_poses,0,x);
ds_list_insert(window_y_poses,0,y);
ds_list_delete(window_x_poses,time_behind);
ds_list_delete(window_y_poses,time_behind);
if(click && can_grab){
	x += ((mouse_x+mouse_offset_x)-x)/10;
	y += ((mouse_y+mouse_offset_y)-y)/10;
	if(instance_exists(obj_player)){
		player_offset_x = x-obj_player.x;
		player_offset_y = y-obj_player.y;
	}
}else{	
	mouse_offset_x = x-mouse_x;
	mouse_offset_y = y-mouse_y;
}
if(follow && !click && instance_exists(obj_player)){
	x += ((obj_player.x+player_offset_x)-x)/10;
	y += ((obj_player.y+player_offset_y)-y)/10;
}
if(move){
	time += 0.001;
	x+=cos(time)*1*move_h;
	y+=cos(time)*40*!move_h;
}
camera_set_view_pos(camera, x,y);
window_frame_set_rect(ds_list_find_value(window_x_poses,time_behind-1)/move_offsetx,
					  ds_list_find_value(window_y_poses,time_behind-1)/move_offsety,
					  new_camera_width,new_camera_height);
if(grow){
	grow_spd += 0.05;
	if(new_camera_height < max_height){
		new_camera_height += grow_spd*grow_spd;
	}if(new_camera_width < max_width){
		new_camera_width += grow_spd*grow_spd*2;
	}else{
		new_camera_height = max_height;
		new_camera_width = max_width;
		grow = false;
	}
}
if(shrink){
	shrink_spd += 0.05;
	new_camera_height -= shrink_spd*shrink_spd;
	new_camera_width -= shrink_spd*shrink_spd*2;
}
if((new_camera_width <= 0 && new_camera_height <= 0) && shrink){
	if(!player_die){
		room_goto_next();
	}else{
		room_restart();
	}
}
// if the close button was clicked (being overriden), close shortly:
if (window_command_check(window_command_close)) {
    leaving = 10;
}
if (leaving > 0) {
    if (--leaving <= 0) game_end();
}

