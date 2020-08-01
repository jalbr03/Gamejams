var spawn = irandom(50);
if(spawn == 0){
	top_side = irandom(1);
	if(top_side == 0){
		instance_create_layer(random_range(0,room_width),room_height*irandom(1),layer,obj_conrol_bullet);
	}else{
		instance_create_layer(room_width*irandom(1),random_range(0,room_height),layer,obj_conrol_bullet);
	}
}