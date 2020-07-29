if(warning_state == warning_types.exclaim){
	draw_sprite_ext(sprite_index,0,
		clamp(x, sprite_width/2, room_width - sprite_width/2),
		clamp(y, sprite_height/2, room_height - sprite_height/2),image_xscale,image_yscale,0,c_white,1);
}else if(warning_state == warning_types.laser_straight){
	if(x < room_width/direction_area || x > (room_width/direction_area)*direction_area-1){
		warning_drawing.laser(x,y,room_width/2,y, 0 + size_change, c_red);
	}
	if(y < room_height/direction_area || y > (room_height/direction_area)*direction_area-1){
		warning_drawing.laser(x,y,x,room_height/2, size_change, c_red);
	}
}
else if(warning_state == warning_types.laser_2_center){
	warning_drawing.laser(x,y,room_width/2,room_height/2, size_change, c_red);
}
else if(warning_state = warning_types.laser_2_player){
	var dir = point_direction(x,y,target_x,target_y);
	var xx = lengthdir_x(room_width, dir);
	var yy = lengthdir_y(room_width, dir);
	warning_drawing.laser(x,y,target_x+xx,target_y+yy, size_change, c_red);
}
