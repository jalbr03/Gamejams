if(type_to_spawn == bullet_types.bullet){
	var bullet = instance_create_layer(x,y,layer,obj_bad_bullet);
	bullet.controller_number = controller_number;
	bullet.state = state;
}else if(type_to_spawn == bullet_types.wall){
	var bullet = instance_create_layer(x,y,layer,obj_bad_wall);
}
instance_destroy(self);