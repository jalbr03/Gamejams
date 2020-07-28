function scr_top() {
	for(var i=-1;i<19;i++){
		var bullet = instance_create_layer((room_width/19)*(i+1),0,layer,obj_bullet_alert);
		bullet.state = bad_state.straight;
	}


}
