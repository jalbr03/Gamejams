enum warning_types{
	exclaim,
	laser_straight,
	laser_2_player,
	laser_2_center
}
warning_drawing = {
	laser: function(x1, y1, x2, y2, width, col){
		draw_line_width_color(x1, y1, x2, y2, width, col, col);
	},
	exclaim: function(){
		draw_self();
	}
}
function creat_bullet(bullet_state){
	if(bullet_state != bad_state.wall){
		var spawn_bullet = instance_create_layer(x,y,layer,obj_bad_bullet);
		spawn_bullet.state = bullet_state;
		spawn_bullet.target_x = target_x;
		spawn_bullet.target_y = target_y;
	}else{
		instance_create_layer(x,y,layer,obj_bad_wall);
	}
}

grow_spd = 0.05;
size_change = 0;
animate = 0;
alarm[0] = fps;
controller_number = -1;
state = -1;
warning_state = -1;
direction_area = 5;
target_x = 0;
target_y = 0;