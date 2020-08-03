for(var i=1;i<4;i++){
	var bullet = instance_create_layer((room_width/4)*i,0,layer,obj_bullet_alert);
	bullet.state = bad_state.straight;
	var bullet = instance_create_layer((room_width/4)*i,room_height,layer,obj_bullet_alert);
	bullet.state = bad_state.straight;
	var bullet = instance_create_layer(0,(room_height/4)*i,layer,obj_bullet_alert);
	bullet.state = bad_state.straight;
	var bullet = instance_create_layer(room_width,(room_height/4)*i,layer,obj_bullet_alert);
	bullet.state = bad_state.straight;
}