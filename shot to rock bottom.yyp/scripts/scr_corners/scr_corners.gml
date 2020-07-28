function scr_corners() {
	var bullet = instance_create_layer(0,0,layer,obj_bullet_alert);
	bullet.state = bad_state.control;
	bullet.controller_number = controller_number;
	var bullet = instance_create_layer(room_width,0,layer,obj_bullet_alert);
	bullet.state = bad_state.control;
	bullet.controller_number = controller_number;
	var bullet = instance_create_layer(0,room_height,layer,obj_bullet_alert);
	bullet.state = bad_state.control;
	bullet.controller_number = controller_number;
	var bullet = instance_create_layer(room_width,room_height,layer,obj_bullet_alert);
	bullet.state = bad_state.control;
	bullet.controller_number = controller_number;

	if(!instance_exists(obj_target)){
		var target = instance_create_layer(x,y,layer,obj_target);
		target.controller_number = controller_number;
	}


}
