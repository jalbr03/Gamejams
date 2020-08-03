function scr_insane_mode(){
	var spawn = irandom(1);
	if(spawn == 0){
		var bullet = instance_create_layer(x,y,layer,obj_bad_bullet);
		bullet.image_angle = random(360);
		bullet.state = bad_state.straight;
	}
}

function scr_4_shot_corners(){
	static off_set = 0;
	static timer1 = 0;
	static times_shot = 0;
	
	if(timer1 <= 0){
		scr_corners(off_set);
		off_set += 64;
		timer1 = fps/4;
		times_shot++
	}else{
		timer1--;
	}
	if(times_shot >= 4){
		times_shot = 0;
		off_set = 0;
		ability_state = -1;
	}
}

function scr_all_sides() {
	for(var i=1;i<4;i++){
		var bullet = instance_create_layer((room_width/4)*i,0,layer,obj_bullet_alert);
		bullet.state = bad_state.straight;
		bullet.warning_state = warning_types.laser_straight;
		var bullet = instance_create_layer((room_width/4)*i,room_height,layer,obj_bullet_alert);
		bullet.state = bad_state.straight;
		bullet.warning_state = warning_types.laser_straight;
		var bullet = instance_create_layer(0,(room_height/4)*i,layer,obj_bullet_alert);
		bullet.state = bad_state.straight;
		bullet.warning_state = warning_types.laser_straight;
		var bullet = instance_create_layer(room_width,(room_height/4)*i,layer,obj_bullet_alert);
		bullet.state = bad_state.straight;
		bullet.warning_state = warning_types.laser_straight;
	}
	ability_state = -1;
}

function scr_wall() {
	var bullet = instance_create_layer(room_width/2,room_height,layer,obj_bullet_alert);
	bullet.warning_state = warning_types.exclaim;
	bullet.state = bad_state.wall;
	ability_state = -1;
}

function scr_top() {
	for(var i=-1;i<19;i++){
		var bullet = instance_create_layer((room_width/19)*(i+1),0,layer,obj_bullet_alert);
		bullet.warning_state = warning_types.exclaim;
		bullet.state = bad_state.straight;
	}
	
	ability_state = -1;
}

function scr_sidel() {
	for(var i=1;i<4;i++){
		var bullet = instance_create_layer(0,(room_height/4)*i,layer,obj_bullet_alert);
		bullet.state = bad_state.target_laser;
		bullet.target_x = obj_player_manager.player1.x;
		bullet.target_y = obj_player_manager.player1.y;
		bullet.warning_state = warning_types.laser_2_player;
	}
	
	ability_state = -1;
}

function scr_sider() {
	for(var i=1;i<4;i++){
		var bullet = instance_create_layer(room_width,(room_height/4)*i,layer,obj_bullet_alert);
		bullet.state = bad_state.target_laser;
		bullet.target_x = obj_player_manager.player1.x;
		bullet.target_y = obj_player_manager.player1.y;
		bullet.warning_state = warning_types.laser_2_player;
	}
	ability_state = -1;
}

function scr_big_boy() {



	
	ability_state = -1;
}

function scr_spikewall_builder() {



	
	ability_state = -1;
}

