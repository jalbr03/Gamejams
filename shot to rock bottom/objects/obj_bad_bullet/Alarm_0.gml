image_index = state;
if(x < 10 || x > room_width-10){
	image_angle = point_direction(x,y,room_width/2,y);
}
if(y < 10 || y > room_height-10){
	image_angle = point_direction(x,y,x,room_height/2);
}
gamepad_set_axis_deadzone(controller_number,0.4);