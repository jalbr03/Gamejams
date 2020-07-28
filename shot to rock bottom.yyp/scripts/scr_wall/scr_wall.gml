function scr_wall() {
	var bullet = instance_create_layer(room_width/2,room_height+32,layer,obj_bullet_alert);
	bullet.type_to_spawn = bullet_types.wall;


}
