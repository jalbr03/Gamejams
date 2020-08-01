image_index = state;
if(state == bad_state.straight){
	if(x < room_width/direction_area || x > (room_width/direction_area)*direction_area-1){
		image_angle = point_direction(x,y,room_width/2,y);
	}
	if(y < room_height/direction_area || y > (room_height/direction_area)*direction_area-1){
		image_angle = point_direction(x,y,x,room_height/2);
	}
}else if(state == bad_state.center_laser){
	image_angle = point_direction(x,y,room_width/2,room_height/2);
}else if(state == bad_state.target_laser){
	image_angle = point_direction(x,y,target_x,target_y);
}
gamepad_set_axis_deadzone(controller_number,0.4);
