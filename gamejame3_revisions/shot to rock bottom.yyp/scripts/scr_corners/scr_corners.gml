function scr_corners(off_set) {
	var bullet = instance_create_layer(off_set,0,layer,obj_bullet_alert);
	bullet.state = bad_state.center_laser;
	bullet.warning_state = warning_types.laser_2_center;
	
	var bullet = instance_create_layer(room_width,off_set,layer,obj_bullet_alert);
	bullet.state = bad_state.center_laser;
	bullet.warning_state = warning_types.laser_2_center;
	
	var bullet = instance_create_layer(0,room_height-off_set,layer,obj_bullet_alert);
	bullet.state = bad_state.center_laser;
	bullet.warning_state = warning_types.laser_2_center;
	
	var bullet = instance_create_layer(room_width-off_set,room_height,layer,obj_bullet_alert);
	bullet.state = bad_state.center_laser;
	bullet.warning_state = warning_types.laser_2_center;
}
