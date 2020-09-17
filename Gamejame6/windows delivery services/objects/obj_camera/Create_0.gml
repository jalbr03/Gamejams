was_ready = false;
leaving = 0;

//camera height == camera width * 1.77864583333
camera = view_camera[0]; //camera_create(); //view_camera[0];
shrink = false;
player_die = false;
shrink_spd = 0;
grow_spd = 0;
//max_width = view_get_wport(camera);
//max_height = view_get_hport(camera);
if(grow){	
	new_camera_width = 1;
	new_camera_height = 1;
}else{
	new_camera_width = max_width
	new_camera_height = max_height
}
window_w = 0;
window_h = 0;
move_offsetx = 1//1920/camera_get_view_width(camera);
move_offsety = 1//1080/camera_get_view_height(camera);
print(move_offsetx);
////ahead too small, behind too large

mouse_offset_x = 0;
mouse_offset_y = 0;

if(follow){
	player_offset_x = x-obj_player.x;
	player_offset_y = y-obj_player.y;
}
window_x_poses = ds_list_create();
window_y_poses = ds_list_create();
time_behind = 1;
for(var i=0;i<time_behind;i++){
	ds_list_add(window_x_poses,0);
	ds_list_add(window_y_poses,0);
}
time = 0;